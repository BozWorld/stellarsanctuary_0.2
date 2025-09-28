# Test du Comportement BG - Corrections Apportées

## 🔧 **Problèmes identifiés et corrigés :**

### **Problème 1** : BG s'affiche trop tôt au début du prologue
- **Cause** : `show_window()` forçait `bg.modulate = Color(1.0, 1.0, 1.0, 1.0)` même sans texture
- **Solution** : `show_window()` ne modifie plus la modulation du BG
- **Résultat attendu** : Le BG reste caché (noir) jusqu'au premier `#bg` tag

### **Problème 2** : BG se reset après `#hide_window` + `#bg` + `#show_window` 
- **Cause** : `show_window()` remettait la modulation en blanc, effaçant le crossfade
- **Solution** : Seul `crossfade_background()` gère maintenant la modulation du BG
- **Résultat attendu** : Le BG garde la nouvelle texture après `show_window()`

### **Problème 3** : Crossfade créait un overlay temporaire au lieu de modifier le BG permanent
- **Cause** : `crossfade_background()` créait un TextureRect temporaire qui disparaissait
- **Solution** : Le crossfade modifie maintenant directement le BG existant de la scène
- **Résultat attendu** : Les changements de texture sont permanents sur le BG de la scène

## 📋 **Modifications apportées :**

### **TransitionManager.gd**

1. **`_ready()`** :
   - Ajout de `_initialize_bg_state()` pour cacher le BG initial s'il n'a pas de texture

2. **`show_window()`** :
   - ❌ Supprimé : `bg.modulate = Color(1.0, 1.0, 1.0, 1.0)`
   - ✅ Ajouté : Debug info sans modification de l'état

3. **`crossfade_background()`** :
   - ✅ Ajouté : Gestion du premier BG (pas de crossfade si pas de texture actuelle)
   - ✅ Amélioré : S'assure que le BG reste visible après crossfade

4. **`_initialize_bg_state()`** (nouveau) :
   - Cache le BG au démarrage s'il n'a pas de texture
   - Debug pour tracer l'état initial

## 🎯 **Séquence attendue maintenant :**

```
Prologue → show_window() → BG reste noir (modulate 0,0,0,1)
│
├─ Texte s'affiche normalement avec BG noir
│
└─ hide_window() + bg:space_g0.png + show_window()
   ├─ crossfade_background() → Détecte BG noir → Apparition directe
   ├─ BG de la scène: texture changée + modulate (1,1,1,1)
   ├─ show_window() → N'interfère plus avec le BG
   └─ ✅ BG garde DÉFINITIVEMENT la texture space_g0.png
```

## 🔑 **Différence clé :** 
- **Avant** : Overlay temporaire → effet disparaît
- **Maintenant** : Modification directe du BG de la scène → effet permanent

## 🧪 **Test à effectuer :**

1. Lancer le jeu
2. Vérifier que le BG n'apparaît PAS au début du prologue
3. Cliquer jusqu'à la séquence `#hide_window` `#bg:space_g0.png` `#show_window`
4. Vérifier que le BG space_g0.png s'affiche et RESTE affiché
5. Continuer jusqu'au prochain `#bg:space_g1.png`
6. Vérifier que le crossfade fonctionne correctement

## ⚠️ **Points d'attention :**

- Le debug sera visible dans la console pour tracer le comportement
- Le BG node doit exister dans la scène (TextureRect nommé "BG")
- Les chemins des textures doivent être corrects
# Stellar Sanctuary - Instructions pour IA

## Architecture du Projet

**Stellar Sanctuary** est un visual novel développé avec Godot 4.5 utilisant le système Ink pour la narration interactive. L'architecture suit un pattern événementiel centralisé autour du `DisplayStyleManager`.

### Composants Principaux

- **DisplayStyleManager** (`scripts/DisplayStyleManager.gd`) : Chef d'orchestre central qui coordonne tous les systèmes
- **InkStoryLoader** : Interface avec le système Ink pour charger et avancer l'histoire depuis `INK/scene1_clean.ink`
- **TagCommandProcessor** : Traite les commandes de tag (audio, images, transitions) de manière séquentielle
- **TextSegmentManager** : Gère la segmentation du texte avec les tags inline `#segment_break` et `#new_page`
- **ADVDisplay/SNLDisplay** : Systèmes d'affichage pour les modes Adventure et Sound Novel

### Flux de Données Principal

1. `InkStoryLoader` émet `story_step(text, tags)` → `DisplayStyleManager`
2. `DisplayStyleManager` sépare les tags de commande des tags de contrôle texte
3. Si tags de commande → `TagCommandProcessor` (séquentiel, async)
4. Si texte → `TextSegmentManager` → `ADVDisplay/SNLDisplay`
5. L'utilisateur continue → cycle recommence

## Conventions de Code

### Structure des Classes
```gdscript
class_name NomClasse
extends TypeParent

# Signaux
signal nom_signal(param: Type)

# Enums
enum NomEnum { VALEUR1, VALEUR2 }

# Variables @export puis privées
@export var variable_publique: Type
var _variable_privee: Type

# === SECTIONS COMMENTÉES ===
func _ready() -> void:
```

### Patterns de Signaux
- Utiliser des signaux pour la communication inter-composants
- Noms descriptifs : `segment_ready`, `command_queue_drained`, `continue_requested`
- Toujours typer les paramètres : `signal segment_ready(segment_text: String, segment_type: SegmentType)`

### Gestion d'État
- Enums pour les états : `enum ProcessingState { IDLE, PROCESSING_COMMANDS, PROCESSING_TEXT }`
- Variables d'état préfixées : `current_state`, `_is_active`
- Validation d'état avant actions critiques

## Système Ink et Tags

### Tags de Commande (traités par TagCommandProcessor)
```ink
#audio:playbgm:asset/Music/AIKATYPE_00.ogg:loop:fadein
#bg:asset/Visuals_Backgrounds/big_01_space_g0.png:crossfade:2000
#image:show:asset/SystVisuals_ChapterEntry/chapter_1_begin.png:default:1000
#wait:2500
```

### Tags de Contrôle Texte (traités par TextSegmentManager)
```
Texte normal. #segment_break
Autre segment. #new_page
```

### Formats de Tags
- **Audio** : `#audio:action:path:option1:option2`
- **Images** : `#image:action:path:position:duration`
- **Arrière-plan** : `#bg:path:transition:duration`
- **Attente** : `#wait:milliseconds`

## Organisation des Assets

```
asset/
├── Music/              # Musiques de fond (.ogg)
├── Sound_SFX/          # Effets sonores
├── Visuals_Backgrounds/ # Arrière-plans
├── Visuals_CG/         # CG (Computer Graphics)
├── Visuals_Sprites/    # Sprites de personnages
└── SystVisuals_*/      # Assets système (UI, chapitres)
```

## Ressources Personnages

- `CharacterResource.gd` : Données d'un personnage (nom, couleur, sprites)
- `CharacterSprite.gd` : Sprite individuel avec position et texture
- Pattern d'accès : `resource.get_sprite("sprite_name")` avec fallback sur sprite[0]

## Modes d'Affichage

### SNL (Sound Novel)
- Texte en plein écran avec arrière-plan
- Contrôlé par `SNLDisplay.gd`
- Déclaré avec `#layout:SNL`

### ADV (Adventure)
- Interface avec boîte de dialogue et personnages
- Contrôlé par `ADVDisplay.gd`
- Speakers gérés automatiquement via parsing

## Débogage

- Variables `@export var enable_debug: bool = false` pour logs conditionnels
- Fonction `_debug(message)` standard dans plusieurs classes
- Logs préfixés : `[NomClasse] Message` pour traçabilité

## Points d'Attention

1. **Traitement Séquentiel** : `TagCommandProcessor` traite les commandes une par une avec `await`
2. **État Global** : `DisplayStyleManager.current_state` détermine le comportement système
3. **Séparation Ink/Godot** : `.ink` → `.json` → InkPlayer → système Godot
4. **Gestion Mémoire** : Resources `.tres` pour les données persistantes
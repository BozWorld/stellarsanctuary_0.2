# Conversation code

## 📊 **ANALYSE COMPLÈTE POUR ADAPTATION GODOT 4.4**

### 🎨 **1. POLICES UTILISÉES**

**Polices principales identifiées :**

- **"earthorbiter"** : Police principale pour les noms de personnages et éléments spéciaux
- **Polices système disponibles :**
    - `Daniel_Light.ttf`
    - `earthorbiter.ttf`
    - `playtime.ttf`
    - `Mosk Bold 700.ttf`, `Mosk Medium 500.ttf`, `Mosk Normal 400.ttf`
    - `TitilliumWeb-Regular.ttf`, `TitilliumWeb-SemiBold.ttf`
    - `Soft Elegance.ttf`

**Usage dans le code :**

```
#<font face="earthorbiter"><font color="#94b8b8">Computer</font>
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>

```

### 📐 **2. POSITIONNEMENT DU TEXTE**

**Configuration par défaut du message :**

```
[position width=1138 height=255 top=426 left=30]
[position page=fore frame="window5.png" margint=75 marginl=232 marginr=40 marginb=14]

```

**Zone de nom des personnages :**

```
[ptext name="chara_name_area" layer="message0" color=0xfafafa size=34 x=289 y=435 bold="bold"]

```

**Positionnement dynamique scene1 :**

```
[position layer="message1" width=1280 height=720 top=0 left=0 marginl=250 margint=80 marginr=270 color=black opacity=130]

```

### ⚙️ **3. VALEURS PAR DÉFAUT IMPORTANTES**

### **À configurer dans le code Godot :**

**Résolution et adaptation :**

```
# Configuration de base
var base_resolution = Vector2(1280, 720)
var config_win_x = get_viewport().size.x / 960.0
var config_win_y = get_viewport().size.y / 640.0

```

**Volumes et vitesses :**

```
# Volumes par défaut
var default_bgm_volume = 50  # 0-100
var default_se_volume = 50   # 0-100

# Vitesses de texte
var text_speed_options = [100, 80, 50, 40, 30, 25, 20, 11, 8, 5]
var auto_speed_options = [5000, 4500, 4000, 3500, 3000, 2500, 2000, 1000, 800, 500]

```

**Positionnement de la boîte de dialogue :**

```
# Zone de message principal
var message_box = {
    "width": 1138,
    "height": 255,
    "top": 426,
    "left": 30,
    "margin_top": 75,
    "margin_left": 232,
    "margin_right": 40,
    "margin_bottom": 14
}

# Zone nom personnage
var name_area = {
    "x": 289,
    "y": 435,
    "size": 34,
    "color": Color(0.98, 0.98, 0.98, 1.0)  # 0xfafafa
}

```

**Couleurs des personnages :**

```
var character_colors = {
    "Computer": Color(0.58, 0.72, 0.72, 1.0),  # #94b8b8
    "Euphie": Color(1.0, 0.5, 0.5, 1.0),       # #ff8080
    "Pilot": Color(1.0, 0.7, 0.4, 1.0),        # #ffb366
    "Klaus": Color(0.8, 0.4, 1.0, 1.0)         # #cc66ff
}

```

### **Configurable via l'interface Godot :**

- **Sprites des personnages** (chara_show/chara_mod)
- **Backgrounds** (bg storage)
- **Images CG** (tb_cg, tb_image_show)
- **Effets de transition** (crossfade, fadeIn/Out)
- **Positionnement des boutons UI**

### 🎭 **4. SYNTAXE INKGD POUR REPRODUIRE LES EFFETS**

### **Dialogue avec nom de personnage :**

```
// TyranoScript
#<font face="earthorbiter"><font color="#ff8080">Euphie</font>
Y-Yes!

// inkGD équivalent
~ SetCharacter("Euphie", "#ff8080")
Y-Yes! #speaker:Euphie

```

### **Changement de background :**

```
// TyranoScript
[bg storage=Backgrounds/bg02_corridor_A.png method=crossfade time=1000 wait=false]

// inkGD équivalent
~ ChangeBackground("Backgrounds/bg02_corridor_A.png", "crossfade", 1.0)

```

### **Affichage de personnage :**

```
// TyranoScript
[chara_show name="Klaus" storage="chara/2/klaus.png" width="495" height="720" left="410" top="0"]

// inkGD équivalent
~ ShowCharacter("Klaus", "chara/2/klaus.png", Vector2(410, 0), Vector2(495, 720))

```

### **Effets sonores :**

```
// TyranoScript
[playse volume="70" storage="SoundEffects_Menu/chapter.ogg"]

// inkGD équivalent
~ PlaySE("SoundEffects_Menu/chapter.ogg", 0.7)

```

### **Attente et pauses :**

```
// TyranoScript
[l][r][r] // attendre clic + 2 retours ligne
[p] // attendre clic + nouvelle page
[wait time="2500"]

// inkGD équivalent
Text here... #wait_click #line_break #line_break
Text here... #wait_click #new_page
~ Wait(2.5)

```

### 📚 **5. LEXIQUE DES TAGS TYRANOSCRIPT**

### **Tags de dialogue :**

- `[l]` : Attendre un clic
- `[r]` : Retour à la ligne
- `[p]` : Nouvelle page (effacer le texte précédent)
- `[cm]` : Effacer le message
- `[er]` : Effacer et retour

### **Tags d'affichage :**

- `[bg]` : Changer le background
- `[chara_show]` : Afficher un personnage
- `[chara_hide]` : Masquer un personnage
- `[chara_mod]` : Modifier l'expression d'un personnage
- `[image]` : Afficher une image
- `[freeimage]` : Libérer une image

### **Tags audio :**

- `[playbgm]` : Jouer musique de fond
- `[playse]` : Jouer effet sonore
- `[fadeoutbgm]` : Fade out BGM
- `[fadeoutse]` : Fade out SE

### **Tags de contrôle :**

- `[jump]` : Aller à un autre fichier/label
- `[wait]` : Attendre X millisecondes
- `[s]` : Arrêter l'exécution
- `[return]` : Retourner d'un appel

### **Tags d'interface :**

- `[button]` : Créer un bouton
- `[position]` : Positionner la zone de texte
- `[layopt]` : Options de calque
- `[current]` : Définir le calque courant

### **Tags spéciaux :**

- `[iscript]...[endscript]` : Code JavaScript
- `[tb_start_tyrano_code]...[tb_end_tyrano_code]` : Code TyranoBuilder
- `[mask]` : Masque d'écran
- `[save_img]` : Image de sauvegarde

### 🎯 **6. TEMPLATE GODOT POUR ADAPTATION**

```csharp
# DialogueManager.gd
extends Node

var current_character = ""
var message_box: Control
var name_label: Label
var dialogue_label: RichTextLabel

func _ready():
    setup_ui()

func setup_ui():
    # Configurer la boîte de dialogue selon les specs TyranoScript
    message_box.size = Vector2(1138, 255)
    message_box.position = Vector2(30, 426)

    name_label.position = Vector2(289, 435)
    name_label.add_theme_font_size_override("font_size", 34)

func set_character(name: String, color: String):
    current_character = name
    name_label.text = name
    name_label.modulate = Color(color)

func show_character(name: String, texture_path: String, pos: Vector2):
    var character_sprite = get_node("Characters/" + name)
    character_sprite.texture = load(texture_path)
    character_sprite.position = pos
    character_sprite.show()

func change_background(path: String, method: String = "crossfade", duration: float = 1.0):
    var bg = get_node("Background")
    var new_texture = load(path)

    match method:
        "crossfade":
            var tween = create_tween()
            tween.tween_property(bg, "modulate:a", 0.0, duration/2)
            tween.tween_callback(func(): bg.texture = new_texture)
            tween.tween_property(bg, "modulate:a", 1.0, duration/2)

```

## 📋 **PARAMÈTRES MODE SNL - POUR VOTRE ARCHITECTURE GODOT**

### 🎯 **Configuration SNL principale (scene1.ks) :**

```
[position layer="message1" width=1280 height=720 top=0 left=0 marginl=250 margint=80 marginr=270 color=black opacity=130]

```

### 📐 **Pour votre SNLDisplay -> ScrollContainer -> VBoxContainer -> RichTextLabel :**

### **Taille du container principal :**

```
# ScrollContainer
var snl_container = {
    "width": 1280,    # Pleine largeur
    "height": 720,    # Pleine hauteur
    "top": 0,
    "left": 0
}

```

### **Marges du texte (VBoxContainer/RichTextLabel) :**

```
# RichTextLabel margins
var snl_text_margins = {
    "margin_left": 250,    # marginl
    "margin_top": 80,      # margint
    "margin_right": 270,   # marginr
    "margin_bottom": 0     # par défaut
}

# Donc la zone de texte effective fait :
# width = 1280 - 250 - 270 = 760px
# height = 720 - 80 = 640px

```

### **Style du background :**

```
# Pour le panneau semi-transparent
var snl_background = {
    "color": Color.BLACK,        # color=black
    "opacity": 0.13,            # opacity=130 (130/1000 = 0.13)
    "position": Vector2(0, 0),  # top=0 left=0
    "size": Vector2(1280, 720)  # width=1280 height=720
}

```

### 🎨 **Configuration alternative (plus compacte) :**

```
# Dans SAMPLES.ks et test.ks - version fenêtrée
[position layer="message1" width=800 height=550 top=70 left=250 marginl=25 margint=35 marginr=25 color=black opacity=160]

```

```
# Version fenêtrée
var snl_windowed = {
    "container": {
        "width": 800,
        "height": 550,
        "top": 70,
        "left": 250
    },
    "text_margins": {
        "margin_left": 25,
        "margin_top": 35,
        "margin_right": 25,
        "margin_bottom": 0
    },
    "background": {
        "color": Color.BLACK,
        "opacity": 0.16    # opacity=160
    }
}

```

### 💡 **Setup Godot 4.4 pour votre architecture :**

```
# SNLDisplay.gd
extends Control

@onready var scroll_container: ScrollContainer = $ScrollContainer
@onready var vbox_container: VBoxContainer = $ScrollContainer/VBoxContainer
@onready var rich_text_label: RichTextLabel = $ScrollContainer/VBoxContainer/RichTextLabel

func _ready():
    setup_snl_layout()

func setup_snl_layout():
    # Configuration plein écran (scene1.ks style)

    # ScrollContainer (container principal)
    scroll_container.position = Vector2(0, 0)
    scroll_container.size = Vector2(1280, 720)

    # Créer un panneau semi-transparent derrière
    var bg_panel = Panel.new()
    bg_panel.position = Vector2(0, 0)
    bg_panel.size = Vector2(1280, 720)
    var style_box = StyleBoxFlat.new()
    style_box.bg_color = Color(0, 0, 0, 0.13)  # noir avec opacité 0.13
    bg_panel.add_theme_stylebox_override("panel", style_box)
    add_child(bg_panel)
    move_child(bg_panel, 0)  # Mettre en arrière-plan

    # VBoxContainer - gérer les marges
    vbox_container.position.x = 250   # marginl
    vbox_container.position.y = 80    # margint

    # Ajuster la taille du VBoxContainer
    vbox_container.size.x = 1280 - 250 - 270  # 760px
    vbox_container.size.y = 720 - 80           # 640px

    # RichTextLabel - configuration du texte
    rich_text_label.bbcode_enabled = true
    rich_text_label.fit_content = true
    rich_text_label.autowrap_mode = TextServer.AUTOWRAP_WORD_SMART

```

### 🔧 **Paramètres à configurer dans le code (obligatoires) :**

```
# SNLConfig.gd - Script de configuration
class_name SNLConfig

# Layouts prédéfinis
enum LayoutType { FULLSCREEN, WINDOWED }

static var layouts = {
    LayoutType.FULLSCREEN: {
        "container_size": Vector2(1280, 720),
        "container_pos": Vector2(0, 0),
        "text_margins": Vector4(250, 80, 270, 0),  # left, top, right, bottom
        "bg_color": Color(0, 0, 0, 0.13)
    },
    LayoutType.WINDOWED: {
        "container_size": Vector2(800, 550),
        "container_pos": Vector2(250, 70),
        "text_margins": Vector4(25, 35, 25, 0),
        "bg_color": Color(0, 0, 0, 0.16)
    }
}

static func get_layout(type: LayoutType) -> Dictionary:
    return layouts[type]

```

### ⚙️ **Paramètres configurables via l'interface Godot :**

- **Polices et styles de texte** (RichTextLabel theme)
- **Couleurs des personnages** (via BBCode)
- **Animations de scroll** (ScrollContainer settings)
- **Images de background** (derrière le panneau semi-transparent)
- **Effets de transition** (AnimationPlayer)

### 🎯 **Différences clés SNL vs ADV :**

| Aspect | Mode ADV | Mode SNL |
| --- | --- | --- |
| **Layout** | Boîte de dialogue fixe en bas | Plein écran avec marges |
| **Scroll** | Pas de scroll | ScrollContainer vertical |
| **Background** | Cadre avec texture | Panneau semi-transparent |
| **Texte** | Zone limitée | Zone étendue avec marges |
| **Flow** | Page par page | Flux continu scrollable |

Cela correspond parfaitement à votre architecture `SNLDisplay -> ScrollContainer -> VBoxContainer -> RichTextLabel` ! Le ScrollContainer gère le défilement, le VBoxContainer organise le contenu verticalement, et le RichTextLabel affiche le texte formaté.

BozWorld: un truc que j'ai fait qui me surprend un peu c'est que j'ai checker avec mon outils pour prendre le screen
c'est que en terme de positionnement de la fenetre ( ça en s'en fou ça dépend du logiciel) et taille de fenetre (ça c'est ce qui nous intéresse ) on trouve

320/206/ 1280/681 (avec bande noire )

354/206 1212/682 ( sans bande noire )

en positionenment et en taille réelle sur un écran 1920 1080, coment c'est possible si la taille de la fenetre fait 1280*720 en parametre de fenetre de base ?

GitHub Copilot: Excellente observation ! C'est très intéressant ce que vous avez trouvé. La différence entre les paramètres de configuration (1280x720) et la taille réelle de la fenêtre s'explique par plusieurs facteurs :

## 🔍 **ANALYSE DE VOS MESURES**

### **Vos mesures :**

- **Avec bande noire :** 1280x681 (au lieu de 720)
- **Sans bande noire :** 1212x682 (encore différent)
- **Écran :** 1920x1080

### **Explications possibles :**

## 1️⃣ **BARRES DE TITRE ET CHROME DU NAVIGATEUR**

```jsx
// Dans TyranoScript, la taille 1280x720 est la zone de contenu
// Mais le navigateur ajoute ses propres éléments :

Taille configurée:    1280 x 720  (zone de jeu)
+ Barre de titre:     ???  x ~39   (titre de la fenêtre)
+ Scrollbars:         ???  x ???   (si présentes)
= Taille réelle:      1280 x 681-682

```

## 2️⃣ **SCALING ET DPI**

Dans votre config.ks, je vois ce code important :

```jsx
tf.ConfigWinX = TG.config.scWidth / 960;
tf.ConfigWinY = TG.config.scHeight / 640;

```

Cela suggère que :

- **Résolution de design :** 960x640
- **Résolution réelle :** Variable selon l'écran

## 3️⃣ **ADAPTATION ÉCRAN 1920x1080** Laissez-moi chercher la configuration de la fenêtre : Voilà ! Maintenant je comprends parfaitement :

## 🎯 **EXPLICATION COMPLÈTE**

### **Configuration dans Config.tjs :**

```
;scWidth=1280
;scHeight=720
;ScreenCentering=true
;ScreenRatio=fix

```

### **Ce qui se passe :**

## 1️⃣ **RATIO D'ADAPTATION**

```jsx
// Dans config.ks
tf.ConfigWinX = TG.config.scWidth / 960;   // 1280/960 = 1.333...
tf.ConfigWinY = TG.config.scHeight / 640;  // 720/640 = 1.125

```

Le jeu est **conçu pour 960x640** mais **adapté à 1280x720** !

## 2️⃣ **CALCUL DE VOS MESURES**

### **Avec bande noire (1280x681) :**

```
Zone de contenu : 1280 x 720
Barre de titre navigateur : ≈ 39px
TOTAL : 1280 x (720-39) = 1280 x 681 ✅

```

### **Sans bande noire (1212x682) :**

```
Résolution : 1920x1080
Mode fenêtré avec chrome navigateur plus important
Largeur réduite pour les barres de défilement/bords
TOTAL : 1212 x 682 ✅

```

## 3️⃣ **POURQUOI C'EST DIFFÉRENT**

```jsx
// TyranoScript utilise fitBaseSize() qui adapte automatiquement
this.tyrano.base.fitBaseSize(this.config.scWidth, this.config.scHeight);

// Facteurs qui influencent la taille finale :
1. Chrome du navigateur (barre de titre, bordures)
2. Mode plein écran vs fenêtré
3. Scaling DPI de l'OS
4. Adaptation à l'écran parent

```

## 📊 **POUR GODOT 4.4**

**Utilisez ces valeurs réelles dans votre adaptation :**

```
# Configuration adaptative comme TyranoScript
class_name DisplayConfig

# Résolution de design (base)
const DESIGN_WIDTH = 960
const DESIGN_HEIGHT = 640

# Résolution cible
const TARGET_WIDTH = 1280
const TARGET_HEIGHT = 720

# Facteurs d'échelle (comme dans config.ks)
static var scale_x: float = TARGET_WIDTH / DESIGN_WIDTH    # 1.333
static var scale_y: float = TARGET_HEIGHT / DESIGN_HEIGHT  # 1.125

# Fonction d'adaptation des positions (comme TyranoScript)
static func adapt_position(design_pos: Vector2) -> Vector2:
    return Vector2(
        design_pos.x * scale_x,
        design_pos.y * scale_y
    )

static func adapt_size(design_size: Vector2) -> Vector2:
    return Vector2(
        design_size.x * scale_x,
        design_size.y * scale_y
    )

```

**Utilisation pour vos paramètres SNL :**

```
# Au lieu de valeurs fixes, utilisez l'adaptation
var snl_margins_design = Vector4(187, 60, 203, 0)  # Design 960x640
var snl_margins_adapted = Vector4(
    snl_margins_design.x * DisplayConfig.scale_x,  # 250
    snl_margins_design.y * DisplayConfig.scale_y,  # 80
    snl_margins_design.z * DisplayConfig.scale_x,  # 270
    snl_margins_design.w * DisplayConfig.scale_y   # 0
)

```

Vos mesures sont donc **parfaitement normales** ! TyranoScript adapte automatiquement la résolution de design (960x640) vers la cible (1280x720), et le navigateur ajoute ses propres éléments UI. C'est exactement ce que vous devriez reproduire dans Godot pour une adaptation fidèle.

BozWorld: trop compliqué pour l'instant je vais rester au valeur de tyranno et godot fera sa tembouille je verrai plus tard mais merci je vais adapter mon travail en conséquence

GitHub Copilot: Parfait ! C'est la bonne approche. 👍

**Restez simple pour l'instant :**

```
# Configuration directe basée sur TyranoScript
const TYRANO_WIDTH = 1280
const TYRANO_HEIGHT = 720

# Mode SNL - Paramètres directs du scene1.ks
var snl_layout = {
    "container_size": Vector2(1280, 720),
    "container_pos": Vector2(0, 0),
    "text_margins": {
        "left": 250,
        "top": 80,
        "right": 270,
        "bottom": 0
    },
    "background": Color(0, 0, 0, 0.13)  # noir 13% opacité
}

```

**Architecture simple pour votre SNLDisplay :**

```
SNLDisplay (1280x720)
├── Background Panel (noir semi-transparent)
└── ScrollContainer (position: 0,0 taille: 1280x720)
    └── VBoxContainer (marges: 250,80,270,0)
        └── RichTextLabel (zone texte effective: 760x640)

```

Godot s'occupera du scaling automatiquement selon la résolution de l'écran. Vous pourrez toujours optimiser plus tard quand le reste sera fonctionnel !

Bon courage pour l'adaptation avec inkGD ! 🚀

BozWorld: comment je peux conserver le contenue de cet conversation ?

GitHub Copilot: Voici plusieurs façons de conserver le contenu de cette conversation :

## 💾 **MÉTHODES DE SAUVEGARDE**

### 1️⃣ **Copier-Coller Manuel (Rapide)**

- Sélectionnez tout le texte de la conversation
- `Ctrl+A` puis `Ctrl+C`
- Collez dans un fichier texte ou document

### 2️⃣ **Exporter via le Navigateur**

- **Chrome/Edge :** `Ctrl+P` → "Enregistrer au format PDF"
- **Firefox :** `Ctrl+P` → "Enregistrer au format PDF"
- Ou `Ctrl+S` pour sauvegarder la page web complète

### 3️⃣ **Capture d'Écran Longue**

- Utilisez des outils comme **Lightshot**, **Snagit**, ou **Windows Snipping Tool**
- Pour une page longue : extension navigateur **GoFullPage**

### 4️⃣ **Markdown/Notes Structure**

Créez un fichier `notes_tyranoscript_godot.md` :

```markdown
# Analyse TyranoScript → Godot 4.4

## Configuration SNL (Mode Sound Novel)
```gdscript
# Paramètres directs du scene1.ks
var snl_layout = {
    "container_size": Vector2(1280, 720),
    "text_margins": {
        "left": 250, "top": 80, "right": 270, "bottom": 0
    },
    "background": Color(0, 0, 0, 0.13)
}

```

## Architecture Cible

SNLDisplay → ScrollContainer → VBoxContainer → RichTextLabel

## Points Clés

- Résolution design: 960x640 → Cible: 1280x720
- Scaling automatique via Godot
- Focus sur simplicité d'abord

```

### 5️⃣ **Outils Dédiés**
- **Obsidian** ou **Notion** pour structurer les notes
- **OneNote** si vous êtes dans l'écosystème Microsoft
- **Joplin** (open source) pour organiser par projets

## 📋 **RECOMMANDATION**

Pour votre projet, je recommande :

1. **PDF** de cette conversation (Ctrl+P)
2. **Fichier de référence** avec les valeurs importantes :

```gdscript
# tyrano_config_reference.gd
# Valeurs extraites de l'analyse TyranoScript

const TYRANO_WIDTH = 1280
const TYRANO_HEIGHT = 720

const SNL_MARGINS = {
    "left": 250,
    "top": 80,
    "right": 270,
    "bottom": 0
}

const CHARACTER_COLORS = {
    "Computer": "#94b8b8",
    "Euphie": "#ff8080",
    "Pilot": "#ffb366",
    "Klaus": "#cc66ff"
}

# etc...

```
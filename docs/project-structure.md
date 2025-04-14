
# Project Structure Guidelines (Godot)

This document outlines a simplified, scalable folder structure for organizing a Godot project. It balances clarity, modularity, and ease of reuse while keeping the root directory clean.

---

## 📁 Root-Level Folders

```
ProjectRoot/
├── actors
├── assets
├── autoload
├── common
│   ├── audio
│   ├── fonts
│   ├── fx
│   ├── models
│   ├── scenes
│   ├── scripts
│   └── textures
├── docs
├── scenes
├── systems
└── ui
└── project.godot
```

---

## Folder Breakdown

### `assets/`
Holds source files not used directly in the Godot project:

- `.blend`, `.fbx` — 3D model source files  
- `.psd`, `.kra`, `.ase` — Art source files  
- `.flac`, `.wav` — Audio masters  
- Design documents, reference material

### `autoload/`
Global singleton scripts loaded at startup:

- `game.gd` — Game state manager  
- `input.gd` — Centralized input handler  

Set these via **Project → Project Settings → Autoload**.

### `actors/`
Contains all controllable or autonomous entities:

- `player/` — Player-specific scene and script  
- `enemy_gunner/` — Example enemy

Each actor subfolder can mirror the `common/` layout if it includes unique assets:

```
actors/player/
├── player.tscn
├── player.gd
├── models/           # Unique 3D models
├── fx/               # Custom particles or shaders
├── audio/            # Actor-specific SFX
└── animations/       # GLTF or .anim files
```

This keeps actors modular and separates reusable content from specialized ones.

### `common/`
Shared, reusable assets:

- `audio/` — Shared SFX  
- `fx/` — Generic VFX, particles, shaders  
- `scripts/` — Utility scripts  
- `scenes/` — Generic objects like doors, switches  
- `textures/` — UI graphics, tilemaps, icons  
- `fonts/` — Text rendering fonts  
- `models/` — GLTF/OBJ files used across scenes

### `docs/`
Design documentation:

- Game Design Documents (GDDs)  
- Narrative outlines  
- Flowcharts, planning notes

### `scenes/`
Major game scenes and levels:

- `main.tscn` — Entry point scene  
- `demo/` — Prototype/demo area  
- Organize further by area/region if needed

### `systems/`
Self-contained logic systems:

- `combat.gd` — Handles combat logic  
- `save_system.gd` — Save/load functionality  
- `dialogue_manager.gd` — Dialogue system

### `ui/`
All user interface elements:

- `hud.tscn`, `menu.tscn` — Full UI scenes  
- `components/` — Buttons, bars, and reusable widgets

---

## 🧠 Best Practices

- **Modular design**: Use small, composable scenes.  
- **Scripts follow scenes**: Keep scripts next to their scene, unless shared.  
- **Group by function**: Prefer role-based organization over asset-type-only folders.  
- **Keep root clean**: Avoid clutter by limiting top-level folders.  
- **Autoload responsibly**: Only place truly global systems in `autoload`.  
- **Mirror `common/` in actor folders if needed**: Organize specific assets like models or effects locally when not reused elsewhere.

---

This layout scales well for solo developers and small teams, supporting clean modular development as the project grows.

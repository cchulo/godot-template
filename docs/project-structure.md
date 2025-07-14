# Project Structure

This document explains the purpose and organization of each folder in this Godot project template.

## Folder Structure

### 📁 `addons/`
Contains Godot addons and plugins that extend the editor functionality or provide additional features for the project. This is where you'll place third-party plugins or custom tools.

### 📁 `autoload/`
Holds singleton scripts that are automatically loaded when the project starts. These scripts are accessible from anywhere in the project and persist across scene changes. Common uses include:
- Game managers
- Audio managers
- Settings managers
- Global utility functions

### 📁 `common/`
Contains shared resources and assets used throughout the project:

#### 📁 `common/animations/`
Stores animation files (`.anim`, `.tres`) that can be reused across multiple scenes and objects.

#### 📁 `common/audio/`
Audio assets organized by type:
- **`music/`** - Background music tracks and ambient sounds
- **`sfx/`** - Sound effects for UI, gameplay, and environmental audio

#### 📁 `common/fonts/`
Font files (`.ttf`, `.otf`) and font resources for UI text and in-game text rendering.

#### 📁 `common/materials/`
Material resources (`.tres`, `.material`) for 3D objects, including shaders and surface properties.

#### 📁 `common/models/`
3D model files (`.glb`, `.gltf`, `.obj`) and their associated resources.

#### 📁 `common/scenes/`
Reusable scene components and prefabs that can be instantiated in multiple places throughout the project.

#### 📁 `common/scripts/`
Shared utility scripts, base classes, and helper functions used across the project.

#### 📁 `common/textures/`
Image files (`.png`, `.jpg`, `.svg`) used for sprites, UI elements, and material textures.

#### 📁 `common/vfx/`
Visual effects resources including particle systems, shaders, and animation effects.

### 📁 `docs/`
Project documentation including:
- Development guidelines
- Project structure explanations
- Setup instructions
- Code standards and conventions

### 📁 `entities/`
Contains scene files and scripts for game objects and characters:
- Player characters
- NPCs
- Enemies
- Interactive objects
- Collectibles

### 📁 `external/`
Third-party resources, libraries, and assets that are not part of the core project but are required for functionality.

### 📁 `maps/`
Level and world scene files:
- Game levels
- Overworld maps
- Menu scenes
- Cutscene environments

### 📁 `systems/`
Contains scripts and scenes for game systems and mechanics:
- Inventory systems
- Dialogue systems
- Save/load systems
- Combat systems
- Physics systems

### 📁 `ui/`
User interface elements and scenes:
- Main menu
- HUD elements
- Settings menus
- Dialog boxes
- Loading screens

## Best Practices

1. **Naming Convention**: Use lowercase with hyphens for folder names and descriptive names for files
2. **Organization**: Keep related assets together and maintain the folder structure
3. **Documentation**: Update this document when adding new major folders or changing structure
4. **Version Control**: Use `.gdignore` files to exclude unnecessary files from version control

## Getting Started

1. Use the `rename-project.sh` script to rename the template
2. Start by creating your main scenes in `maps/`
3. Add reusable components to `common/scenes/`
4. Create game-specific entities in `entities/`
5. Build your UI elements in `ui/`

# Moro_smokes
*A simple, fully configurable, and free color smoke script for redm*

## Installation
1. Download the script
2. Place the `Moro_smokes` folder in your resources directory
3. Add `start Moro_smokes` to your starting resources
4. Restart your server or start the resource

## Configuration
- Open the `config.lua` file
- Available configurations:
  - **As many items/colors as you want**:
    - label: The name of the smoke item
    - duration: How long the smoke lasts (in seconds)
    - scale: The size of the smoke effect
    - color: The RGB color values for the smoke
    - model: The item model used when you create the smoke
    - rotation: The rotation of the spawned item
    - offset: The position offset of the spawned item
  - Maximum amount of smokes by player: The maximum number of smoke items a player can use at once
  - Maximum amount of smokes in the world: The maximum number of smoke items that can exist in the world at once
  - Translations: You can change the text displayed in the notifications
  - Animations: Choose your own animation when using the smoke item


### Compatible with all colors that you want (RGB) / All item models

## Usage
- Insert items into your DB
- Insert the icon in your inventory system (feel free to use the provided icon or create your own)
- Use the item in your inventory to create smoke
- Enjoy!

## Dependencies
- jo_libs

## Compatibility
- Compatible with all redm frameworks supported by jo_libs

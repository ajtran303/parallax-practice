# 1-Bit Graveyard Parallax Demos

[Play the demo on itch.io!](https://sevngames.itch.io/parallax-demos)

A Godot 4.7 project for practicing parallax backgrounds. A reusable `ParallaxSet` scene drives four graveyard levels built from CraftPix's free 1-bit graveyard pixel art pack.

## Running it

Open `project.godot` in Godot 4.7 and run the project. The main menu lists four levels; each button loads a level scene built on the same parallax setup.

## Structure

- `Scenes/main_menu.tscn` — entry point and level picker.
- `Scenes/parallax_set.tscn` + `Scripts/parallax_set.gd` — reusable scene with seven `ParallaxLayer` slots. Each level scene instances it and assigns its own `layer_1`–`layer_7` textures.
- `Scenes/Levels/` — the four levels: foreground trees, iron gate, twisted trees, winter trees.
- `Scenes/UI/` — level select button and in-level exit button, each with a matching script.
- `Assets/Art/` — the CraftPix graveyard background pack (see `license.txt` for usage terms).

## Notes

`parallax_set.gd` assigns textures by `$Layer1/Sprite2D` through `$Layer7/Sprite2D`, so every level scene must keep that node layout. Levels don't need all seven: unset `layer_N` exports stay null and that `Sprite2D` just renders empty. `level_iron_gate` and `level_winter_trees`, for example, only use four of the seven layers.

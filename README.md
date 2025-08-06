# XenoWorld

A Luanti game for Luanti 5.12.0.

Some introduction and design note here.

## About Materials

- wood: just a stone and wood era, no pure wood era.
- stone
- metal
  - gold: noble metal
  - silver: noble metal
  - copper: noble metal, electric-related
  - iron: structure metal, tool metal
  - bronze: alloy
  - steel: alloy
- coal: burn
- ice: as a replacement of water

## Block Drops

Destroy a block will not drop them self. For machine, you can uninstall them.

## Fluid

Not like water or lava in Minecraft or Minetest. Maybe dwarf-fortress-like.

## To Do

- [ ] Clean ice
- [ ] Clean stone
- [ ] Clean xenolib

## No Block Movement Frameworks

Features like dynamic block movement require an engine with rigid body physics, such as the engine of *Space Engineers*. The current Luanti engine does not support that level of functionality.

From a game design perspective, the absence of rigid body physics does not make a game inherently boring. This game aims to create interesting gameplay within the constraints of a simple voxel grid, rather than adding complex physical simulation.

In this design, blocks can only be created or destroyed—there is no native concept of movement or pushing. Consequently, features such as falling sand or pistons will not exist. However, certain types of motion can still be simulated, similar to Conway’s Game of Life, where all transformations are expressed through block creation and destruction.

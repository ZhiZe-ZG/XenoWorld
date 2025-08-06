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

## Single Block Models Only

Every block in this game represents a single unit of space. There will be no blocks larger than one block in size. All structures must be built from these basic units.

For example, a single door could be represented by two trapdoors stacked vertically. A pair of doors would therefore require four trapdoors.

## Principles of Mechanics related to Multiblock Structures

When designing Mechanics related  to multiblock structures, each block should contribute meaningfully to the overall functionality. 

For example, one chair is just a chair (or bed for short creatures), two chairs together might form a bed, and three chairs could create a bed suitable for tall creatures (3 blocks high).

If part of the structure is removed, it should lose part of its functionality, not all of it.

## Distributed Functionality in Multiblock Structures

An elegant design approach for machanics related to multiblock structure is to create multiblock systems where functionality emerges from the interaction of individual blocks rather than relying on a single predefined structure. In this model, blocks communicate with their neighboring blocks to collectively perform tasks.

For example, an automated crafting system could consist of item transmission blocks and basic crafting blocks, instead of a fixed multiblock machine with a single, monolithic GUI. Here I mean somethin more basic than grinders, crushers or furnaces. They should be break down into more basic block.

However, this approach introduces complexity and abstraction, making it harder to implement and less intuitive for players—especially when GUI interaction is required.

Therefore, this principle is considered optional. A large factory can combine simple functional blocks (with clear roles), and multiblock structures (with slightly more complex functions). This may strike a balance between modularity and usability.

Similarly, trees should not appear fully formed; they should grow over time. Certain blocks within the tree could possess the ability to expand the structure until their energy is depleted. When the tree is cut down, all of its blocks would be removed recursively. Ideally, this behavior would be implemented through block-to-block communication mechanics. If that is not feasible, the next best approach is to treat the entire tree as a multiblock structure that stops growing once it loses the blocks responsible for expansion.

## Block as a Unit and Multiblock structures

No Block Model Larger Than 1 Block

Every structure in this game is consist of basic blocks, no block that occupy more than 1 block space.

Therefore, a door should be consist of two trapdoor. And a pair of doors should be consist of four trapdoors.

When design multiblock structure rules, should remember make sure every block is a component of the funtion of the multiblock structure. For example, one chair is just a chair, but 2 chair can be a bed and three chair can be a bed for mobs 3 block height. If a multiblock structure lose some of its block, it lose part of the function, not all.

It's a more beautiful way that design all multiblcok funtion consist of basic unit block function. Blocks send messages to its nearby blocks and all the blocks in a structure complete some work. But this will make the game too abstract.  In this way a auto craft machine should be consist of many transmit blocks and simple craft blocks. And is hard to use GUI to interactive with it.

So, this game can have some entire multiblock structures. But make sure every block is a component (just like the tinker's construct craft tables).

## 

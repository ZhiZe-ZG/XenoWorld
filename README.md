# XenoWorld

A Luanti game for Luanti 5.12.0.

Recommend use the mapgen v6 for now.

Some introduction and design note here.

- [Design Principle](./DesignPrinciple.md)

## About Materials

- wood: just a stone and wood era, no pure wood era. Reproducible, soft, resilient. Axe.
- stone: Cheap, not reproducible, hard, fragile. Pickaxe.
- metal: smelt to reshape
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
- [X] Clean stone
- [ ] Clean xenolib
- [ ] new translation system <https://api.luanti.org/translations/#translating-a-string> use S or translator? a shell script and a guide.
- [ ] Sound system
- [ ] code style guide
- [ ] Clean tool
- [ ] mapgen v7 and lua custom mapgen.
- [ ] lint and formater
- [ ] name rule
- [ ] new sounds for xenoworld_rock
- [ ] new mapgen for xenoworld_rock

## Resources

- [Luanti Official Site](https://www.luanti.org/)
  - [Luanti Documentation](https://docs.luanti.org/)
  - [Luanti Lua Modding API Reference](https://api.luanti.org/)
- [Luanti Modding Book](https://rubenwardy.com/minetest_modding_book/en/index.html)
- [Minetest Internal Documentation](https://doxy.minetest.net/)

## Name and packages

All content pack can be unload but all system can't.

Content packs named like `xenoworld_<something>`.

## TRANSLATE

```shell
#!/bin/sh
xgettext -L lua --from-code=utf-8 -kS -kNS -kFS -kNFS -kPS:1,2 -kFPS:1,2 -kcore.translate:1c,2 -kcore.translate_n:1c,2,3 "$@"
```

reference <https://github.com/luanti-org/modtools/blob/main/luanti_xgettext.sh>

But I use:

```shell
xgettext -L lua --from-code=utf-8 -kTRANSLATE -kNS -kFS -kNFS -kPS:1,2 -kFPS:1,2 -kcore.translate:1c,2 -kcore.translate_n:1c,2,3 "$@" ./*.lua
```

update maybe <https://github.com/minetest-tools/update_translations>
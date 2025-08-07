-- Load support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node("xenoworld_wood:pile_of_wood", {
    description = S("Pile of Wood"),
    tiles = {"xenoworld_wood_pile_of_wood.png"},
    groups = {
        dig_immediate = 2
    },
    drop = "xenoworld_wood:piece_of_wood 8",
    -- legacy_mineral = true
    -- sounds = default.node_sound_stone_defaults(),
})

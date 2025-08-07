-- Load support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node("xenoworld_rock:rock", {
	description = S("Stone"),
	tiles = {"stone.png"},
	groups = {cracky=2},
	drop = "xenoworld_rock:piece_of_stone 8",
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("xenoworld_rock:pile_of_stone", {
	description = S("Pile of Stone"),
	tiles = {"pile_of_stone.png"},
	groups = {dig_immediate=2},
	drop = "xenoworld_rock:piece_of_stone 8",
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})
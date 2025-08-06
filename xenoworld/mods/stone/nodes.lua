-- Load support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node("stone:stone", {
	description = S("Stone"),
	tiles = {"stone.png"},
	groups = {dig_immediate=2},
	drop = "stone:stone",
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})
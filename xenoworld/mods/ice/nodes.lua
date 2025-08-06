-- Load support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_node("ice:ice", {
	description = S("Ice"),
	tiles = {"ice.png"},
	groups = {dig_immediate=2},
	drop = "ice:ice",
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})
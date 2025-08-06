minetest.register_node("ice:ice", {
	description = "Ice",-- S("Stone"),
	tiles = {"ice.png"},
	groups = {dig_immediate=2},
	drop = "ice:ice",
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})
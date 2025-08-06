minetest.register_node("stone:stone", {
	description = "Stone",-- S("Stone"),
	tiles = {"stone.png"},
	groups = {cracky = 3, stone = 1},
	drop = "stone:stone",
	legacy_mineral = true,
	-- sounds = default.node_sound_stone_defaults(),
})
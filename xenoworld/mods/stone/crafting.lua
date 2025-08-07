minetest.register_craft({
	output = "stone:pile_of_stone",
	recipe = {
		{"stone:piece_of_stone", "stone:piece_of_stone", "stone:piece_of_stone"},
        {"stone:piece_of_stone", "", "stone:piece_of_stone"},
		{"stone:piece_of_stone", "stone:piece_of_stone", "stone:piece_of_stone"},
	}
})
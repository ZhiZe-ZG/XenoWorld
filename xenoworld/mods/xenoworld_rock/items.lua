-- Load support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_craftitem("xenoworld_rock:piece_of_stone", {
	description = S("Piece of Stone"),
	inventory_image = "piece_of_stone.png"
})
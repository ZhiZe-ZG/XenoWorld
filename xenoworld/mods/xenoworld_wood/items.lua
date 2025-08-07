-- Load support for MT game translation.
local S = minetest.get_translator(minetest.get_current_modname())

minetest.register_craftitem("xenoworld_wood:piece_of_wood", {
	description = S("Piece of Wood"),
	inventory_image = "xenoworld_wood_piece_of_wood.png"
})
-- `TRANSLATE` is used for xgettext search
local TRANSLATE = xenoworld_chest.translator

-- Crafting recipes

core.register_craft({
	output = "xenoworld_chest:chest",
	recipe = {
		{"xenoworld_wood:wood_piece", "xenoworld_wood:wood_piece", "xenoworld_wood:wood_piece"},
		{"xenoworld_wood:wood_piece", "", "xenoworld_wood:wood_piece"},
		{"xenoworld_wood:wood_piece", "xenoworld_wood:wood_piece", "xenoworld_wood:wood_piece"},
	}
})
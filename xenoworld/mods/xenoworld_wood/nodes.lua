-- `TRANSLATE` is used for xgettext search
local TRANSLATE = xenoworld_wood.translator

-- Wood nodes sounds
local function wood_sounds(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "wood_footstep", gain = 0.2}
    table.dig = table.dig or
			{name = "dig_choppy", gain = 0.4}
	table.dug = table.dug or
			{name = "wood_footstep", gain = 1.0}
	table.place = table.place or
			{name = "dig_choppy", gain = 1.0}
	return table
end

core.register_node("xenoworld_wood:wood_pile", {
    description = TRANSLATE("Wood Pile"),
    tiles = {"xenoworld_wood_wood_pile.png"},
    groups = {
        dig_immediate = 2
    },
    drop = "xenoworld_wood:wood_piece 8",
    sounds = wood_sounds(),
})

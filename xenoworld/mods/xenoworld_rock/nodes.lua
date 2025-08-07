-- `TRANSLATE` is used for xgettext search
local TRANSLATE = xenoworld_rock.translator

-- Rock nodes sounds
local function rock_sounds(table)
	table = table or {}
	table.footstep = table.footstep or
			{name = "hard_footstep", gain = 0.2}
	table.dug = table.dug or
			{name = "dug_node", gain = 1.0}
	table.place = table.place or
			{name = "place_node_hard", gain = 1.0}
	return table
end

--
-- Node registry
--

core.register_node("xenoworld_rock:limestone", {
	description = TRANSLATE("Limestone"),
	tiles = {"rock.png"},
	groups = {cracky=3},
	drop = "xenoworld_rock:limestone_piece 8",
	sounds = rock_sounds(),
})

core.register_node("xenoworld_rock:limestone_pile", {
	description = TRANSLATE("Limestone Pile"),
	tiles = {"limestone_pile.png"},
	groups = {dig_immediate=2},
	drop = "xenoworld_rock:limestone_piece 8",
	sounds = rock_sounds(),
})
-- `TRANSLATE` is used for xgettext search
local TRANSLATE = this_mod.translator

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

minetest.register_node("xenoworld_rock:rock", {
	description = TRANSLATE("Rock"),
	tiles = {"rock.png"},
	groups = {cracky=3},
	drop = "xenoworld_rock:rock_piece 8",
	sounds = rock_sounds(),
})

minetest.register_node("xenoworld_rock:rock_pile", {
	description = TRANSLATE("Rock Pile"),
	tiles = {"rock_pile.png"},
	groups = {dig_immediate=2},
	drop = "xenoworld_rock:rock_piece 8",
	sounds = rock_sounds(),
})
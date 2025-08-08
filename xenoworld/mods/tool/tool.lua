core.register_tool("tool:pick_stone", {
	description = "Stone Pickaxe",
	inventory_image = "stonepick.png",
	tool_capabilities = {
		full_punch_interval = 1.3,
		max_drop_level=0,
		groupcaps={
			cracky = {times={[2]=2.0, [3]=1.00}, uses=20, maxlevel=1},
		},
		damage_groups = {fleshy=3},
	},
	-- sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

-- The hand
-- Override the hand item registered in the engine in builtin/game/register.lua
-- From Minetest Game
core.override_item("", {
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
			snappy = {times={[3]=0.40}, uses=0, maxlevel=1},
			oddly_breakable_by_hand = {times={[1]=3.50,[2]=2.00,[3]=0.70}, uses=0},
			dig_immediate = {times={[1]=1.80,[2]=1.20,[3]=0.70}, uses=0},
		},
		damage_groups = {fleshy=1},
	}
})
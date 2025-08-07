minetest.register_tool("tool:pick_stone", {
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
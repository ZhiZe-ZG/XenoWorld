core.register_alias("mapgen_stone", "xenoworld_rock:limestone")
core.register_alias("mapgen_water_source", "ice:ice")


minetest.register_biome({
    name = "grassland",
    node_top = "xenoworld_rock:limestone_pile",
    depth_top = 1,
    node_filler = "xenoworld_rock:limestone",
    depth_filler = 1,
    node_riverbed = "xenoworld_rock:granite_pile",
    depth_riverbed = 2,
    node_dungeon = "xenoworld_rock:limestone_pile",
    node_dungeon_alt = "xenoworld_rock:limestone_pile",
    node_dungeon_stair = "xenoworld_rock:limestone_pile",
    y_max = 31000,
    y_min = 6,
    heat_point = 50,
    humidity_point = 35
})


minetest.register_decoration({
		deco_type = "simple",
		place_on = {"xenoworld_rock:limestone_pile"},
		sidelen = 4,
		noise_params = {
			offset = -1.5,
			scale = -1.5,
			spread = {x = 200, y = 200, z = 200},
			seed = 329,
			octaves = 4,
			persist = 1.0
		},
		biomes = {"grassland"},
        height = 5,
		y_max = 31000,
		y_min = 1,
		decoration = "xenoworld_wood:wood_pile",
		place_offset_y = -1,
		flags = "force_placement",
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "xenoworld_rock:granite_pile",
		wherein         = {"xenoworld_rock:limestone_pile"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
		-- Only where default:dirt is present as surface material
		biomes = {"grassland"}
	})

minetest.register_ore({
		ore_type        = "blob",
		ore             = "xenoworld_rock:granite",
		wherein         = {"xenoworld_rock:limestone"},
		clust_scarcity  = 16 * 16 * 16,
		clust_size      = 5,
		y_max           = 31000,
		y_min           = -31,
		noise_threshold = 0.0,
		noise_params    = {
			offset = 0.5,
			scale = 0.2,
			spread = {x = 5, y = 5, z = 5},
			seed = 17676,
			octaves = 1,
			persist = 0.0
		},
		-- Only where default:dirt is present as surface material
		biomes = {"grassland"}
	})
default = {}

-- Load files
local default_path = minetest.get_modpath(minetest.get_current_modname())

dofile(default_path.."/nodes.lua")
dofile(default_path.."/mapgen.lua")
dofile(default_path.."/items.lua")
dofile(default_path.."/crafting.lua")

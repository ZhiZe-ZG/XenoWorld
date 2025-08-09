-- A common data structure used in the mod
xenoworld_mapgen = {}

-- Load translator support
xenoworld_mapgen.translator = core.get_translator(core.get_current_modname())

-- Load files
xenoworld_mapgen.path = core.get_modpath(core.get_current_modname())

-- Load mapgen settings

local mg_name = minetest.get_mapgen_setting("mg_name")

if mg_name == "v6" then
    dofile(xenoworld_mapgen.path.."/mapgen_for_v6.lua")
else
    dofile(xenoworld_mapgen.path.."/mapgen.lua")
end

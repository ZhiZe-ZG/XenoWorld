-- A common data structure used in the mod
xenoworld_mapgen = {}

-- Load translator support
xenoworld_mapgen.translator = core.get_translator(core.get_current_modname())

-- Load files
xenoworld_mapgen.path = core.get_modpath(core.get_current_modname())

dofile(xenoworld_mapgen.path.."/mapgen.lua")
dofile(xenoworld_mapgen.path.."/mapgen_for_v6.lua")

-- A common data structure used in the mod
xenoworld_chest = {}

-- Load translator support
xenoworld_chest.translator = core.get_translator(core.get_current_modname())

-- Load files
xenoworld_chest.path = core.get_modpath(core.get_current_modname())

-- dofile(xenoworld_chest.path.."/craftitems.lua")
dofile(xenoworld_chest.path.."/nodes.lua")
dofile(xenoworld_chest.path.."/crafting.lua")

-- A common data structure used in the mod
xenoworld_rock = {}

-- Load translator support
xenoworld_rock.translator = core.get_translator(core.get_current_modname())

-- Load files
xenoworld_rock.path = core.get_modpath(core.get_current_modname())

dofile(xenoworld_rock.path.."/craftitems.lua")
dofile(xenoworld_rock.path.."/nodes.lua")
dofile(xenoworld_rock.path.."/crafting.lua")
dofile(xenoworld_rock.path.."/mapgen.lua")

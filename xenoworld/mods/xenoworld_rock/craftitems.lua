-- `TRANSLATE` is used for xgettext search
local TRANSLATE = xenoworld_rock.translator

--
-- Craftitem registry
--

core.register_craftitem("xenoworld_rock:limestone_piece", {
    description = TRANSLATE("Limestone Piece"),
    inventory_image = "limestone_piece.png",
    stack_max = 64*8,
})

core.register_craftitem("xenoworld_rock:granite_piece", {
    description = TRANSLATE("Granite Piece"),
    inventory_image = "granite_piece.png",
    stack_max = 64*8,
})

local S = xenoworld_chest.translator

local bookshelf_formspec =
	"size[8,7;]" ..
	"list[context;books;0,0.3;8,2;]" ..
	"list[current_player;main;0,2.85;8,1;]" ..
	"list[current_player;main;0,4.08;8,3;8]" ..
	"listring[context;books]" ..
	"listring[current_player;main]" --..
	--default.get_hotbar_bg(0,2.85)

local function update_bookshelf(pos)
	local meta = minetest.get_meta(pos)
	local inv = meta:get_inventory()
	local invlist = inv:get_list("books")

	local formspec = bookshelf_formspec
	-- Inventory slots overlay
	local bx, by = 0, 0.3
	local n_written, n_empty = 0, 0
	for i = 1, 16 do
		if i == 9 then
			bx = 0
			by = by + 1
		end
		local stack = invlist[i]
		if stack:is_empty() then
			-- formspec = formspec ..
			-- 	"image[" .. bx .. "," .. by .. ";1,1;default_bookshelf_slot.png]"
		else
			local metatable = stack:get_meta():to_table() or {}
			if metatable.fields and metatable.fields.text then
				n_written = n_written + stack:get_count()
			else
				n_empty = n_empty + stack:get_count()
			end
		end
		bx = bx + 1
	end
	meta:set_string("formspec", formspec)
	if n_written + n_empty == 0 then
		meta:set_string("infotext", S("Empty Bookshelf"))
	else
		meta:set_string("infotext", S("Bookshelf (@1 written, @2 empty books)", n_written, n_empty))
	end
end

local default_bookshelf_def = {
	description = S("Bookshelf"),
	tiles = {"xenoworld_wood_wood_pile.png", "xenoworld_wood_wood_pile.png", "xenoworld_wood_wood_pile.png",
		"xenoworld_wood_wood_pile.png", "granite_pile.png", "granite_pile.png"},
	paramtype2 = "facedir",
	is_ground_content = false,
	groups = {choppy = 3, oddly_breakable_by_hand = 2, flammable = 3},
	-- sounds = default.node_sound_wood_defaults(),

	on_construct = function(pos)
		local meta = minetest.get_meta(pos)
		local inv = meta:get_inventory()
		inv:set_size("books", 8 * 2)
		update_bookshelf(pos)
	end,
	can_dig = function(pos,player)
		local inv = minetest.get_meta(pos):get_inventory()
		return inv:is_empty("books")
	end,
	-- allow_metadata_inventory_put = function(pos, listname, index, stack)
	-- 	if minetest.get_item_group(stack:get_name(), "book") ~= 0 then
	-- 		return stack:get_count()
	-- 	end
	-- 	return 0
	-- end,
	on_metadata_inventory_put = function(pos)
		update_bookshelf(pos)
	end,
	on_metadata_inventory_take = function(pos)
		update_bookshelf(pos)
	end,
	on_metadata_inventory_move = function(pos)
		update_bookshelf(pos)
	end,
	-- on_blast = function(pos)
	-- 	local drops = {}
	-- 	default.get_inventory_drops(pos, "books", drops)
	-- 	drops[#drops+1] = "xenoworld_chest:chest"
	-- 	minetest.remove_node(pos)
	-- 	return drops
	-- end,
}
-- default.set_inventory_action_loggers(default_bookshelf_def, "bookshelf")
minetest.register_node("xenoworld_chest:chest", default_bookshelf_def)
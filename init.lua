--[[
GloopBlocks
written by GloopMaster
Version "Whatever you wanna call it"
Licensed under WTFPL.

Updates by VanessaE 2013-03-17.

the register_gloopblocks_alias function is borrowed from stairsplus.

--]]

-- Helper functions

function register_gloopblocks_alias(modname, origname, newname)
	minetest.register_alias(modname .. ":slab_" .. origname, "gloopblocks:slab_" .. newname)
	minetest.register_alias(modname .. ":slab_" .. origname .. "_inverted", "gloopblocks:slab_" .. newname .. "_inverted")
	minetest.register_alias(modname .. ":slab_" .. origname .. "_wall", "gloopblocks:slab_" .. newname .. "_wall")
	minetest.register_alias(modname .. ":stair_" .. origname, "gloopblocks:stair_" .. newname)
	minetest.register_alias(modname .. ":stair_" .. origname .. "_inverted", "gloopblocks:stair_" .. newname .. "_inverted")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_wall", "gloopblocks:stair_" .. newname .. "_wall")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_wall_half", "gloopblocks:stair_" .. newname .. "_wall_half")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_wall_half_inverted", "gloopblocks:stair_" .. newname .. "_wall_half_inverted")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_half", "gloopblocks:stair_" .. newname .. "_half")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_half_inverted", "gloopblocks:stair_" .. newname .. "_half_inverted")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_right_half", "gloopblocks:stair_" .. newname .. "_right_half")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_right_half_inverted", "gloopblocks:stair_" .. newname .. "_right_half_inverted")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_wall_half", "gloopblocks:stair_" .. newname .. "_wall_half")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_wall_half_inverted", "gloopblocks:stair_" .. newname .. "_wall_half_inverted")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_inner", "gloopblocks:stair_" .. newname .. "_inner")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_inner_inverted", "gloopblocks:stair_" .. newname .. "_inner_inverted")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_outer", "gloopblocks:stair_" .. newname .. "_outer")
	minetest.register_alias(modname .. ":stair_" .. origname .. "_outer_inverted", "gloopblocks:stair_" .. newname .. "_outer_inverted")
	minetest.register_alias(modname .. ":panel_" .. origname .. "_bottom", "gloopblocks:panel_" .. newname .. "_bottom")
	minetest.register_alias(modname .. ":panel_" .. origname .. "_top", "gloopblocks:panel_" .. newname .. "_top")
	minetest.register_alias(modname .. ":panel_" .. origname .. "_vertical", "gloopblocks:panel_" .. newname .. "_vertical")
	minetest.register_alias(modname .. ":micro_" .. origname .. "_bottom", "gloopblocks:micro_" .. newname .. "_bottom")
	minetest.register_alias(modname .. ":micro_" .. origname .. "_top", "gloopblocks:micro_" .. newname .. "_top")
end

-- Nodes

minetest.register_node("gloopblocks:rainbow_block", {
	description = "Rainbow Block",
	tiles = {"gloopblocks_rainbow_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_defaults(),
})

minetest.register_node("gloopblocks:cement", {
	description = "Cement",
	tiles = {"gloopblocks_cement.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:evil_block", {
	description = "Evil Block",
	tiles = {"gloopblocks_evil_block.png"},
	light_source = 5,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:basalt", {
	description = "Basalt",
	tiles = {"gloopblocks_basalt.png"},
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:pumice", {
	description = "Pumice",
	tiles = {"gloopblocks_pumice.png"},
	groups = {cracky=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_node("gloopblocks:pavement", {
	description = "Pavement",
	tiles = {"gloopblocks_pavement.png"},
	groups = {cracky=3, oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_alias("gloopblocks:obsidian", "default:obsidian")

-- Stairsplus defs

blocks = {
	"cement",
	"evil_block",
	"basalt",
	"pumice"
	}

descriptions = {
	"Cement",
	"Evil",
	"Basalt",
	"Pumice",
	}

for i in ipairs(blocks) do
	if blocks[i] == "evil_block" then light = 5 else light = 0 end
	register_stair_slab_panel_micro("gloopblocks", blocks[i], "gloopblocks:"..blocks[i], {cracky=2}, {"gloopblocks_"..blocks[i]..".png"}, descriptions[i], "gloopblocks"..blocks[i], "facedir", light)
	
end

register_gloopblocks_alias("gloopblocks", "evil", "evil_block")
register_gloopblocks_alias("gloopblocks", "cement", "cement")

-- Tools

minetest.register_tool("gloopblocks:pick_cement", {
	description = "Cement Pickaxe",
	inventory_image = "gloopblocks_cement_pick.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			cracky={times={[1]=3.50, [2]=1.40, [3]=0.90}, uses=25, maxlevel=2}
		}
	},
})

minetest.register_tool("gloopblocks:shovel_cement", {
	description = "Cement Shovel",
	inventory_image = "gloopblocks_cement_shovel.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			crumbly={times={[1]=1.50, [2]=0.60, [3]=0.45}, uses=25, maxlevel=2}
		}
	},
})

minetest.register_tool("gloopblocks:axe_cement", {
	description = "Cement Axe",
	inventory_image = "gloopblocks_cement_axe.png",
	tool_capabilities = {
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=3.00, [2]=1.30, [3]=0.80}, uses=25, maxlevel=2},
			fleshy={times={[2]=1.20, [3]=0.65}, uses=30, maxlevel=1}
		}
	},
})

minetest.register_tool("gloopblocks:sword_cement", {
	description = "Cement Sword",
	inventory_image = "gloopblocks_cement_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=1,
		groupcaps={
			fleshy={times={[1]=1.60, [2]=0.80, [3]=0.40}, uses=15, maxlevel=2},
			snappy={times={[2]=0.75, [3]=0.35}, uses=30, maxlevel=1},
			choppy={times={[3]=0.80}, uses=30, maxlevel=0}
		}
	}
})

minetest.register_tool("gloopblocks:pick_evil", {
	description = "Evil Pickaxe",
	inventory_image = "gloopblocks_evil_pick.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			cracky={times={[1]=0.10, [2]=0.10, [3]=0.10}, uses=10, maxlevel=3}
		}
	},
})

minetest.register_tool("gloopblocks:shovel_evil", {
	description = "Evil Shovel",
	inventory_image = "gloopblocks_evil_shovel.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			crumbly={times={[1]=0.05, [2]=0.05, [3]=0.05}, uses=10, maxlevel=3}
		}
	},
})

minetest.register_tool("gloopblocks:axe_evil", {
	description = "Evil Axe",
	inventory_image = "gloopblocks_evil_axe.png",
	tool_capabilities = {
		max_drop_level=3,
		groupcaps={
			choppy={times={[1]=0.15, [2]=0.15, [3]=0.15}, uses=10, maxlevel=3},
			fleshy={times={[1]=0.15, [2]=0.15, [3]=0.15}, uses=10, maxlevel=3}
		}
	},
})

minetest.register_tool("gloopblocks:sword_evil", {
	description = "Evil Sword",
	inventory_image = "gloopblocks_evil_sword.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		max_drop_level=3,
		groupcaps={
			fleshy={times={[1]=0.20, [2]=0.20, [3]=0.20}, uses=10, maxlevel=3},
			snappy={times={[1]=0.20, [2]=0.20, [3]=0.20}, uses=10, maxlevel=3},
			choppy={times={[1]=0.20, [2]=0.20, [3]=0.20}, uses=10, maxlevel=3}
		}
	}
})

-- Other items

minetest.register_craftitem("gloopblocks:wet_cement", {
	description = "Wet Cement",
	inventory_image = "gloopblocks_wet_cement.png",
})

minetest.register_craftitem("gloopblocks:evil_stick", {
	description = "Evil Stick",
	inventory_image = "gloopblocks_evil_stick.png",
})

-- Crafts

minetest.register_craft( {
	type = "shapeless",
	output = "gloopblocks:rainbow_block",
	recipe = {
		"group:basecolor_red",
		"group:excolor_orange",
		"group:basecolor_yellow",
		"group:basecolor_green",
		"group:basecolor_blue",
		"group:excolor_violet",
		"default:stone",
		"default:mese_crystal",
	},
})

minetest.register_craft({
	output = "default:nyancat",
	recipe = {
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
	}
})

minetest.register_craft({
	output = "default:nyancat_rainbow",
	recipe = {
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
	}
})

minetest.register_craft({
	type = "shapeless",
	output = "gloopblocks:wet_cement",
	recipe = {
		"bucket:bucket_water",
		"default:gravel",
	},
	replacements = {{'bucket:bucket_water', 'bucket:bucket_empty'},},
})

minetest.register_craft({
	type = "cooking",
	output = "gloopblocks:cement",
	recipe = "gloopblocks:wet_cement",
	cooktime = 8
})

minetest.register_craft({
	output = "default:gravel 2",
	recipe = {
		{"gloopblocks:cement"},
	},
})

minetest.register_craft({
	type = "shapeless",
	output = "gloopblocks:evil_stick",
	recipe = {
		"gloopores:kalite_lump",
		"default:coal_lump",
		"default:stick"
	}
})

minetest.register_craft({
	output = "gloopblocks:evil_block",
	recipe = {
		{"gloopblocks:evil_stick", "gloopblocks:evil_stick"},
		{"gloopblocks:evil_stick", "gloopblocks:evil_stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:evil_stick 4",
	recipe = {
		{"gloopblocks:evil_block"}
	}
})

minetest.register_craft({
	output = "default:nyancat",
	recipe = {
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
	}
})

minetest.register_craft({
	output = "default:nyancat_rainbow",
	recipe = {
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
	}
})

minetest.register_craft({
	output = "gloopblocks:pick_cement",
	recipe = {
		{"gloopblocks:cement", "gloopblocks:cement", "gloopblocks:cement"},
		{"", "default:stick", ""},
		{"", "default:stick", ""},
	}
})

minetest.register_craft({
	output = "gloopblocks:axe_cement",
	recipe = {
		{"gloopblocks:cement", "gloopblocks:cement"},
		{"gloopblocks:cement", "default:stick"},
		{"", "default:stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:axe_cement",
	recipe = {
		{"gloopblocks:cement", "gloopblocks:cement"},
		{"default:stick", "gloopblocks:cement"},
		{"default:stick", ""},
	}
})

minetest.register_craft({
	output = "gloopblocks:shovel_cement",
	recipe = {
		{"gloopblocks:cement"},
		{"default:stick"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:sword_cement",
	recipe = {
		{"gloopblocks:cement"},
		{"gloopblocks:cement"},
		{"default:stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:pick_evil",
	recipe = {
		{"gloopblocks:evil_block", "gloopblocks:evil_block", "gloopblocks:evil_block"},
		{"", "gloopblocks:evil_stick", ""},
		{"", "gloopblocks:evil_stick", ""},
	}
})

minetest.register_craft({
	output = "gloopblocks:axe_evil",
	recipe = {
		{"gloopblocks:evil_block", "gloopblocks:evil_block"},
		{"gloopblocks:evil_block", "gloopblocks:evil_stick"},
		{"", "gloopblocks:evil_stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:axe_evil",
	recipe = {
		{"gloopblocks:evil_block", "gloopblocks:evil_block"},
		{"gloopblocks:evil_stick", "gloopblocks:evil_block"},
		{"gloopblocks:evil_stick", ""},
	}
})

minetest.register_craft({
	output = "gloopblocks:shovel_evil",
	recipe = {
		{"gloopblocks:evil_block"},
		{"gloopblocks:evil_stick"},
		{"gloopblocks:evil_stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:sword_evil",
	recipe = {
		{"gloopblocks:evil_block"},
		{"gloopblocks:evil_block"},
		{"gloopblocks:evil_stick"},
	}
})

minetest.register_craft({
	output = "default:wood",
	recipe = {
		 {"default:stick", "default:stick"},
		 {"default:stick", "default:stick"},
	}
})

minetest.register_craft({
	output = "gloopblocks:pavement 5",
	recipe = {
		{"gloopblocks:basalt",    "gloopblocks:wet_cement","gloopblocks:basalt"},
		{"gloopblocks:wet_cement","gloopblocks:basalt",    "gloopblocks:wet_cement"},
		{"gloopblocks:basalt",    "gloopblocks:wet_cement","gloopblocks:basalt"},
	}
})

minetest.register_craft({
	output = "gloopblocks:pavement 5",
	recipe = {
		{"gloopblocks:wet_cement","gloopblocks:basalt",    "gloopblocks:wet_cement"},
		{"gloopblocks:basalt",    "gloopblocks:wet_cement","gloopblocks:basalt"},
		{"gloopblocks:wet_cement","gloopblocks:basalt",    "gloopblocks:wet_cement"},
	}
})

-- ABMs for various things

minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors = {"default:water_source", "default:water_flowing"},
	interval = 30,
	chance = 20,
	action = function(pos)
		minetest.env:add_node (pos, {name = "default:mossycobble"})
	end,
})

minetest.register_abm({
	nodenames = {"default:lava_flowing"},
	neighbors = {"default:water_source"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		minetest.env:add_node(pos,{name="gloopblocks:basalt"})
	end,
})

minetest.register_abm({
	nodenames = {"default:lava_flowing"},
	neighbors = {"default:water_flowing"},
	interval = 1.0,
	chance = 1,
	action = function(pos)
		minetest.env:add_node(pos,{name="gloopblocks:pumice"})
	end,
})

print("Gloopblocks Loaded!")

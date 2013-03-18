--[[
GloopBlocks
written by GloopMaster
Version "Whatever you wanna call it"
Licensed under WTFPL.

Updates by VanessaE 2013-03-17.

--]]

minetest.register_node("gloopblocks:rainbow_block", {
	description = "Rainbow Block",
	tiles = {"gloopblocks_rainbow_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_defaults(),
})

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

minetest.register_node("gloopblocks:cement", {
	description = "Cement",
	tiles = {"gloopblocks_cement.png"},
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
})

minetest.register_craftitem("gloopblocks:wet_cement", {
	description = "Wet Cement",
	inventory_image = "gloopblocks_wet_cement.png",
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

minetest.register_craftitem("gloopblocks:evil_stick", {
	description = "Evil Stick",
	inventory_image = "gloopblocks_evil_stick.png",
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

minetest.register_node("gloopblocks:evil_block", {
	description = "Evil Block",
	tiles = {"gloopblocks_evil_block.png"},
	light_source = 5,
	is_ground_content = true,
	groups = {cracky=2},
	sounds = default.node_sound_stone_defaults(),
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

minetest.register_node("gloopblocks:rainbow_block", {
	description = "Rainbow Block",
	tiles = {"gloopblocks_rainbow_block.png"},
	is_ground_content = true,
	groups = {cracky=3},
	sounds = default.node_sound_defaults(),
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

minetest.register_abm({
	nodenames = {"default:cobble"},
	neighbors = {"default:water_source", "default:water_flowing"},
	interval = 30,
	chance = 20,
	action = function(pos)
		minetest.env:add_node (pos, {name = "default:mossycobble"})
	end,
})

gloopblocks = {}

function gloopblocks.register_stair(subname, recipeitem, groups, images, description, drop)
		minetest.register_node("gloopblocks:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node(":stairs:stair_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

		minetest.register_node("gloopblocks:stair_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:stair_" .. drop .. "_inverted",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, -0.5, 0.5, 0.5, 0.5},
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node("gloopblocks:stair_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:stair_" .. drop .. "_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0.5, 0.5},
				{-0.5, -0.5, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node("gloopblocks:stair_" .. subname .. "_wall_half", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:stair_" .. drop .. "_wall_half",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, 0, 0.5, 0, 0.5},
				{-0.5, -0.5, -0.5, 0, 0, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node("gloopblocks:stair_" .. subname .. "_wall_half_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:stair_" .. drop .. "_wall_half_inverted",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node("gloopblocks:stair_" .. subname .. "_inner", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:stair_" .. drop .. "_inner",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
				{-0.5, 0, -0.5, 0, 0.5, 0},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
		minetest.register_node("gloopblocks:stair_" .. subname .. "_outer", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:stair_" .. drop .. "_outer",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0, 0.5, 0.5},
			},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. " 8",
		recipe = {
			{recipeitem, "", ""},
			{recipeitem, recipeitem, ""},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. " 8",
		recipe = {
			{"", "", recipeitem},
			{"", recipeitem, recipeitem},
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_inverted" .. " 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, recipeitem, ""},
			{recipeitem, "", ""},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_inverted" .. " 8",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", recipeitem, recipeitem},
			{"", "", recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_inverted" .. " 1",
		recipe = {
			{"gloopblocks:stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_inner" .. " 1",
		recipe = {
			{"gloopblocks:micro_" .. subname .. "_bottom", "gloopblocks:stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_outer 1",
		recipe = {
			{"gloopblocks:micro_" .. subname .. "_bottom"},
			{"gloopblocks:slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_wall_half" .. " 1",
		recipe = {
			{"gloopblocks:stair_" .. subname .. "_wall"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_wall_half_inverted" .. " 1",
		recipe = {
			{"gloopblocks:stair_" .. subname .. "_wall_half"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_wall_half" .. " 1",
		recipe = {
			{"gloopblocks:stair_" .. subname .. "_wall_half_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_inverted" .. " 1",
		recipe = {
			{"gloopblocks:stair_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. " 1",
		recipe = {
			{"gloopblocks:stair_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_wall" .. " 7",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{"", "", recipeitem},
			{"", "", recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:stair_" .. subname .. "_wall" .. " 7",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
			{recipeitem, ""	, ""},
			{recipeitem, "", ""},
		},
	})
end

-- Node will be called gloopblocks:slab_<subname>
function gloopblocks.register_slab(subname, recipeitem, groups, images, description, drop)
	minetest.register_node("gloopblocks:slab_" .. subname, {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:slab_" .. drop,
		paramtype = "light",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node("gloopblocks:slab_" .. subname .. "_inverted", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:slab_" .. drop .. "_inverted",
		paramtype = "light",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, -0.5, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node("gloopblocks:slab_" .. subname .. "_wall", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:slab_" .. drop .. "_wall",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})

	minetest.register_craft({
		output = "gloopblocks:slab_" .. subname .. " 6",
		recipe = {
			{recipeitem, recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:slab_" .. subname .. "_wall" .. " 6",
		recipe = {
			{recipeitem},
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:slab_" .. subname .. "_inverted" .. " 1",
		recipe = {
			{"gloopblocks:slab_" .. subname},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:slab_" .. subname .. " 1",
		recipe = {
			{"gloopblocks:slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem .. " 1",
		recipe = {
			{"gloopblocks:slab_" .. subname},
			{"gloopblocks:slab_" .. subname},
		},
	})

	minetest.register_craft({
		output = recipeitem .. " 1",
		recipe = {
			{"gloopblocks:slab_" .. subname .. "_inverted"},
			{"gloopblocks:slab_" .. subname .. "_inverted"},
		},
	})
	
	minetest.register_craft({
		output = recipeitem .. " 1",
		recipe = {
			{"gloopblocks:slab_" .. subname .. "_wall", "gloopblocks:slab_" .. subname .. "_wall"},
		},
	})
end

-- Node will be called gloopblocks:panel_<subname>
function gloopblocks.register_panel(subname, recipeitem, groups, images, description, drop)
	minetest.register_node("gloopblocks:panel_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:panel_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0.5, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node("gloopblocks:panel_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:panel_" .. drop .. "_top",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0.5, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node("gloopblocks:panel_" .. subname .. "_vertical", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:panel_" .. drop .. "_vertical",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = "gloopblocks:panel_" .. subname .. "_bottom" .. " 8",
		recipe = {
			{recipeitem, recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:panel_" .. subname .. "_vertical" .. " 8",
		recipe = {
			{recipeitem},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:panel_" .. subname .. "_top" .. " 1",
		recipe = {
			{"gloopblocks:panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:panel_" .. subname .. "_bottom" .. " 1",
		recipe = {
			{"gloopblocks:panel_" .. subname .. "_top"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:panel_" .. subname .. "_vertical" .. " 2",
		recipe = {
			{"gloopblocks:panel_" .. subname .. "_bottom"},
			{"gloopblocks:panel_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:panel_" .. subname .. "_bottom" .. " 2",
		recipe = {
			{"gloopblocks:panel_" .. subname .. "_vertical", "gloopblocks:panel_" .. subname .. "_vertical"},
		},
	})
end

-- Node will be called gloopblocks:micro_<subname>
function gloopblocks.register_micro(subname, recipeitem, groups, images, description, drop)
	minetest.register_node("gloopblocks:micro_" .. subname .. "_bottom", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:micro_" .. drop .. "_bottom",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, 0, 0, 0, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_node("gloopblocks:micro_" .. subname .. "_top", {
		description = description,
		drawtype = "nodebox",
		tiles = images,
		drop = "gloopblocks:micro_" .. drop .. "_top",
		paramtype = "light",
		paramtype2 = "facedir",
		is_ground_content = true,
		groups = groups,
		node_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		selection_box = {
			type = "fixed",
			fixed = {-0.5, 0, 0, 0, 0.5, 0.5},
		},
		sounds = default.node_sound_stone_defaults(),
	})
	
	minetest.register_craft({
		output = "gloopblocks:micro_" .. subname .. "_bottom 8",
		recipe = {
			{"default:stick"},
			{recipeitem},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:micro_" .. subname .. "_top 1",
		recipe = {
			{"gloopblocks:micro_" .. subname .. "_bottom"},
		},
	})
	
	minetest.register_craft({
		output = "gloopblocks:micro_" .. subname .. "_bottom 1",
		recipe = {
			{"gloopblocks:micro_" .. subname .. "_top"},
		},
	})
end

-- Nodes will be called gloopblocks:{stair,slab}_<subname>
function gloopblocks.register_stair_and_slab_and_panel_and_micro(subname, recipeitem, groups, images, desc_stair, desc_slab, desc_panel, desc_micro, drop)
	gloopblocks.register_stair(subname, recipeitem, groups, images, desc_stair, drop)
	gloopblocks.register_slab(subname, recipeitem, groups, images, desc_slab, drop)
	gloopblocks.register_panel(subname, recipeitem, groups, images, desc_panel, drop)
	gloopblocks.register_micro(subname, recipeitem, groups, images, desc_micro, drop)
end

gloopblocks.register_stair_and_slab_and_panel_and_micro("cement", "gloopblocks:cement", {cracky=2}, {"gloopblocks_cement.png"}, "Cement Stairs", "Cement Slab", "Cement Panel", "Cement Microblock", "cement")
gloopblocks.register_stair_and_slab_and_panel_and_micro("evil", "gloopblocks:evil_block", {cracky=3}, {"gloopblocks_evil_block.png"}, "Evil Stairs", "Evil Slab", "Evil Panel", "Evil Microblock", "evil")

minetest.register_alias("gloopblocks:obsidian", "default:obsidian")

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

minetest.register_node("gloopblocks:pavement", {
	description = "Pavement",
	tiles = {"gloopblocks_pavement.png"},
	groups = {cracky=3, oddly_breakable_by_hand=3},
	sounds = default.node_sound_stone_defaults(),
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



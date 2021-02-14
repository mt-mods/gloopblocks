-- Load support for intllib.
local MP = minetest.get_modpath(minetest.get_current_modname())
local S, NS = dofile(MP.."/intllib.lua")

-- define lava-cooling-based nodes and hook into the default lavacooling
-- functions to generate basalt, pumice, and obsidian

if minetest.setting_getbool("gloopblocks_lavacooling") ~= false then

	minetest.register_node("gloopblocks:obsidian_cooled", {
		description = S("Obsidian"),
		tiles = {"default_obsidian.png"},
		is_ground_content = true,
		sounds = default.node_sound_stone_defaults(),
		groups = {cracky=1, level=2, not_in_creative_inventory=1},
		drop = "default:obsidian",
		after_place_node = function(pos, placer, itemstack, pointed_thing)
			minetest.add_node(pos, {name = "default:obsidian"})
		end
	})

	minetest.register_node("gloopblocks:basalt_cooled", {
		description = S("Basalt"),
		tiles = {"gloopblocks_basalt.png"},
		groups = {cracky=2, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		drop = "gloopblocks:basalt",
		after_place_node = function(pos, placer, itemstack, pointed_thing)
			minetest.add_node(pos, {name = "gloopblocks:basalt"})
		end
	})

	minetest.register_node("gloopblocks:pumice_cooled", {
		description = S("Pumice"),
		tiles = {"gloopblocks_pumice.png"},
		groups = {cracky=3, not_in_creative_inventory=1},
		sounds = default.node_sound_stone_defaults(),
		drop = "gloopblocks:pumice",
		after_place_node = function(pos, placer, itemstack, pointed_thing)
			minetest.add_node(pos, {name = "gloopblocks:pumice"})
		end
	})

	local gloopblocks_search_nearby_nodes = function(pos, node)
		if minetest.get_node({x=pos.x-1, y=pos.y, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x+1, y=pos.y, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y-1, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y+1, z=pos.z}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z-1}).name == node then return true end
		if minetest.get_node({x=pos.x, y=pos.y, z=pos.z+1}).name == node then return true end
		return false
	end

	default.cool_lava = function(pos, node)
		if node.name == "default:lava_source" then
			if gloopblocks_search_nearby_nodes(pos,"default:water_source")
			or gloopblocks_search_nearby_nodes(pos,"default:water_flowing") then
				minetest.set_node(pos, {name="gloopblocks:obsidian_cooled"})
			end
		else -- Lava flowing
			if gloopblocks_search_nearby_nodes(pos,"default:water_source") then
				minetest.set_node(pos, {name="gloopblocks:basalt_cooled"})
			elseif gloopblocks_search_nearby_nodes(pos,"default:water_flowing") then
				minetest.set_node(pos, {name="gloopblocks:pumice_cooled"})
			end
		end
	end
end

if minetest.get_modpath("worldedit") then
	function gloopblocks.liquid_ungrief(pos1, pos2, name)
		local count
		local p1to2 = minetest.pos_to_string(pos1).." and "..minetest.pos_to_string(pos2)
		local volume = worldedit.volume(pos1, pos2)
		minetest.chat_send_player(name, "Cleaning-up lava/water griefing between "..p1to2.."...")
		if volume > 1000000 then
			minetest.chat_send_player(name, "This operation could affect up to "..volume.." nodes.  It may take a while.")
		end
		minetest.log("action", name.." performs lava/water greifing cleanup between "..p1to2..".")
		count = worldedit.replace(pos1, pos2, "default:lava_source", "air")
		count = worldedit.replace(pos1, pos2, "default:lava_flowing", "air")
		count = worldedit.replace(pos1, pos2, "default:water_source", "air")
		count = worldedit.replace(pos1, pos2, "default:water_flowing", "air")
		count = worldedit.replace(pos1, pos2, "default:river_water_source", "air")
		count = worldedit.replace(pos1, pos2, "default:river_water_flowing", "air")
		count = worldedit.replace(pos1, pos2, "gloopblocks:pumice_cooled", "air")
		count = worldedit.replace(pos1, pos2, "gloopblocks:basalt_cooled", "air")
		count = worldedit.replace(pos1, pos2, "gloopblocks:obsidian_cooled", "air")
		count = worldedit.fixlight(pos1, pos2)
		minetest.chat_send_player(name, "Operation completed.")
	end

	minetest.register_chatcommand("/liquid_ungrief", {
		params = "[size]",
		privs = {worldedit = true},
		description = "Repairs greifing caused by spilling lava and water (and their \"cooling\" results)",
		func = function(name, params)
			local pos1 = worldedit.pos1[name]
			local pos2 = worldedit.pos2[name]
			if not pos1 or not pos2 then return end
			gloopblocks.liquid_ungrief(pos1, pos2, name)
		end
	})
end

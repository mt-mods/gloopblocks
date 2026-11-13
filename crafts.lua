-- Various crafts

core.register_craft( {
	type = "shapeless",
	output = "gloopblocks:rainbow_block",
	recipe = {
		"group:dye,color_red",
		"group:dye,color_orange",
		"group:dye,color_yellow",
		"group:dye,color_green",
		"group:dye,color_blue",
		"group:dye,color_violet",
		"default:stone",
		"default:mese_crystal",
	},
})


core.register_craft({
	type = "shapeless",
	output = "default:nyancat_rainbow",
	recipe = {
		"gloopblocks:rainbow_block",
		"default:diamondblock",
		"default:steelblock",
		"default:copperblock",
		"default:bronzeblock",
		"default:goldblock",
		"default:mese",
		"moreores:silver_block",
		"moreores:mithril_block"
	}
})

core.register_craft({
	output = "default:nyancat",
	recipe = {
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
		{"gloopblocks:rainbow_block", "gloopblocks:rainbow_block", "gloopblocks:rainbow_block"},
	}
})

if core.get_modpath("glooptest") then

	core.register_craft({
		type = "shapeless",
		output = "gloopblocks:evil_stick",
		recipe = {
			"glooptest:kalite_lump",
			"default:gold_ingot",
			"default:coal_lump",
			"group:stick"
		}
	})

	core.register_craft({
		output = "gloopblocks:evil_block",
		recipe = {
			{"gloopblocks:evil_stick", "gloopblocks:evil_stick"},
			{"gloopblocks:evil_stick", "gloopblocks:evil_stick"},
		}
	})

	core.register_craft({
		output = "gloopblocks:evil_stick 4",
		recipe = {
			{"gloopblocks:evil_block"}
		}
	})

	core.register_craft({
		output = "gloopblocks:pick_evil",
		recipe = {
			{"gloopblocks:evil_block", "gloopblocks:evil_block", "gloopblocks:evil_block"},
			{"", "gloopblocks:evil_stick", ""},
			{"", "gloopblocks:evil_stick", ""},
		}
	})

	core.register_craft({
		output = "gloopblocks:axe_evil",
		recipe = {
			{"gloopblocks:evil_block", "gloopblocks:evil_block"},
			{"gloopblocks:evil_block", "gloopblocks:evil_stick"},
			{"", "gloopblocks:evil_stick"},
		}
	})

	core.register_craft({
		output = "gloopblocks:axe_evil",
		recipe = {
			{"gloopblocks:evil_block", "gloopblocks:evil_block"},
			{"gloopblocks:evil_stick", "gloopblocks:evil_block"},
			{"gloopblocks:evil_stick", ""},
		}
	})

	core.register_craft({
		output = "gloopblocks:shovel_evil",
		recipe = {
			{"gloopblocks:evil_block"},
			{"gloopblocks:evil_stick"},
			{"gloopblocks:evil_stick"},
		}
	})

	core.register_craft({
		output = "gloopblocks:sword_evil",
		recipe = {
			{"gloopblocks:evil_block"},
			{"gloopblocks:evil_block"},
			{"gloopblocks:evil_stick"},
		}
	})
end

core.register_craft({
	output = "gloopblocks:scaffolding 12",
		recipe = {
		{"group:stick", "group:wood", "group:stick"},
		{"", "group:stick", ""},
		{"group:stick", "group:wood", "group:stick"},
	}
})

core.register_craft({
	output = "gloopblocks:pick_cement",
	recipe = {
		{"gloopblocks:cement", "gloopblocks:cement", "gloopblocks:cement"},
		{"", "group:stick", ""},
		{"", "group:stick", ""},
	}
})

core.register_craft({
	output = "gloopblocks:axe_cement",
	recipe = {
		{"gloopblocks:cement", "gloopblocks:cement"},
		{"gloopblocks:cement", "group:stick"},
		{"", "group:stick"},
	}
})

core.register_craft({
	output = "gloopblocks:axe_cement",
	recipe = {
		{"gloopblocks:cement", "gloopblocks:cement"},
		{"group:stick", "gloopblocks:cement"},
		{"group:stick", ""},
	}
})

core.register_craft({
	output = "gloopblocks:shovel_cement",
	recipe = {
		{"gloopblocks:cement"},
		{"group:stick"},
		{"group:stick"},
	}
})

core.register_craft({
	output = "gloopblocks:sword_cement",
	recipe = {
		{"gloopblocks:cement"},
		{"gloopblocks:cement"},
		{"group:stick"},
	}
})

core.register_craft({
	output = "gloopblocks:pavement 5",
	recipe = {
		{"gloopblocks:basalt",    "gloopblocks:wet_cement","gloopblocks:basalt"},
		{"gloopblocks:wet_cement","gloopblocks:basalt",    "gloopblocks:wet_cement"},
		{"gloopblocks:basalt",    "gloopblocks:wet_cement","gloopblocks:basalt"},
	}
})

core.register_craft({
	output = "gloopblocks:pavement 5",
	recipe = {
		{"gloopblocks:wet_cement","gloopblocks:basalt",    "gloopblocks:wet_cement"},
		{"gloopblocks:basalt",    "gloopblocks:wet_cement","gloopblocks:basalt"},
		{"gloopblocks:wet_cement","gloopblocks:basalt",    "gloopblocks:wet_cement"},
	}
})

core.register_craft({
	output = "gloopblocks:oerkki_block 2",
	recipe = {
		{"default:iron_lump", "default:coal_lump", "default:iron_lump"},
		{"default:coal_lump", "default:bookshelf", "default:coal_lump"},
		{"default:iron_lump", "default:coal_lump", "default:iron_lump"},
	},
	replacements = { { "default:bookshelf", "default:book 3" } }
})

core.register_craft({
	output = "gloopblocks:oerkki_block 2",
	recipe = {
		{"default:coal_lump", "default:iron_lump", "default:coal_lump"},
		{"default:iron_lump", "default:bookshelf", "default:iron_lump"},
		{"default:coal_lump", "default:iron_lump", "default:coal_lump"},
	},
	replacements = { { "default:bookshelf", "default:book 3" } }
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:stone_brick_mossy 2",
	recipe = {
		"default:stonebrick",
		"default:stonebrick",
		"default:junglegrass",
		"default:junglegrass"
	}
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:stone_brick_mossy 2",
	recipe = {
		"default:stonebrick",
		"default:stonebrick",
		"default:grass_1",
		"default:grass_1",
		"default:grass_1",
		"default:grass_1"
	}
})

core.register_craft({
	type = "cooking",
	output = "gloopblocks:stonebrick",
	recipe = "default:stone_brick_mossy",
	cooktime = 6
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:cobble_road 5",
	recipe = {
		"default:cobble",
		"default:cobble",
		"default:cobble",
		"default:cobble",
		"gloopblocks:pavement"
	}
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:cobble_road_mossy 2",
	recipe = {
		"gloopblocks:cobble_road",
		"gloopblocks:cobble_road",
		"default:junglegrass",
		"default:junglegrass"
	}
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:cobble_road_mossy 2",
	recipe = {
		"gloopblocks:cobble_road",
		"gloopblocks:cobble_road",
		"default:grass_1",
		"default:grass_1",
		"default:grass_1",
		"default:grass_1"
	}
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:stone_mossy 2",
	recipe = {
		"default:stone",
		"default:stone",
		"default:junglegrass",
		"default:junglegrass"
	}
})

core.register_craft({
	type = "shapeless",
	output = "gloopblocks:stone_mossy 2",
	recipe = {
		"default:stone",
		"default:stone",
		"default:grass_1",
		"default:grass_1",
		"default:grass_1",
		"default:grass_1"
	}
})

core.register_craft({
	type = "shapeless",
	output = "default:cobble 8",
	recipe = {
		"gloopblocks:pumice",
		"gloopblocks:pumice",
		"gloopblocks:pumice",
		"gloopblocks:pumice",
		"gloopblocks:basalt",
		"gloopblocks:basalt",
		"gloopblocks:basalt",
		"gloopblocks:basalt"
	}
})

core.register_craft({
	output = "gloopblocks:fence_steel 1",
	recipe = {
		{"xpanes:bar", "xpanes:bar", "xpanes:bar"},
		{"xpanes:bar", "xpanes:bar", "xpanes:bar"},
	},
})

if core.get_modpath("technic") then
	technic.register_grinder_recipe({input={"gloopblocks:pumice"},output="default:sand"})
	technic.register_grinder_recipe({input={"gloopblocks:basalt"},output="default:cobble"})
	core.register_craft({
		type = "shapeless",
		output = "technic:concrete 3",
		recipe = {
			"gloopblocks:wet_cement",
			"group:sand",
			"default:gravel",
		}
	})
end

core.register_craft({
	output = "gloopblocks:concrete_sidewalk",
	type = "shapeless",
	recipe = {
		"streets:slab_concrete_2",
		"default:dirt",
	}
})

core.register_craft({
	output = "gloopblocks:concrete_sidewalk 2",
	type = "shapeless",
	recipe = {
		"streets:slab_concrete_quarter",
		"default:dirt",
		"default:dirt"
	}
})

core.register_craft({
	output = "gloopblocks:concrete_sidewalk 4",
	type = "shapeless",
	recipe = {
		"streets:slab_concrete",
		"default:dirt",
		"default:dirt",
		"default:dirt",
		"default:dirt"
	}
})

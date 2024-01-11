waterpumpID = "WP-"
color = {r=0, g=0.6, b=1, a=1}

require("__NindyCore__/scripts/values.lua")

data:extend{
	{
		type="recipe-category",
		name=nindycore.core.add_mod_tag(waterpumpID .. "recipe-category"),
		order="z"
	},
	{
		type = "recipe",
		name = nindycore.core.add_mod_tag(waterpumpID .. "recipe-water"),
		category = nindycore.core.add_mod_tag(waterpumpID .. "recipe-category"),
		energy_required = 0.01,
		hidden = true,
		hide_from_stats = true,
		hide_from_player_crafting = true,
		ingredients = {},
		results = {
			{type="fluid", name="water", amount=20}
		}
	}
}

require("prototypes.Corpse")
require("prototypes.WaterPumpjack")


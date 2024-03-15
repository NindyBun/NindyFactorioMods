require("__NindyCore__/scripts/values.lua")
require("scripts.values")
require("prototypes.Evaporator")
require("prototypes.Fluids")

data:extend{
	{
		type="item-group",
		name=nindycore.ore_processing.categories["Ore_Processing"],
		icons={
            {
                icon=nindycore.ore_processing.sprites["Evaporator"].icon,
                icon_size=512,
                scale=2
            }
        },
		order="z"
	},
    {
		type="item-subgroup",
		name=nindycore.ore_processing.categories["Sub_Ore_Processing"],
		group=nindycore.ore_processing.categories["Ore_Processing"],
		order="a"
	}
}

data:extend{
	{
		type="recipe-category",
		name=nindycore.ore_processing.categories["Evaporator"],
		order="z"
	},
	{
		type = "recipe",
		name = nindycore.ore_processing.recipes["Brine"],
		category = nindycore.ore_processing.categories["Evaporator"],
		energy_required = 1,
		ingredients = {
			{type="fluid", name="water", amount=100}},
		results = {
			{type="fluid", name=nindycore.ore_processing.fluids["Brine"], amount=60}
		}
	}
}
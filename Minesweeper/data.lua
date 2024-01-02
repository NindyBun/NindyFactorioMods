require("prototypes.Technology")
require("prototypes.Barrels")

data:extend{
	{
		type="recipe-category",
		name="SUB-fill-barrel",
		order="z"
	}
}
data:extend{
	{
		type="recipe-category",
		name="SUB-empty-barrel",
		order="z"
	}
}

data:extend{
	{
		type="item-group",
		name="SingleUseBarrels",
		icon="__SingleUseBarrels__/graphics/empty-barrel.png",
		icon_size = 64,
		icon_mipmaps = 4,
		order="b"
	}
}

data:extend{
	{
		type="item-subgroup",
		name="SUB-barrel-group",
		group="SingleUseBarrels",
		order="a"
	}
}
data:extend{
	{
		type="item-subgroup",
		name="SUB-fill-barrel-group",
		group="SingleUseBarrels",
		order="b"
	}
}
data:extend{
	{
		type="item-subgroup",
		name="SUB-empty-filled-barrel-group",
		group="SingleUseBarrels",
		order="c"
	}
}
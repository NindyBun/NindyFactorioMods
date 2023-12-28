local item = {}
item.type = "item"
item.name = nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")
item.icons = {
    {
        icon = "__base__/graphics/icons/pumpjack.png",
        tint = color,
        icon_size = 64,
        icon_mipmaps = 4,
    },
}
item.order = "b[fluids]-a[offshore-pump]"
item.place_result = nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")
item.stack_size = 20
item.subgroup = "extraction-machine"
data:extend{item}

local recipe = {}
recipe.type = "recipe"
recipe.name = nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")
recipe.enabled = false
recipe.ingredients = {
    {type="item", name="iron-plate", amount=25},
    {type="item", name="electronic-circuit", amount=5},
    {type="item", name="pipe", amount=15},
    {type="item", name="iron-gear-wheel", amount=10}
}
recipe.result = nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")
data:extend{recipe}

local pumpjack = table.deepcopy(data.raw["mining-drill"]["pumpjack"])

local entity = {}
entity.type = "assembling-machine"
entity.name = nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")
entity.icons = {
    {
        icon = "__base__/graphics/icons/pumpjack.png",
        tint = color,
        icon_size = 64,
        icon_mipmaps = 4,
    }
}
entity.flags = {"placeable-neutral", "player-creation"}
entity.collision_box = {{-1.20, -1.20}, {1.20, 1.20}}
entity.selection_box = {{-1.5, -1.5}, {1.5, 1.5}}
entity.max_health = 200
entity.crafting_categories = {nindycore.core.add_mod_tag(waterpumpID.."recipe-category")}
entity.fixed_recipe = nindycore.core.add_mod_tag(waterpumpID.."recipe-water")
entity.show_recipe_icon = false
entity.crafting_speed = 1
entity.dying_explosion = pumpjack.dying_explosion
entity.damaged_trigger_effect = pumpjack.damaged_trigger_effect
entity.fast_replacable_group = ""
entity.corpse = nindycore.core.add_mod_tag(waterpumpID.."corpse")
entity.open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" }
entity.close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" }
entity.vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 }
entity.minable = {mining_time = 0.5, result = nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")}
entity.animation = {
    north = {
        layers = {
            pumpjack.base_picture.sheets[1],
            pumpjack.base_picture.sheets[2],
            pumpjack.animations.north.layers[1],
            pumpjack.animations.north.layers[2],
        }
    }
}
entity.animation.north.layers[1] = pumpjack.base_picture.sheets[1]
entity.animation.north.layers[1].repeat_count = 40
entity.animation.north.layers[1].tint = color
entity.animation.north.layers[1].hr_version.tint = color
entity.animation.north.layers[1].hr_version.repeat_count = 40
entity.animation.north.layers[2] = pumpjack.base_picture.sheets[2]
entity.animation.north.layers[2].repeat_count = 40
entity.animation.north.layers[2].tint = color
entity.animation.north.layers[2].hr_version.tint = color
entity.animation.north.layers[2].hr_version.repeat_count = 40
entity.animation.north.layers[3].tint = color
entity.animation.north.layers[3].hr_version.tint = color
entity.animation.north.layers[4].tint = color
entity.animation.north.layers[4].hr_version.tint = color
entity.animation.east = table.deepcopy(entity.animation.north)
entity.animation.east.layers[1].x = 131*1
entity.animation.east.layers[1].hr_version.x = 261*1
entity.animation.east.layers[2].x = 110*1
entity.animation.east.layers[2].hr_version.x = 220*1
entity.animation.south = table.deepcopy(entity.animation.north)
entity.animation.south.layers[1].x = 131*2
entity.animation.south.layers[1].hr_version.x = 261*2
entity.animation.south.layers[2].x = 110*2
entity.animation.south.layers[2].hr_version.x = 220*2
entity.animation.west = table.deepcopy(entity.animation.north)
entity.animation.west.layers[1].x = 131*3
entity.animation.west.layers[1].hr_version.x = 261*3
entity.animation.west.layers[2].x = 110*3
entity.animation.west.layers[2].hr_version.x = 220*3
entity.energy_source = {
    type = "electric",
    emissions_per_minute = 1,
    usage_priority = "secondary-input",
    drain = "0W"
}
entity.energy_usage = "90kW"
entity.fluid_boxes = {
    {
        base_area = 10,
        base_level = 1,
        pipe_connections = {
            {positions = {
                {1, -2},
                {2, -1},
                {-1, 2},
                {-2, 1}
            }}
        },
        pipe_covers = pipecoverspictures(),
        production_type = "output"
    }
}
entity.working_sound = pumpjack.working_sound
data:extend{entity}
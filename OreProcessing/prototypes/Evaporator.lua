data:extend{{
    type = "item",
    name = nindycore.ore_processing.names["Evaporator"],
    icon = nindycore.ore_processing.sprites["Evaporator"].icon,
    icon_size = 512,
    order = "a",
    place_result = nindycore.ore_processing.names["Evaporator"],
    stack_size = 20,
    subgroup = nindycore.ore_processing.categories["Sub_Ore_Processing"],
}}

data:extend{{
    type = "recipe",
    name = nindycore.ore_processing.names["Evaporator"],
    enabled = true,
    energy_required = 0.01,
    ingredients = {

    },
    result = nindycore.ore_processing.names["Evaporator"],
}}

data:extend{{
    type = "assembling-machine",
    name = nindycore.ore_processing.names["Evaporator"],
    icon = nindycore.ore_processing.sprites["Evaporator"].icon,
    icon_size = 512,
    flags = {"placeable-neutral", "player-creation"},
    collision_box = {{-3.20, -3.20}, {3.20, 3.20}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    max_health = 350,
    crafting_categories = {nindycore.ore_processing.categories["Evaporator"]},
    fixed_recipe = nindycore.ore_processing.recipes["Brine"],
    crafting_speed = 1,
    dying_explosion = "big-explosion",
    corpse = "big-remnants",
    open_sound = { filename = "__base__/sound/wooden-chest-open.ogg" },
    close_sound = { filename = "__base__/sound/wooden-chest-close.ogg" },
    vehicle_impact_sound =  { filename = "__base__/sound/car-wood-impact.ogg", volume = 1.0 },
    minable = {mining_time = 0.01, result = nindycore.ore_processing.names["Evaporator"]},
    animation = {
        layers = {
            {
                filename = nindycore.ore_processing.sprites["Evaporator"].entity,
                frame_count = 8,
                size = 512,
                scale = 0.88,
                line_length = 4,
                priority = "high"
            },
            {
                filename = nindycore.ore_processing.sprites["Evaporator"].shadow,
                repeat_count = 8,
                size = 512,
                scale = 0.88,
                priority = "high",
                draw_as_shadow = true
            },
        }
    },
    energy_source = {
        emissions_per_minute = 1,
        type = "electric",
        usage_priority = "secondary-input"
    },
    energy_usage = "90kW",
    fluid_boxes = {
        {
            base_area = 10,
            base_level = -1,
            pipe_connections = {
                {type = "input", position = {0, -4}},
                {type = "input", position = {0, 4}},
            },
            pipe_covers = pipecoverspictures(),
            production_type = "input"
        },
        {
            base_area = 10,
            base_level = 1,
            pipe_connections = {
                {type = "output", position = {-4, 0}},
                {type = "output", position = {4, 0}},
            },
            pipe_covers = pipecoverspictures(),
            production_type = "output"
        }
    }
}}
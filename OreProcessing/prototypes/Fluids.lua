data:extend{{
    type = "fluid",
    name = nindycore.ore_processing.fluids["Brine"],
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "0.2KJ",
    base_color = {r = 242, g = 183, b = 127},
    flow_color = {r = 242, g = 183, b = 127},
    icons = {nindycore.core.create_tinted_fluid_icon("light", {r = 242, g = 183, b = 127})},
    order = "a[fluid]"
}}
if not nindycore.ore_processing then nindycore.ore_processing = {} end
if not nindycore.ore_processing.names then nindycore.ore_processing.names = {} end
if not nindycore.ore_processing.sprites then nindycore.ore_processing.sprites = {} end
if not nindycore.ore_processing.categories then nindycore.ore_processing.categories = {} end
if not nindycore.ore_processing.fluids then nindycore.ore_processing.fluids = {} end
if not nindycore.ore_processing.recipes then nindycore.ore_processing.recipes = {} end

require("scripts.functions")

nindycore.ore_processing.names = {
    ["Evaporator"] = nindycore.ore_processing.add_mod_tag("Evaporator")
}

nindycore.ore_processing.sprites = {
    ["Evaporator"] = {
        icon = nindycore.ore_processing.generate_sprite_path("Evaporator/evaporator_I.png"),
        entity = nindycore.ore_processing.generate_sprite_path("Evaporator/evaporator_E.png"),
        shadow = nindycore.ore_processing.generate_sprite_path("Evaporator/evaporator_S.png")
    },
}

nindycore.ore_processing.categories = {
    ["Ore_Processing"] = nindycore.ore_processing.add_mod_tag("Category-Ore-Processing"),
    ["Sub_Ore_Processing"] = nindycore.ore_processing.add_mod_tag("Category-Sub-Ore-Processing"),
    ["Evaporator"] = nindycore.ore_processing.add_mod_tag("Category-Recipe-Evaporator"),
}

nindycore.ore_processing.fluids = {
    ["Brine"] = nindycore.ore_processing.add_mod_tag("Fluid-Brine")
}

nindycore.ore_processing.recipes = {
    ["Brine"] = nindycore.ore_processing.add_mod_tag("Recipe-Brine")
}
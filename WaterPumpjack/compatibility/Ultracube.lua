if mods["Ultracube"] then
    data.raw.recipe[nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")].ingredients = {
        {type="item", name="cube-basic-matter-unit", amount=120},
        {type="item", name="cube-basic-motor-unit", amount=5},
        {type="item", name="pipe", amount=15},
        {type="item", name="cube-electronic-circuit", amount=2}
    }
    if settings.startup[nindycore.core.add_mod_tag(waterpumpID.."setting")].value then
        table.insert(data.raw["technology"]["cube-fluid-handling"].effects, {type="unlock-recipe", recipe=nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")})
    else
        data.raw.recipe[nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")].enabled = true
    end

end
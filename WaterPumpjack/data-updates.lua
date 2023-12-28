if settings.startup[nindycore.core.add_mod_tag(waterpumpID.."setting")].value then
    table.insert(data.raw["technology"]["fluid-handling"].effects, {type="unlock-recipe", recipe=nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")})
else
    data.raw.recipe[nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")].enabled = true
    data.raw.recipe[nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")].ingredients = {
        {type="item", name="iron-plate", amount=25},
        {type="item", name="electronic-circuit", amount=5},
        {type="item", name="pipe", amount=15},
        {type="item", name="iron-gear-wheel", amount=10}
    }
end
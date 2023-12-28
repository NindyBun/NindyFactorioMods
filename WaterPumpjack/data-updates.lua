if settings.startup[nindycore.core.add_mod_tag(waterpumpID.."setting")].value then
    table.insert(data.raw["technology"]["fluid-handling"].effects, {type="unlock-recipe", recipe=nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")})
else
    data.raw.recipe[nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")].enabled = true
end

require("compatibility.Ultracube")
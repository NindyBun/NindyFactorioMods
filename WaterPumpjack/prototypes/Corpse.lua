local corpse = table.deepcopy(data.raw.corpse["pumpjack-remnants"])
corpse.type = "corpse"
corpse.name = nindycore.core.add_mod_tag(waterpumpID.."corpse")
corpse.animation[1].tint = color
corpse.animation[1].hr_version.tint = color
corpse.animation[2].tint = color
corpse.animation[1].hr_version.tint = color
corpse.icons = {
    {
        icon = "__base__/graphics/icons/pumpjack.png",
        tint = color,
        icon_size = 64,
        icon_mipmaps = 4
    }
}
corpse.localised_name = {"entity-name."..nindycore.core.add_mod_tag(waterpumpID.."waterpumpjack")}
data:extend{corpse}
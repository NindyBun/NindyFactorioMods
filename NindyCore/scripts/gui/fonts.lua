nindycore.core.gui.fonts = {
    ["14"] = nindycore.core.add_mod_tag("Font-14"),
    ["16"] = nindycore.core.add_mod_tag("Font-16"),
    ["B-14"] = nindycore.core.add_mod_tag("Font-B-14"),
    ["SB-14"] = nindycore.core.add_mod_tag("Font-SB-14"),
    ["H-18"] = nindycore.core.add_mod_tag("Font-H-18"),
    ["LP-14"] = nindycore.core.add_mod_tag("Font-LP-14"),
}

-----------------------------------------------------------------------Defaults--------------------------------------------------------------------------------------------------
data:extend{
    {
        type = "font",
		name = nindycore.core.gui.fonts["14"],
		size = 14,
		from = "default"
    },
    {
        type = "font",
		name = nindycore.core.gui.fonts["16"],
		size = 16,
		from = "default"
    },
}
-----------------------------------------------------------------------Bolds--------------------------------------------------------------------------------------------------
data:extend{
    {
        type = "font",
		name = nindycore.core.gui.fonts["B-14"],
		size = 14,
		from = "default-bold"
    },
}
-----------------------------------------------------------------------SemiBolds--------------------------------------------------------------------------------------------------
data:extend{
    {
        type = "font",
		name = nindycore.core.gui.fonts["SB-14"],
		size = 14,
		from = "default-semibold"
    },
}
-----------------------------------------------------------------------Headings--------------------------------------------------------------------------------------------------
data:extend{
    {
        type = "font",
		name = nindycore.core.gui.fonts["H-18"],
		size = 18,
		from = "default-bold"
    },
}
-----------------------------------------------------------------------Local_Pick--------------------------------------------------------------------------------------------------
data:extend{
    {
        type = "font",
		name = nindycore.core.gui.fonts["LP-14"],
		size = 14,
		from = "locale-pick"
    },
}
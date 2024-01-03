data:extend{
    {
        type = "bool-setting",
        setting_type = "runtime-global",
        name = "NindyCore-Grace-Start",
        default_value = "true"
    },
    {
        type = "double-setting",
        setting_type = "runtime-global",
        name = "NindyCore-Mine-Density",
        default_value = 0.20,
        minimum_value = 0.01,
        maximum_value = 0.99
    },
    {
        type = "int-setting",
        setting_type = "runtime-global",
        name = "NindyCore-Board-Width",
        default_value = 12,
        minimum_value = 2,
        maximum_value = 2^10
    },
    {
        type = "int-setting",
        setting_type = "runtime-global",
        name = "NindyCore-Board-Height",
        default_value = 10,
        minimum_value = 2,
        maximum_value = 2^10
    },
}
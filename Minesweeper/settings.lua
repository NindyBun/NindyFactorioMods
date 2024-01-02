data:extend({
    {
        type = "int-setting",
        name = "SUB-fluid-amount",
        setting_type = "startup",
        default_value = 50,
        minimum_value = 1,
        maximum_value = 2^32
    }
})
data:extend({
    {
        type = "int-setting",
        name = "SUB-stack-size",
        setting_type = "startup",
        default_value = 10,
        minimum_value = 1,
        maximum_value = 2^16
    }
})
data:extend({
    {
        type = "string-setting",
        name = "SUB-Alternatives",
        setting_type = "startup",
        default_value = "plastic-barrel",
        allowed_values = {
            "plastic-barrel",
            "steel-recycle"
        }
    }
})
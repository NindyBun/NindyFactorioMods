--Adds a mod tag to a name for identification
function nindycore.core.add_mod_tag(name)
    if name and type(name) == "string" then
        return nindycore.core.constants.CORE_MOD_TAG .. name
    end
    return name
end
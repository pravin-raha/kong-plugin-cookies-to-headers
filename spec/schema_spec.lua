local PLUGIN_NAME = "cookies-to-headers"


-- helper function to validate data against a schema
local validate
do
    local validate_entity = require("spec.helpers").validate_plugin_config_schema
    local plugin_schema = require("kong.plugins." .. PLUGIN_NAME .. ".schema")

    function validate(data)
        return validate_entity(data, plugin_schema)
    end
end

describe(PLUGIN_NAME .. ": (schema)", function()

    it("should initialize schema correct", function()
        local ok, err = validate({
            cookie_name = "SESSION",
            header_name = "Authorization",
        })
        assert.is_nil(err)
        assert.is_truthy(ok)
    end)

end)
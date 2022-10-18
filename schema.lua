local typedefs = require "kong.db.schema.typedefs"

return {
    name = "cookies-to-headers",
    fields = {
        { consumer = typedefs.no_consumer },
        { protocols = typedefs.protocols_http },
        {
            config = {
                type = "record",
                fields = {
                    { cookie_name = { type = "string", default = "SESSION", required = false }, },
                    { header_name = { type = "string", default = "Authorization", required = false }, },
                },
            }
        },
    },
}
local schema = require('../schema')

describe("TestSchema", function()
    it("should initialize schema correctly", function()
        assert.is_true(schema.no_consumer)
        assert.equal("string", schema.fields.cookie_name.type)
        assert.equal(false, schema.fields.cookie_name.required)
        assert.equal("SESSION", schema.fields.cookie_name.default)
        assert.not_equal("INVALID_SESSION", schema.fields.cookie_name.default)
        assert.equal("Authorization", schema.fields.header_name.default)
        assert.is_not.equal("INVALID_Authorization", schema.fields.header_name.default)
    end)

end)
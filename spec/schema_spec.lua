local schema = require('../schema')

describe("TestSchema", function()
    it("should initialize schema correctly", function()
      assert.is_true(schema.no_consumer)
      assert.equal("string", schema.fields.cookie_name.type)
      assert.equal(false, schema.fields.cookie_name.required)
      assert.equal("SESSION", schema.fields.cookie_name.default)
    end)

end)

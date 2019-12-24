-- local mock_req_headers =  { ['Set-Cookie'] = "oauthtoken=13ca678d2aa8454599678e792266ea96; path=/" }
-- local mock_body = '{ "data": "payload_data" }'
-- local mock_ngx_headers = { ['Set-Cookie'] = "oauthtoken=13ca678d2aa8454599678e792266ea96; path=/" }
-- local mock_query_args = "query_args"
-- local mock_resp_headers = {["Set-Cookie"] = "oauthtoken=13ca678d2aa8454599678e792266ea96; path=/;", }
-- local mock_router_matches = { group_one = "test_match" }

-- local ngx =  {     
--     log    = function() end,
--     config = {
--         subsystem = "http",
--     },
--     header =  {
        
--     },
--     arg    = {},
--     ctx    = {
--         buffer = "",
--     },
--     req = {
--         get_headers  =  {["Set-Cookie"] = "oauthtoken=13ca678d2aa8454599678e792266ea96; Path=/;",},
--         set_header =  {["Set-Cookie"] = "oauthtoken=13ca678d2aa8454599678e792266ea96; Path=/;",},
--     },
--     resp = {
--         get_headers  =  {["Set-Cookie"] = "oauthtoken=13ca678d2aa8454599678e792266ea96; Path=/;",},
--     },
--     var = {
--         _cookie  = "13ca678d2aa8454599678e792266ea96",
--     }
-- }

-- ngx.header["Set-Cookie"] = "oauthtoken=13ca678d2aa8454599678e792266ea96; Path=/;"

-- _G.ngx = ngx

-- local CookieToHeaders = require('../handler')

-- local inspect = require('inspect')

-- -- describe("Test TemplateTransformerHandler constructor", function()
-- --     it("should set object name correctly", function()
-- --       CookieToHeaders:new()
-- --       assert.equal("cookies-to-headers", CookieToHeaders._name)
-- --     end)
-- -- end)

-- describe("Test TemplateTransformerHandler header_filter", function()
--     it("should not unset content-length header when there is no templates", function()
--         CookieToHeaders:new()
--         local mock_config = { 
--             cookie_name = "oauthtoken"
--         }
--         local cookie = require "resty.cookie"

--         local ck = cookie:new()
        
--         -- local ok, err = ck:set({ key = "ckey", 
--         -- value = "cvalue" })

--         -- print(ok)
--         local oauthToken, err = ck:get('oauthtoken')
--         if not oauthToken then
--             print(err)
--         else
--             print (oauthToken)
--         end
       
--         CookieToHeaders:access(mock_config)
--         -- assert.not_nil(ngx.resp)
--         -- print ( inspect (ngx))
--         print ( inspect (_G.ngx))
--         -- assert.equal(mock_resp_headers["Set-Cookie"], "123")
--         -- assert.not_nil(ngx.)
--     end)
-- end)
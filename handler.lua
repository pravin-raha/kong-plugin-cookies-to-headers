local CookieToHeaders = require("kong.plugins.base_plugin"):extend()

function CookieToHeaders:new()
    CookieToHeaders.super.new(self, "cookies-to-headers")
end

function CookieToHeaders:access(plugin_conf)
    CookieToHeaders.super.access(self)
    local cookie = require "resty.cookie"

    local ck = cookie:new()
    local oauthToken, err = ck:get(plugin_conf.cookie_name)

    if not oauthToken then
        ngx.log(ngx.ERR, err)
    else
        ngx.req.set_header("Authorization", "Bearer " .. oauthToken)
    end
end

CookieToHeaders.PRIORITY = 1010

return CookieToHeaders

local CookieToHeaders = require("kong.plugins.base_plugin"):extend()

function CookieToHeaders:new()
    CookieToHeaders.super.new(self, "cookies-to-headers")
end

function CookieToHeaders:access(plugin_conf)
    CookieToHeaders.super.access(self)
    local cookie = require "resty.cookie"

    local ck = cookie:new()
    local cookieValue, err = ck:get(plugin_conf.cookie_name)

    if not cookieValue then
        ngx.log(ngx.ERR, err)
    else
        if string.lower(plugin_conf.header_name) == "authorization" then
            ngx.req.set_header("Authorization", "Bearer " .. cookieValue)
        else
            ngx.req.set_header(plugin_conf.header_name, cookieValue)
        end
    end
end

CookieToHeaders.PRIORITY = 1010

return CookieToHeaders

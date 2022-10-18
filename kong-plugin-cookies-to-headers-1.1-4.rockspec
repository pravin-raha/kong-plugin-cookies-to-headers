package = "kong-plugin-cookies-to-headers"
version = "1.1-4"
local pluginName = "cookies-to-headers"
source = {
  url = "git://github.com/pravin-raha/kong-plugin-cookies-to-headers",
  tag = "v1.1-4"
}
description = {
  summary = "A Kong plugin that will convert cookies into headers",
  license = "Apache 2.0"
}
dependencies = {
  "lua ~> 5.1",
  "lua-resty-cookie ~> 0.1.0"
}
build = {
  type = "builtin",
  modules = {
    ["kong.plugins.cookies-to-headers.handler"] = "handler.lua",
    ["kong.plugins.cookies-to-headers.schema"]  = "schema.lua"
  }
}

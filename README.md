# kong-plugin-cookies-to-headers
A Kong plugin that will add Authorization header from cookie.

## How it works

When enabled, this plugin will add new headers to requests based on set cookie. For example, if the cookie value is set like this

```
name=value
oauthtoken=13ca678d2aa8454599678e792266ea96
```

then the following headers would be added

```
Authorization   : Bearer 13ca678d2aa8454599678e792266ea96
```

## Configuration

Configuring the plugin is straightforward, you can add it on top of an API by executing the following request on your Kong server:

```bash
curl -X POST http://localhost:8001/apis/{api_id}/plugins \
--data "name=cookies-to-headers" \
--data "config.cookie_name=cookieName"
```
form parameter|required|description
---|---|---
`name`|*required*|The name of the plugin to use, in this case: `cookies-to-headers`
`cookie_name`|*optional*|The name of the cookie which you want to convert into Authorization header
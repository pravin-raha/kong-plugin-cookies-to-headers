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

## Install

Install luarocks and run the following command

```
luarocks install kong-plugin-cookies-to-headers
```

## Configuration

Configuring the plugin is straightforward, you can add it on top of an API by executing the following request on your Kong server:

```bash
curl -X POST http://localhost:8001/apis/{api_id}/plugins \
--data "name=cookies-to-headers" \
--data "config.cookie_name=cookieName"
```
|Form Parameter | Required   | Description                                                                  |
|---------------|------------|------------------------------------------------------------------------------|
| `name`        | *required* |The name of the plugin to use, in this case: `cookies-to-headers`             |
| `cookie_name` | *optional* |The name of the cookie which you want to convert into Authorization header    |


## License

Copyright 2017 Pravin Rahangdale

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

   http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
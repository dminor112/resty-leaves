--
-- Created by IntelliJ IDEA.
-- User: wenlinli
-- Date: 2015/11/20
-- Time: 15:48
-- To change this template use File | Settings | File Templates.
--

local redis = require "redis.lredis"
local red = redis:new()
local json = require "json"
local result = json.decode([[ {"key:"value"} ]])
local ok, err = red:set("dog", "an animal")
if not ok then
    ngx.say("failed to set dog: ", err)
    return
end

ngx.say("set result: ", result)


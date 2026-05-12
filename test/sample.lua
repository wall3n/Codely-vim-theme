-- single-line comment
--[[
  block comment
  @param name string
]]

local M = {}

local MAX_RETRIES = 3          -- constant
local greeting    = "hello"    -- string
local count       = 42         -- number
local ratio       = 3.14       -- float
local is_ready    = true       -- boolean
local nothing     = nil        -- nil builtin

--- Returns a greeter function for `name`.
---@param name string
---@return function
local function make_greeter(name)
  return function()
    return string.format("%s, %s!", greeting, name)
  end
end

M.greet = make_greeter("world")

-- Table / field / property
local config = {
  retries  = MAX_RETRIES,
  verbose  = false,
  callback = M.greet,
}

-- Control flow
for i = 1, config.retries do
  if i % 2 == 0 then
    io.write(tostring(i) .. "\n")
  elseif i == config.retries then
    error("max retries reached")
  else
    coroutine.yield()
  end
end

-- Class-like pattern with metatables
local Animal = {}
Animal.__index = Animal

---@param name string
---@param sound string
function Animal.new(name, sound)
  return setmetatable({ name = name, sound = sound }, Animal)
end

function Animal:speak()
  return string.format("%s says %s", self.name, self.sound)
end

local cat = Animal.new("Cat", "meow")
print(cat:speak())

-- Operator mix
local result = (count * 2 + 1) / ratio
local flag   = is_ready and not (result > 100)

-- String escape
local escaped = "line1\nline2\ttabbed"
local raw     = [[no \n escaping here]]

return M

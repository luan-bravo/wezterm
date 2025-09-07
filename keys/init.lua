local k = {}

local modules = {
    "vim",
    "keys",
    -- "key_tables",
}

for _, m in ipairs(modules) do
    local mod = require("keys." .. m)
    table.move(mod, 1, #mod, #k + 1, k) -- Fuse table mod's items with table keys
end

return k

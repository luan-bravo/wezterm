local wt = require("wezterm")
local k = {}


function ApplyKeys(mod, keys)
    for _, key in ipairs(mod) do
        table.insert(keys, key)
    end
end

ApplyKeys(require("keys.vim"), k)
ApplyKeys(require("keys.keys"), k)

return k

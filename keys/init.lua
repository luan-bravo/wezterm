local k = { }
--
local key_modules = {
	"vim",
	"keys",
	-- "key_tables",
}

--- Join keys modules' arrays
for _, m in ipairs(key_modules)do
	local kmod_ok, kmod = pcall(require, "keys."..m)
	if not kmod_ok then
		WT.log_error("[wezconf] error: failed to find keys module "..m)
	else
		PushArray(kmod, k)
	end
end
return k

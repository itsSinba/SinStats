--Phanx localization code @ phanx.net

local AddName, AddonTable = ...
AddonTable.locale = GetLocale()
local L = setmetatable({}, { __index = function(t, k)
	local v = tostring(k)
	rawset(t, k, v)
	return v
end })

AddonTable.L = L
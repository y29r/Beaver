--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local LiraSymbol = currencyUnicodes.Lira

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the lira sign (₤).
	If the provided value is negative, the minus sign appears before the lira sign.
	e.g.
	```luau
	local a = Lira(1000)
	print(a) --> "₤1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(LiraSymbol, value)
end
--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local RupeeSymbol = currencyUnicodes.Rupee

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the rupee sign (₹).
	If the provided value is negative, the minus sign appears before the rupee sign.
	e.g.
	```luau
	local a = Rupee(1000)
	print(a) --> "₹1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(RupeeSymbol, value)
end
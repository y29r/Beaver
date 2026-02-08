--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local ShekelSymbol = currencyUnicodes.Shekel

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the shekel sign (₪).
	If the provided value is negative, the minus sign appears before the shekel sign.
	e.g.
	```luau
	local a = Shekel(1000)
	print(a) --> "₪1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(ShekelSymbol, value)
end

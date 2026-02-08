--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local GenericCurrencySymbol = currencyUnicodes.GenericCurrency

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the generic currency sign (𝐄).
	If the provided value is negative, the minus sign appears before the generic currency sign.
	e.g.
	```luau
	local a = GenericCurrency(1000)
	print(a) --> "𝐄1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(GenericCurrencySymbol, value)
end
--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local PoundSymbol = currencyUnicodes.Pound

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the pound sign (£).
	If the provided value is negative, the minus sign appears before the pound sign.
	e.g.
	```luau
	local a = Pound(1000)
	print(a) --> "£1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(PoundSymbol, value)
end
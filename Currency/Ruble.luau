--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local RubleSymbol = currencyUnicodes.Ruble

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the ruble sign (₽).
	If the provided value is negative, the minus sign appears before the ruble sign.
	e.g.
	```luau
	local a = Ruble(1000)
	print(a) --> "₽1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(RubleSymbol, value)
end
--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local DollarSymbol = currencyUnicodes.Dollar

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the dollar sign ($).
	If the provided value is negative, the minus sign appears before the dollar sign.
	e.g.
	```luau
	local a = Dollar(1000)
	print(a) --> "$1000"

	local b = Dollar(-500)
	print(b) --> "-$500"

	local c = Dollar("2500")
	print(c) --> "$2500"

	local d = Dollar(12.34)
	print(d) --> "$12.34"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(DollarSymbol, value)
end
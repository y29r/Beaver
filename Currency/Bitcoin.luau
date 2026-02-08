--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local BitcoinSymbol = currencyUnicodes.Bitcoin

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the bitcoin sign (₿).
	If the provided value is negative, the minus sign appears before the bitcoin sign.
	e.g.
	```luau
	local a = Bitcoin(1000)
	print(a) --> "₿1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(BitcoinSymbol, value)
end
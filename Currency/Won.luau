--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local WonSymbol = currencyUnicodes.Won

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the won sign (₩).
	If the provided value is negative, the minus sign appears before the won sign.
	e.g.
	```luau
	local a = Won(1000)
	print(a) --> "₩1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(WonSymbol, value)
end
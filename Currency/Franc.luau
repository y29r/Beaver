--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local FrancSymbol = currencyUnicodes.Franc

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the franc sign (₣).
	If the provided value is negative, the minus sign appears before the franc sign.
	e.g.
	```luau
	local a = Franc(1000)
	print(a) --> "₣1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(FrancSymbol, value)
end
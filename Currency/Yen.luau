--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local YenSymbol = currencyUnicodes.Yen

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the yen sign (¥).
	If the provided value is negative, the minus sign appears before the yen sign.
	e.g.
	```luau
	local a = Yen(1000)
	print(a) --> "¥1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(YenSymbol, value)
end
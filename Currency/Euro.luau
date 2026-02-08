--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local EuroSymbol = currencyUnicodes.Euro

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the euro sign (€).
	If the provided value is negative, the minus sign appears before the euro sign.
	e.g.
	```luau
	local a = Euro(1000)
	print(a) --> "€1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(EuroSymbol, value)
end
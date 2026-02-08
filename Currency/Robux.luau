--!strict

local currencyUnicodes = require("./currencyUnicodes")
local currencyFormatter = require("./currencyFormatter")

local RobuxSymbol = currencyUnicodes.Robux

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the Robux sign (Ⓡ).
	If the provided value is negative, the minus sign appears before the Robux sign.
	e.g.
	```luau
	local a = Robux(1000)
	print(a) --> "Ⓡ1000"
	```

]]
return @native function(value: number | string) : string
	return currencyFormatter(RobuxSymbol, value)
end
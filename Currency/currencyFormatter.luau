--!strict

--[[
	
	@param currencySymbol : string
	@param value : number | string
	@return string -- The prefixed string values

	Refactors the input values by prefixing them with the provided currency symbol.
	e.g.
	```luau
	local a = CurrencyFormatter("€", 1000)
	print(a) --> "€1000"
	```

]]
return @native function(currencySymbol: string, value: number | string) : ...string
	local isNegative: boolean = type(value) == "number" and value < 0 or string.sub(tostring(value), 1, 1) == "-"

	return string.format(
		"%s%s%s",
		isNegative and "-" or "",
		currencySymbol,
		isNegative and string.sub(tostring(value), 2) or tostring(value)
	)
end
--!strict

--[[

	@param value : number | string
	@return string

	Given a numerical value (as a number or string) between 0 - 1,
	a new value will be returned as a percentage (0.00% - 100.00%)

	e.g.
	```luau
	local a = RangeToPercent(0.2615)
	print(a) --> 26.15%
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber = tonumber(value) or 0

	return `{math.floor(valueAsANumber * 10000) / 100}%`
end
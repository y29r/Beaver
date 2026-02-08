--!strict

--[[

	@param ...number | string
	@return ...string

	Combines any number of translator functions into a single translator function.
	The returned translator function, when called with a value, will pass that value through each of the provided translator functions in sequence.
	e.g.
	```luau
	local S = require("Beaver/Time/S")
	local M = require("Beaver/Time/M")

	local MS = combine(M, S)
	local a = MS(90)
	print(a) --> "01:30"
	```

]]
return @native function(...: (value: any) -> ...any) : (value: any) -> ...any
	local args: {(value: any) -> ...any} = {...}
	return @native function(value: any) : ...any
		local currentValue = value
		
		for index: number, arg: (value: any) -> ...any in args do
			currentValue = arg(currentValue)
		end

		return currentValue
	end
end
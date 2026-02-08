--!strict

--[[
	
	@param value number | string
	@return string

	Formats the given number in scientific notation.
	e.g.
	```luau
	local a = ScientificNotation(123456)
	print(a) --> "1.234560e+05"
	```
	
]]
return @native function(value: number | string) : string
	return string.format("%e", tonumber(value) or 0)
end
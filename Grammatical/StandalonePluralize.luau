--!strict

--[[
	
	@param value : number | string
	@return string

	Mainly used internally to get the plural "s" suffix.
	Returns "s" if the provided value is not 1, otherwise returns an empty string.
	e.g.
	```luau
	local a = StandalonePluralize(3)
	print(a) --> "s"
	```

]]
return @native function(value: number | string) : string
	local valueAsAString: string = tostring(value)

	local _: number?, _: number?, integer: string?, fraction: string? = string.find(valueAsAString, "(%d+)([.]?%d*)")
	
	return (integer == "1" and (fraction and string.find(fraction, "^%.0*$")) or fraction == "") and "" or "s"
end
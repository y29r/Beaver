--!strict

--[[

	@param value : any
	@return string

	Converts the input value to its hexadecimal representation.
	e.g.
	```luau
	local a = Hexadecimal(255)
	print(a) --> "FF"
	```

]]
return @native function(value: any) : string
	return string.format("%X", tonumber(value) or 0)
end
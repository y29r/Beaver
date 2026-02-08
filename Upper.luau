--!strict

--[[

	@param value : any
	@return string

	Converts the input value to uppercase.
	e.g.
	```luau
	local a = Upper("hello")
	print(a) --> "HELLO"
	```

]]
return @native function(value: any) : string
	return string.upper(tostring(value))
end
--!strict

--[[

	@param value : any
	@return string

	Converts the input value to lowercase.
	e.g.
	```luau
	local a = Lower("HELLO")
	print(a) --> "hello"
	```
	
]]
return @native function(value: any) : string
	return string.lower(tostring(value))
end
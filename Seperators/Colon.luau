--!strict

--[[

	@param ...number | string
	@return ...string

	Concatenates the provided string values with colons (":") in between.
	e.g.
	```luau
	local a, b, c = colonFormatter("12", "30", "45")
	print(a, b, c) --> "12:30:45"
	```
	
]]
return @native function(...: string) : ...string
	return table.concat({...}, ":")
end
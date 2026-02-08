--!strict

--[[
	
	@param ...any
	@return ...any
	
	Doesn't transform the input in any way; simply returns it as-is.
	e.g.
	```luau
	local a, b, c = None(1000, "hello", -34567.89)
	print(a, b, c) --> 1000 "hello" -34567.89
	```

]]
return @native function(...: any) : ...any
	return ...
end
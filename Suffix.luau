--!strict

--[[
	
	@param suffix : string
	@param value : any
	@return string
	
	Adds the specified suffix string to the end of the value when formatting.
	e.g.
	```luau
	local a = Colon(" apples", 25)
	print(a) --> "25 apples"
	```

]]
return @native function(suffix: string, value: any) : string
	return string.format("%*%*", value, suffix)
end
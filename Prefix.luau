--!strict

--[[
	
	@param prefix : string
	@param value : any
	@return string
	
	Adds the specified prefix string to the beginning of the value when formatting.
	e.g.
	```luau
	local a = Colon("/" "command")
	print(a) --> "/command"
	```

]]
return @native function(prefix: string, value: any) : string
	return string.format("%*%*", prefix, value)
end
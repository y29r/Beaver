--!strict

--[[

	@param value number | string
	@return string

	Converts the provided numeric or string value (representing seconds) into "WW" (weeks only).
	e.g.
	```luau
	local a = W(604800)
	print(a) --> "01"
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local weeks: number = math.floor(valueAsANumber / 604800)
	
	return string.format("%02d", weeks)
end
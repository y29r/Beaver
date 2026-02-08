--!strict

--[[

	@param value number | string
	@return string

	Converts the provided numeric or string value (representing seconds) into "MM" (minutes only).
	e.g.
	```luau
	local a = M(60)
	print(a) --> "01"
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local minutes: number = math.floor((valueAsANumber % 3600) / 60)
	
	return string.format("%02d", minutes)
end
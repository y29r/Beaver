--!strict

--[[

	@param value number | string
	@return string

	Converts the provided numeric or string value (representing seconds) into "SS" (seconds only).
	e.g.
	```luau
	local a = S(1)
	print(a) --> "01"
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local seconds: number = valueAsANumber % 60
		
	return string.format("%02d", seconds)
end

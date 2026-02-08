--!strict

--[[

	@param value number | string
	@return string

	Converts the provided numeric or string value (representing seconds) into "HH" (hours only).
	e.g.
	```luau
	local a = H(3600)
	print(a) --> "01"
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local hours: number = math.floor(valueAsANumber / 3600)
	
	return string.format("%02d", hours)
end
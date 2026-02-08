--!strict

--[[

	@param value number | string
	@return string

	Converts the provided numeric or string value (representing seconds) into "MM" (months only).
	e.g.
	```luau
	local a = MM(2592000)
	print(a) --> "01"
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local months: number = math.floor(valueAsANumber / 2592000)
	
	return string.format("%02d", months)
end
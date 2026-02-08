--!strict

--[[

	@param value number | string
	@return string

	Converts the provided numeric or string value (representing seconds) into "DD" (days only).
	e.g.
	```luau
	local a = D(86400)
	print(a) --> "01"
	```

]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local days: number = math.floor(valueAsANumber / 86400)
	
	return string.format("%02d", days)
end
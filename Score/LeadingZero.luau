--!strict

--[[
	
	@param zeros: number
	@param value number | string
	@return string
	
	adds leading zeros to the provided numeric or string value,
	so that each value has at least the specified number of digits.
	e.g.
	```luau
	local zeros = 5
	local a = LeadingZero(zeros, 7)
	print(a) --> "00007"
	```

]]
return @native function(zeros: number, value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	
	return string.format(`%0{zeros}d`, valueAsANumber)
end
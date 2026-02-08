--!strict

local TrailSuffixNotation = require("./TrailSuffixNotation")

--[[
	
	@param value number | string
	@return string
	
	Formats the provided numeric or string value using suffix notation up to one decimal place.
	e.g.
	```luau
	local a = SuffixNotation(-34567.89)
	print(a) --> "-34.6K"
	```
	
]]
return @native function(value: number | string) : string
	return TrailSuffixNotation(1, value)
end
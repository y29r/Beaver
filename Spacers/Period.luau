--!strict

local spacerFormatter = require("./spacerFormatter")

--[[
	
	@param value number | string
	@return string
	
	Adds period spacers to the provided numeric or string values.

	e.g.
	```luau
	local c = Period(-34567.89)
	print(c) --> "-34.567.89"
	```
	
]]
return @native function(value: number | string) : string
	return spacerFormatter(".", value)
end
--!strict

local spacerFormatter = require("./spacerFormatter")

--[[
	
	@param value number | string
	@return string
	
	Adds underscore spacers to the provided numeric or string values.

	e.g.
	```luau
	local c = Underscore(-34567.89)
	print(c) --> "-34_567.89"
	```
	
]]
return @native function(value: number | string) : string
	return spacerFormatter("_", value)
end
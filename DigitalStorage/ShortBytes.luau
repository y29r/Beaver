--!strict

local Bytes = require("./Bytes")

local units: {string} = {"B", "KB", "MB", "GB", "TB", "PB", "EB", "ZB", "YB"}

--[[
	
	@param value : any
	@return string
	
	Returns the input value formatted in short digital storage units.
	e.g.
	```luau
	local a = ShortBytes(1536)
	print(a) --> "1.50 KB"
	```

]]
return @native function(value: number | string) : string
	return Bytes(units, 2, value)
end
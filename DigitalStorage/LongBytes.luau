--!strict

local Bytes = require("./Bytes")
local StandalonePluralize = require("../Grammatical/StandalonePluralize")

local units: {string} = {"Byte", "Kilobyte", "Megabyte", "Gigabyte", "Terabyte", "Petabyte", "Exabyte", "Zettabyte", "Yottabyte"}

--[[
	
	@param value : any
	@return string

	Returns the input value formatted in long digital storage units.
	e.g.
	```luau
	local a = LongBytes(2, 1536)
	print(a) --> "1.50 Kilobytes"
	```

]]
return @native function(value: number | string) : string
	return StandalonePluralize(Bytes(units, 2, value))
end
--!strict

local Minutes = require("./Minutes")
local Hours = require("./Hours")
local Colon = require("../Seperators/Colon")

--[[

	@param value number | string
	@return string

	Formats the input value in hours and minutes format (HH:MM).
	e.g.
	```luau
	local a = HM(3662)
	print(a) --> "01:01"
	```

]]
return @native function(value: number | string) : string
	return Colon(
		Hours(value),
		Minutes(value)
	)
end
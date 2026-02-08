--!strict

local Seconds = require("./Seconds")
local Minutes = require("./Minutes")
local Hours = require("./Hours")
local Colon = require("../Seperators/Colon")

--[[

	@param value number | string
	@return string

	Formats the input value in hours, minutes, and seconds format (HH:MM:SS).
	e.g.
	```luau
	local a = HMS(3662)
	print(a) --> "01:01:02"
	```

]]
return @native function(value: number | string) : string
	return Colon(
		Hours(value),
		Minutes(value),
		Seconds(value)
	)
end
--!strict

local Seconds = require("./Seconds")
local Minutes = require("./Minutes")
local Colon = require("../Seperators/Colon")

--[[

	@param value number | string
	@return string

	Formats the input value in minutes and seconds format (MM:SS).
	e.g.
	```luau
	local a = MS(90)
	print(a) --> "01:30"
	```

]]
return @native function(value: number | string) : string
	return Colon(
		Minutes(value),
		Seconds(value)
	)
end
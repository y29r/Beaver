--!strict

local Seconds = require("./Seconds")
local Minutes = require("./Minutes")
local Hours = require("./Hours")
local Days = require("./Days")
local Colon = require("../Seperators/Colon")

--[[

	@param value number | string
	@return string

	Formats the input value in days, hours, minutes, and seconds format (DD:HH:MM:SS).
	e.g.
	```luau
	local a = DHMS(87291)
	print(a) --> "01:00:01:31"
	```

]]
return @native function(value: number | string) : string
	return Colon(
		Days(value),
		Hours(value),
		Minutes(value),
		Seconds(value)
	)
end
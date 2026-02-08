--!strict

local None = require("../None")
local MinutesSeconds = require("./MinutesSeconds")
local HoursMinutesSeconds = require("./HoursMinutesSeconds")
local DaysHoursMinutesSeconds = require("./DaysHoursMinutesSeconds")

local highest = require("../highest")

local adaptiveDHMS: (any) -> (...any) = highest({
	[0] = None,
	[60] = MinutesSeconds,
	[3600] = HoursMinutesSeconds,
	[86400] = DaysHoursMinutesSeconds,
})

--[[

	@param value number | string
	@return string

	Formats the input value in days, hours, minutes, and seconds format (DD:HH:MM:SS).
	If each unit is not needed, it will adaptively format to the highest necessary unit.
	e.g.
	```luau
	local a = DHMS(87291)
	print(a) --> "01:00:01:31"

	local b = DHMS(3662)
	print(b) --> "01:01:02"
	```

]]
return @native function(value: number | string) : string
	return adaptiveDHMS(value)
end
--!strict

local indexToUnitMap = {
	[1] = "month",
	[2] = "week",
	[3] = "day",
	[4] = "hour",
	[5] = "minute",
	[6] = "second",
}

local indexToPluralA = {
	[1] = "a",
	[2] = "a",
	[3] = "a",
	[4] = "an",
	[5] = "a",
	[6] = "a",
}

--[[

	@param value number | string
	@param centreTimePoint (number | string)?
	@return string

	Converts a duration in seconds into a human-readable format using the largest appropriate unit (months, weeks, days, hours, minutes, or seconds).
	An optional centre time point can be provided to determine if the duration is in the past or future.

	Centre time point usage:
	- If the centre time point is less than the value, the output indicates a past duration (e.g., "5 minutes ago").
	- If the centre time point is greater than the value, the output indicates a future duration (e.g., "in 2 hours").

	This is particularly useful for displaying time differences relative to a specific moment.
	This usually takes in epoch timestamps to show how much time has passed since or until that timestamp.
	But it can also take in raw durations to show how much time is left until or has passed since that duration.

	e.g.
	```luau
	local a = TimeElapsed(10000000, 20000000)
	print(a) --> "in 3 months"

	local b = TimeElapsed(5000, 2000)
	print(b) --> "1 hour ago"
	```
	
]]
return @native function(value: number | string, centreTimePoint: (number | string)?) : string
	local valueAsANumber: number = tonumber(value) or 0
	local centreTimePointAsANumber: number = tonumber(centreTimePoint) or 0
	
	local formattedValue: string = ""

	local unitMap: {number} = {
		math.floor(valueAsANumber / 2592000),
		math.floor((valueAsANumber % 2592000) / 604800),
		math.floor((valueAsANumber % 604800) / 86400),
		math.floor((valueAsANumber % 86400) / 3600),
		math.floor((valueAsANumber % 3600) / 60),
		valueAsANumber % 60,
	}

	for index: number, amount: number in unitMap do
		if amount == 1 then
			formattedValue ..= indexToPluralA[index] .. " " .. indexToUnitMap[index]
			break
		elseif amount > 0 then
			formattedValue ..= tostring(amount) .. " " .. indexToUnitMap[index] .. (amount > 1 and "s" or "")
			break
		end
	end

	if formattedValue == "" then
		formattedValue = "now"
	else
		local differenceAmount: number = centreTimePointAsANumber - valueAsANumber
		if differenceAmount < 0 then
			formattedValue ..= " ago"
		else
			formattedValue = "in " .. formattedValue
		end
	end

	return formattedValue
end
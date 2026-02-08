--!strict

--[[

	@param value number | string
	@param centreTimePoint number | string
	@return string

	Converts a duration in seconds into a human-readable format using the largest appropriate unit (months, weeks, days, hours, minutes, or seconds).
	Takes in a centre time point to determine if the duration is in the past or future.

	This is particularly useful for displaying time differences relative to a specific moment.
	This usually takes in epoch timestamps to show how much time has passed since or until that timestamp.
	But it can also take in raw durations to show how much time is left until or has passed since that duration.

	e.g.
	```luau
	local a = LongDurationDifference(10000000, 20000000)
	print(a) --> "in 3 months"
	```
	
]]
return @native function(value: number | string, centreTimePoint: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	local centreTimePointAsANumber: number = tonumber(centreTimePoint) or 0
	
	local months: number = math.floor(valueAsANumber / 2592000)
	local weeks: number = math.floor((valueAsANumber % 2592000) / 604800)
	local days: number = math.floor((valueAsANumber % 604800) / 86400)
	local hours: number = math.floor((valueAsANumber % 86400) / 3600)
	local minutes: number = math.floor((valueAsANumber % 3600) / 60)
	local seconds: number = valueAsANumber % 60
	
	local unitMap: {{prefix: string, amount: number}} = {
		{ prefix = "month", amount = months },
		{ prefix = "week", amount = weeks },
		{ prefix = "day", amount = days },
		{ prefix = "hour", amount = hours },
		{ prefix = "minute", amount = minutes },
		{ prefix = "second", amount = seconds },
	}

	local formattedValue: string = ""

	for index: number, map: {prefix: string, amount: number} in unitMap do
		if map.amount > 0 then
			formattedValue ..= tostring(map.amount) .. " " .. map.prefix .. (map.amount > 1 and "s" or "") .. (index < #unitMap and " " or "")
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
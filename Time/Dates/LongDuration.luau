--!strict

--[[

	@param value number | string
	@return string

	Converts a duration in seconds into a human-readable format using months, weeks, days, hours, minutes, and seconds.
	e.g.
	```luau
	local a = LongDuration(10000000)
	print(a) --> "3 Months 3 Weeks 4 Days 13 Hours 46 Minutes 40 Seconds"
	```
	
]]
return @native function(value: number | string) : string
	local valueAsANumber: number = tonumber(value) or 0
	
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

	return formattedValue
end
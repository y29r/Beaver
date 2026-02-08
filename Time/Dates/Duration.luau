--!strict

--[[

	@param value number | string
	@return string

	Converts a duration in seconds into a human-readable format using months (mo), weeks (w), days (d), hours (h), minutes (m), and seconds (s).
	e.g.
	```luau
	local a = Duration(10000000)
	print(a) --> "3mo 3w 4d 13h 46m 40s"
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
		{ prefix = "mo", amount = months },
		{ prefix = "w", amount = weeks },
		{ prefix = "d", amount = days },
		{ prefix = "h", amount = hours },
		{ prefix = "m", amount = minutes },
		{ prefix = "s", amount = seconds },
	}

	local formattedValue: string = ""

	for index: number, map: {prefix: string, amount: number} in unitMap do
		if map.amount > 0 then
			formattedValue ..= tostring(map.amount) .. map.prefix .. (index < #unitMap and " " or "")
		end
	end

	return formattedValue
end
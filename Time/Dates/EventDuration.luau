--!strict

--[[

	@param targetTime DateTime
	@return string
	
]]
return @native function(targetTime: DateTime): string
	local currentTime: DateTime = DateTime.now()
	local timeDifference: number = targetTime.UnixTimestamp - currentTime.UnixTimestamp
	
	local days: number = math.floor(timeDifference / 86400)
	local hours: number = math.floor((timeDifference % 86400) / 3600)
	local minutes: number = math.floor((timeDifference % 3600) / 60)
	
	if days > 0 then
		return string.format("%d DAYS", days)
	elseif hours > 0 then
		return string.format("%d HOURS", hours)
	else
		return string.format("%d MINUTES", minutes)
	end
end
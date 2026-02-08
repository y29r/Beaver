--!strict

--[[

	@param targetTime {Year: number?, Month: number?, Day: number?, Hour: number?, Minute: number?, Second: number?, Milisecond: number?}
	@return DateTime
	
]]
return @native function(targetTime: {Year: number?, Month: number?, Day: number?, Hour: number?, Minute: number?, Second: number?, Millisecond: number?}): DateTime
	return DateTime.fromUniversalTime(
		targetTime.Year,
		targetTime.Month,
		targetTime.Day,
		targetTime.Hour,
		targetTime.Minute,
		targetTime.Second
	)
end
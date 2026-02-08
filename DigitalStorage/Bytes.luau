--!strict

local scale: number = 1024

--[[
	
	@param units : {string}
	@param decimals : number
	@param value : any
	@return string
	
	Used internally to format digital storage values.
	But is acceptable for external use as well.

	Returns a formatted string representing the provided value in digital storage units.
	e.g.
	```luau
	local a = Bytes({"Byte", "Kilobyte", "Megabyte"}, 2, 1536)
	print(a) --> "1.50 Kilobytes"
	```

]]
return @native function(units: {string}, decimals: number, value: number | string) : string
	local valueAsANumber = tonumber(value) or 0

	if valueAsANumber <= 0 then
		return "0 Bytes"
	end
	
	local decimal: number = decimals < 0 and 0 or decimals
	local index: number = math.floor(math.log(valueAsANumber) / math.log(scale))

	return string.format("%." .. decimal .. "f %s", valueAsANumber / math.pow(scale, index), units[index + 1])
end
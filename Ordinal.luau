--!strict

local ordinalMap: {[number]: string} = {
	[1] = "st",
	[2] = "nd",
	[3] = "rd",
}

local function getOrdinalSuffix(integer: number): string
	local mod100: number = integer % 100
	if mod100 >= 11 and mod100 <= 13 then
		return "th"
	end

	return ordinalMap[integer % 10] or "th"
end

local ordinalMatchPattern: string = "(-?%d+%.?%d*)(%a*)"

local function matchFunction(value: string, trailing: string?) : string
	-- If a trailing ordinal already exists, return the value with the trailing part.
	if trailing and trailing ~= "" then
		return value .. trailing
	end

	-- If the value is not numeric, return it as is.
	local numericValue = tonumber(value)
	if not numericValue then
		return value
	end

	local sign: string = numericValue < 0 and "-" or ""
	local absolute: number = math.abs(numericValue)
	local integer: number = math.floor(absolute)
	local fractional: number = absolute - integer

	local suffix: string = getOrdinalSuffix(integer)
	local display: string = (fractional == 0) and tostring(integer) or tostring(numericValue)
	
	return sign .. display .. suffix
end

--[[

	@param value : number | string
	@return string

	Accepts a number or numeric string and returns the value with an English
	ordinal suffix. Handles the special cases for 11/12/13 -> "th" and preserves
	negative signs. Non-numeric input is returned stringified.

	Examples:
	```luau
	Ordinal(1)    --> "1st"
	Ordinal(2)    --> "2nd"
	Ordinal(3)    --> "3rd"
	Ordinal(4)    --> "4th"
	Ordinal(11)   --> "11th"
	Ordinal(-1)   --> "-1st"
	Ordinal(1.5)  --> "1.5th" -- fractions use "th"
	```

]]
return @native function(value: number | string) : (string, number)
	return string.gsub(tostring(value), ordinalMatchPattern, matchFunction)
end
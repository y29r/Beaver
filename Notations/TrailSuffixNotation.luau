--!strict

local suffixNotationAbbreviations = require("./suffixNotationAbbreviations")
local abbreviationCount = #suffixNotationAbbreviations

--[[
	
	@param trailingDecimals number -- The number of decimal places to include after the integer part.
	@param value number | string
	@return string
	
	Formats the provided numeric or string value using suffix notation to n decimal places.
	e.g.
	```luau
	local a = TrailSuffixNotation(-34567.89)
	print(a) --> "-34.6K"
	```
	
]]
return @native function(trailingDecimals: number, value: number | string) : string
	local valueAsANumber: number? = tonumber(value)
	
	if valueAsANumber then
		local absoluteValue: number = math.abs(valueAsANumber)
		local sign: string = valueAsANumber < 0 and "-" or ""
		local digits: number = math.floor(math.log10(absoluteValue))
		local notationIndex: number = math.min(abbreviationCount, math.floor(digits / 3))
		local prefix: number = absoluteValue / 10 ^ (notationIndex * 3)
		local suffix: string = suffixNotationAbbreviations[notationIndex] or ""
		
		return string.format(`%s%.{trailingDecimals}f%*`, sign, prefix, suffix)
	else
		return "Nan"
	end
end
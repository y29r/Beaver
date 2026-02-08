--!strict

local indexMap: {number} = {1, 4, 5, 9, 10, 40, 50, 90, 100, 400, 500, 900, 1000}
local symbolsMap: {string} = {"I", "IV", "V", "IX", "X", "XL", "L", "XC", "C", "CD", "D", "CM", "M"}

--[[
	
	@param value : number | string
	@return string

	Converts the provided number or numeric string into its Roman numeral representation.
	e.g.
	```luau
	print(RomanNumeral(1994)) -- Output: MCMXCIV
	```

]]
return @native function(value: number | string) : string
	local valueAsAsNumber = tonumber(value)
	if not valueAsAsNumber then
		return ""
	end

	local index: number = 13
	local formattedValue: string = ""
	
	while valueAsAsNumber > 0 do
		local indexDivision: number = valueAsAsNumber // indexMap[index]
		valueAsAsNumber %= indexMap[index]

		while indexDivision > 0 do
			formattedValue ..= symbolsMap[index]
			indexDivision -= 1
		end

		index -= 1
	end

	return formattedValue
end
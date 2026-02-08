--!strict

--[[

	@param translatorMapping : {[number]: (value: any) -> ...any}
	@param fallbackTranslator : ((value: any) -> ...any)?

	@return (value: any) -> ...any

	Returns a function that translates input values based on the provided translator mapping.
	The mapping associates ceiling values with corresponding translator functions.
	The returned function selects the appropriate translator based on the nearest ceiling value that does not exceed the input value.
	If no suitable ceiling is found, the fallback translator is used if provided.
	e.g.
	```luau
	local translators = {
		[1000] = function(value) return value .. " (thousand)" end,
		[1000000] = function(value) return value .. " (million)" end,
	}

	local translate = highest(translators, function(value) return value .. " (small)" end)
	print(translate(500))        --> "500 (small)"
	print(translate(1500))      --> "1500 (thousand)"
	print(translate(2000000))   --> "2000000 (million)"
	```
	
]]
return @native function(
	translatorMapping: {[number]: (value: any) -> ...any},
	fallbackTranslator: ((value: any) -> ...any)?
)
	return @native function(value: any)
		value = tonumber(value) or 0

		local nearestTranslator: (value: any) -> (...any)? = fallbackTranslator
		local nearestTranslatorKey: number = -math.huge
		
		for ceiling: number, translator: (value: any) -> ...any in translatorMapping do
			if ceiling > nearestTranslatorKey and ceiling <= value then
				nearestTranslator = translator
				nearestTranslatorKey = ceiling
			end
		end
		
		if nearestTranslator then
			return nearestTranslator(value)
		end

		return value
	end
end
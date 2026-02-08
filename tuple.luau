--!strict

--[[

	@param ...number | string
	@return ...string

	Applies the provided translator function to each of the provided values.
	e.g.
	```luau
	local function addPrefix(value: number | string) : string
		return "Value: " .. tostring(value)
	end
	local a, b, c = tuple(addPrefix, 10, "Hello", 3.14)
	print(a, b, c) --> "Value: 10" "Value: Hello" "Value: 3.14"
	```
	
]]
return @native function(translator: (value: any) -> ...any, ...: any) : ...any
	local formattedValues: {any} = {}

	for index: number, value: any in {...} do
		table.insert(formattedValues, translator(value))
	end

	return unpack(formattedValues)
end
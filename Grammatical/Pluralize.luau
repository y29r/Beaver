--!strict

--[[
	
	@param contextName : string
	@param value : number | string
	@return string

	Formats the value with the provided context name, adding an "s" at the end if the value is not 1.
	e.g.
	```luau
	local a = Pluralize("File", 3)
	print(a) --> "3 Files"
	```
	
]]
return @native function(contextName: string, value: number | string) : string
	local valueAsANumber = tonumber(value) or 0

	return `{valueAsANumber} {contextName}{valueAsANumber == 1 and "" or "s"}`
end
--!strict

--[[

	@param value number | string
	@return string

	Splits the input value with the provided spacer string.
	e.g.
	```luau
	local a = spacerFormatter(",", -34567)
	print(a) --> "-34,567"
	```

]]
return @native function(spacer: string, value: number | string) : string
	local stringValue: string = tostring(value)
	local _: number?, _: number?, sign: string?, integer: string?, fraction: string? = string.find(stringValue, "([-]?)(%d+)([.]?%d*)")
	
	if integer then
		local insertedSpacer: string = string.gsub(string.reverse(integer), "(%d%d%d)", `%1{spacer}`)
		local formattedInteger: string = string.gsub(string.reverse(insertedSpacer), `^{spacer}`, "")
		
		local formattedValue: string = (sign or "")
			.. formattedInteger
			.. (fraction or "")
		
		return formattedValue
	else
		return stringValue
	end
end
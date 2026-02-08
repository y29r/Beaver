--!strict

--[[

	@param value : any
	@return string

	Wraps the input value in Rich Text code tags.
	e.g.
	```luau
	local a = InlineCode("Hello")
	print(a) --> "<mark>Hello</mark>"
	```
	
]]
return @native function(value: any) : string
	return "<mark>" .. tostring(value) .. "</mark>"
end
--!strict

--[[

	@param value : any
	@return string

	Wraps the input value in Rich Text strikethrough tags.
	e.g.
	```luau
	local a = StrikeThrough("Hello")
	print(a) --> "<s>Hello</s>"
	```
	
]]
return @native function(value: any) : string
	return "<s>" .. tostring(value) .. "</s>"
end
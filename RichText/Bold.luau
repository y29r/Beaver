--!strict

--[[

	@param value : any
	@return string

	Wraps the input value in Rich Text bold tags.
	e.g.
	```luau
	local a = Bold("Hello")
	print(a) --> "<b>Hello</b>"
	```

]]
return @native function(value: any) : string
	return "<b>" .. tostring(value) .. "</b>"
end
--!strict

--[[

	@param value : any
	@return string

	Wraps the input value in Rich Text font color tags.
	e.g.
	```luau
	local a = Color(Color3.new(1, 0, 0), "Hello")
	print(a) --> "<font color="#FF0000">Hello</font>"
	```

]]
return @native function(color: Color3, value: any) : string
	return string.format("<font color=\"#%*\">%*</font>", color:ToHex(), value)
end
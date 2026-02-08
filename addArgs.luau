--!strict

--[[

	@param callback : (...any) -> ...any
	@param ...any
	@return (...any) -> ...any

	Prepends the provided arguments to the callback function when invoked.
	e.g.
	```luau
	local twoDecimalNotation = Beaver.TrailSuffixNotation(2)
	local a = twoDecimalNotation(2598912)
	print(a) --> "2.59M"
	```

]]
return @native function(callback: (...any) -> ...any, ...: any) : (...any) -> ...any
	local packedArgs: {any} = {...}
	return function(...: any) : ...any
		return callback(unpack(packedArgs), ...)
	end
end
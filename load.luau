--!strict

local savedTranslators = require("./savedTranslators")

--[[

	@param translatorName : string
	@param yield : boolean?
	@return ((...any) -> ...any)?

	Fetches a previously saved translator by its name.
	If no translator is found, returns nil.
	e.g.
	```luau
	local myTranslator = Beaver.load("MyTranslator")
	if myTranslator then
		local result = myTranslator(1000)
		print(result)
	end
	```
	
]]
return @native function(translatorName: string, yield: boolean?) : ((...any) -> ...any)?
	assert(type(translatorName) == "string", "Expected 'translatorName' argument #1 to be a string.")
	assert(yield == nil or type(yield) == "boolean", "Expected 'yield' argument #2 to be a boolean or nil.")

	local translator: ((...any) -> ...any)? = savedTranslators[translatorName]
	while yield and not translator do
		task.wait()
		translator = savedTranslators[translatorName]
	end

	return translator
end
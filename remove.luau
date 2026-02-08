--!strict

local savedTranslators = require("./savedTranslators")

--[[

	@param translator : (...any) -> ...any
	@return void

	Deletes a previously saved translator by its name.
	This is useful for cleaning up unused translators.
	e.g.
	```luau
	Beaver.remove("MyTranslator")
	```

]]
return @native function(translatorName: string) : ()
	assert(type(translatorName) == "string", "Expected 'translatorName' argument #1 to be a string.")
	
	savedTranslators[translatorName] = nil
end
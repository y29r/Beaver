--!strict

local remove = require("./remove")
local addArgs = require("./addArgs")
local savedTranslators = require("./savedTranslators")

--[[

	@param translator : (...any) -> ...any
	@return ...any

	Saves a translator function under a specified name.
	This allows you to retrieve and use the translator later using `Beaver.load`.
	To remove a saved translator, use `Beaver.remove`.
	e.g.
	```luau
	-- inside script A or external code block
	Beaver.save("MyTranslator", function(value)
		return "Translated: " .. tostring(value)
	end)

	-- inside script B or another external code block
	local myTranslator = Beaver.load("MyTranslator")
	if myTranslator then
		local result = myTranslator(1000)
		print(result) --> "Translated: 1000"
	end
	```

]]
return @native function(saveAsName: string, translator: (...any) -> ...any) : ...any
	assert(type(saveAsName) == "string", "Expected 'saveAsName' argument #1 to be a string.")

	savedTranslators[saveAsName] = translator

	return addArgs(remove, saveAsName)
end
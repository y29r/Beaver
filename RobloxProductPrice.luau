--!strict

local None = require("./None")
local Robux = require("./Currency/Robux")
local Comma =  require("./Spacers/Comma")
local SuffixNotation = require("./Notations/SuffixNotation")

local highest = require("./highest")

local translatorMapping: {(...any) -> (...any)} = {
	[0] = function()
		return "FREE"
	end,
	[1] = Comma,
	[100000] = SuffixNotation,
}

local translator: (any) -> (...any) = highest(translatorMapping, None)

--[[

	@param value : number | string
	@return string

	Prefixes each input value with the Robux sign (Ⓡ) and adds commas as thousand separators if the number is below 100,000.
	For values 100,000 and above, it uses trail suffix notation (e.g., 1K, 1M) up to 1 decimal place.
	If the provided value is negative, the minus sign appears before the Robux sign.
	e.g.
	```luau
	local a = RobloxProductPrice(1000)
	print(a) --> "Ⓡ1,000"
	
	local b = RobloxProductPrice(5000000)
	print(b)--> "Ⓡ5M"

	local c = RobloxProductPrice(0)
	print(c) --> "ⓇFREE"
	```

]]
return @native function(value: number | string) : string
	return Robux(translator(value))
end
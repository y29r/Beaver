--!strict

local currencyUnicodes = {
	Robux = utf8.char(0xE002),
	Dollar = utf8.char(0x24),
	Euro = utf8.char(0x20AC),
	Pound = utf8.char(0xA3),
	Yen = utf8.char(0xA5),
	Bitcoin = utf8.char(0x20BF),
	Rupee = utf8.char(0x20B9),
	Lira = utf8.char(0x20A4),
	Won = utf8.char(0x20A9),
	Ruble = utf8.char(0x20BD),
	Franc = utf8.char(0x20A3),
	Shekel = utf8.char(0x20AA),
	GenericCurrency = utf8.char(0xE000),
}

return currencyUnicodes
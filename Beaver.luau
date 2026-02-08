--!strict
--[[
	Author: @y29r (Github)
	Date Written: November 14th, 2025

	Beaver: A flat and easy-to-use Luau formatting library.
]]

local None = require("./None")
local Bitcoin = require("./Currency/Bitcoin")
local Dollar = require("./Currency/Dollar")
local Euro = require("./Currency/Euro")
local Franc = require("./Currency/Franc")
local GenericCurrency = require("./Currency/GenericCurrency")
local Lira = require("./Currency/Lira")
local Pound = require("./Currency/Pound")
local Robux = require("./Currency/Robux")
local Ruble = require("./Currency/Ruble")
local Rupee = require("./Currency/Rupee")
local Shekel = require("./Currency/Shekel")
local Won = require("./Currency/Won")
local Yen = require("./Currency/Yen")

local Comma = require("./Spacers/Comma")
local Space = require("./Spacers/Space")
local Hyphen = require("./Spacers/Hyphen")
local Period = require("./Spacers/Period")
local Underscore = require("./Spacers/Underscore")
local spacerFormatter = require("./Spacers/spacerFormatter")

local SuffixNotation = require("./Notations/SuffixNotation")
local RoundedSuffixNotation = require("./Notations/RoundedSuffixNotation")
local TrailSuffixNotation = require("./Notations/TrailSuffixNotation")

local LeadingZero = require("./Score/LeadingZero")

local Seconds = require("./Time/Seconds")
local Minutes = require("./Time/Minutes")
local Hours = require("./Time/Hours")
local Days = require("./Time/Days")
local Weeks = require("./Time/Weeks")
local Months = require("./Time/Months")
local AdaptiveDHMS = require("./Time/AdaptiveDHMS")
local MinutesSeconds = require("./Time/MinutesSeconds")
local HoursMinutesSeconds = require("./Time/HoursMinutesSeconds")
local HoursMinutes = require("./Time/HoursMinutes")
local DaysHoursMinutesSeconds = require("./Time/DaysHoursMinutesSeconds")

local Duration = require("./Time/Dates/Duration")
local LongDuration = require("./Time/Dates/LongDuration")
local LongDurationDifference = require("./Time/Dates/LongDurationDifference")
local TimeElapsed = require("./Time/Dates/TimeElapsed")
local EventDuration = require("./Time/Dates/EventDuration")
local UnpackDateTimeToUniversal = require("./Time/Dates/UnpackDateTimeToUniversal")

local Colon = require("./Seperators/Colon")

local Prefix = require("./Prefix")
local Suffix = require("./Suffix")

local RobloxProductPrice = require("./RobloxProductPrice")

local Upper = require("./Upper")
local Lower = require("./Lower")

local Hexadecimal = require("./Hexadecimal")

local Pluralize = require("./Grammatical/Pluralize")
local StandalonePluralize = require("./Grammatical/StandalonePluralize")

local LongBytes = require("./DigitalStorage/LongBytes")
local ShortBytes = require("./DigitalStorage/ShortBytes")
local Bytes = require("./DigitalStorage/Bytes")

local RangeToPercent = require("./Percentage/RangeToPercent")
local RangeToPercent1Decimal = require("./Percentage/RangeToPercent1Decimal")
local RangeToPercent2Decimals = require("./Percentage/RangeToPercent2Decimals")

local Ordinal = require("./Ordinal")

local ScientificNotation = require("./Notations/ScientificNotation")

local RomanNumeral = require("./RomanNumeral")

local InlineCode = require("./RichText/InlineCode")
local StrikeThrough = require("./RichText/StrikeThrough")
local Bold = require("./RichText/Bold")
local Color = require("./RichText/Color")

local tuple = require("./tuple")
local addArgs = require("./addArgs")
local combine = require("./combine")
local highest = require("./highest")
local save = require("./save")
local load = require("./load")
local remove = require("./remove")

local __VERSION__ = require("./VERSION")

local Beaver = {
	Comma = Comma,
	None = None,
	Bitcoin = Bitcoin,
	Dollar = Dollar,
	Euro = Euro,
	Franc = Franc,
	GenericCurrency = GenericCurrency,
	Lira = Lira,
	Pound = Pound,
	Robux = Robux,
	Ruble = Ruble,
	Rupee = Rupee,
	Shekel = Shekel,
	Won = Won,
	Space = Space,
	Yen = Yen,
	Hyphen = Hyphen,
	Period = Period,
	Underscore = Underscore,
	spacer = spacerFormatter,

	SuffixNotation = SuffixNotation,
	RoundedSuffixNotation = RoundedSuffixNotation,
	TrailSuffixNotation = TrailSuffixNotation,

	LeadingZero = LeadingZero,

	Seconds = Seconds,
	Minutes = Minutes,
	Hours = Hours,
	Days = Days,
	Weeks = Weeks,
	Months = Months,
	MinutesSeconds = MinutesSeconds,
	HoursMinutesSeconds = HoursMinutesSeconds,
	HoursMinutes = HoursMinutes,
	DaysHoursMinutesSeconds = DaysHoursMinutesSeconds,
	AdaptiveDHMS = AdaptiveDHMS,

	Duration = Duration,
	LongDuration = LongDuration,
	LongDurationDifference = LongDurationDifference,
	TimeElapsed = TimeElapsed,
	EventDuration = EventDuration,
	UnpackDateTimeToUniversal = UnpackDateTimeToUniversal,

	Colon = Colon,

	InlineCode = InlineCode,
	StrikeThrough = StrikeThrough,
	Bold = Bold,
	Color = Color,

	Prefix = Prefix,
	Suffix = Suffix,

	RobloxProductPrice = RobloxProductPrice,

	Upper = Upper,
	Lower = Lower,

	Hexadecimal = Hexadecimal,

	Pluralize = Pluralize,
	StandalonePluralize = StandalonePluralize,

	LongBytes = LongBytes,
	ShortBytes = ShortBytes,
	Bytes = Bytes,

	RangeToPercent = RangeToPercent,
	RangeToPercent1Decimal = RangeToPercent1Decimal,
	RangeToPercent2Decimals = RangeToPercent2Decimals,

	Ordinal = Ordinal,

	ScientificNotation = ScientificNotation,

	RomanNumeral = RomanNumeral,

	tuple = tuple,
	addArgs = addArgs,
	combine = combine,
	highest = highest,
	save = save,
	load = load,
	remove = remove,

	VERSION = __VERSION__,
}

return Beaver
# Beaver

## (1). What is Beaver?
Beaver is a formatting module used to convert numbers and strings into more readable formats. e.g. `12345678` can
become `12,345,678`. Beaver supports a large amount of formatters to help make data become visual.

## (2). What does Beaver solve?
Beaver solves the adhoc & module scatter problems. It does this by grouping dozens of formatters into one flat
dictionary, accessible anywhere. Removing the need to worry about any duplicate code, and formatter modules all
over your codebase.

## (3). How does Beaver perform?
Beaver is designed to be as flat as possible. This means for most of your usage, Beaver is entirely `O(1)` time complexity.
Some formatters are more expensive to run than others, but that's expected as each formatter is different.

## (4). Why should I use Beaver?
If you find yourself creating, or using formatters a lot, then Beaver is for you. Beaver speeds up your workflow immensly,
and reduces the amount of time you spend writing code. If you imagine needing a handful of formatters, you may find yourself
finding + pasting duplicate code, or requiring them through modules. This solution becomes repetitive and difficult.
Especially if you have to make small adjustments to your formatter.

## (5). Beaver doesn't support the formatter(s) I want:
If the formatter you need doesn't exist, feel free to create a PR or suggestion and we'll add it.

## (6). How do I use custom formatters in mass?
You may find yourself using `Beaver.combine` to create custom formatters. But this function becomes a problem since
it needs to be called the same throughout your codebase. To solve this you can use a high-level table in `ReplicatedStorage`
that contains something like:

```lua
local Beaver = require("path.to.Beaver")

local formatters = {
  ReadablePrice = Beaver.combine(Beaver.Comma, Beaver.Robux),
}

return formatters
```

Then the table can be required from anywhere, and use that formatter. This is the right way to use `Beaver.combine` but
using it inside your code directly is acceptable too.

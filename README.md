# SmartText2 | Documentation

[Learn how to setup and use SmartText2 here]()

You can require this module in your script using it's `AssetId` or with the path to the module in your project.
````lua
local SmartText2 = require(6598530777)
--or
local SmartText2 = require(PATH_TO_MODULE)
````

## Class
### `constructor` `SmartText2.new(text)`
Creates and returns a new SmartText2 text object, with an optional parameter to set the object's `text` property. Object's default text when no argument is passed through will be an empty string.
````lua
-- Example

local text = SmartText2.new("This is some text!")
````
## Object
### `property` `object.text`
Can be indexed to get/set the object's text property. Use this property to access the formatted text.
````lua
-- Example

local text = SmartText2.new("This is some text!")
print(text.text) --> This is some text!
````
### `property` `object.class`
Can be indexed to get/set the object's class property. **DO NOT EDIT THIS PROPERTY**, as it's used internally by the module to handle the concatenation of more than one SmartText2 object.
### `function` `object:Bold(text)`
Boldens the object's text or concatenates boldened text to the object's text.

If no argument is passed through the `text` parameter, the object's current text will be boldened. If a string argument is passed through the `text` parameter, then a boldened string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText.new("This is bold text"):Bold() --> <b>This is bold text</b>
-- or
local text = SmartText.new("This is "):Bold("bold text") --> This is <b>bold text</b>
````
### `function` `object:Italic(text)`
Italicizes the object's text or concatenates italicized text to the object's text.

If no argument is passed through the `text` parameter, the object's current text will be italicized. If a string argument is passed through the `text` parameter, then a italicized string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText.new("This is italic text"):Italic() --> <i>This is italic text</i>
-- or
local text = SmartText.new("This is "):Italic("italic text") --> This is <i>italic text</i>
````
### `function` `object:Underline(text)`
Underlines the object's text or concatenates underlined text to the object's text.

If no argument is passed through the `text` parameter, the object's current text will be underlined. If a string argument is passed through the `text` parameter, then a underlined string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText2.new("This is underline text"):Underline() --> <u>This is underline text</u>
-- or
local text = SmartText2.new("This is "):Underline("underline text") --> This is <u>underline text</u>
````
### `function` `object:Strike(text)`
Strikethroughs the object's text or concatenates strikethrough text to the object's text.

If no argument is passed through the `text` parameter, the object's current text will be strikethrough. If a string argument is passed through the `text` parameter, then a strikethrough string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText2.new("This is strikethrough text"):Strike() --> <s>This is strikethrough text</s>
-- or
local text = SmartText2.new("This is "):Strike("strikethrough text") --> This is <s>strikethrough text</s>
````
### `function` `object:Size(text, size)`
Sizes the object's text or concatenates sized text to the object's text.

If no argument is passed through the `text` parameter, the object's text will be sized. If a string is passed through the `text` parameter, then a sized string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText.new("This is big text"):Size(50) --> <font size="50">This is big text</font>
-- or
local text = SmartText.new("This is "):Size("big text", 50) --> This is <font size="50">big text</font>
````
### `function` `object:ColorRGB(text, r, g, b)`
Colors the object's text or concatenates colored text to the object's text. Uses RGB color format.

If no argument is passed through the `text` parameter, the object's current text will be colored. If a string is passed through the `text` parameter, then a colored string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText2.new("This is RGB colored text"):ColorRGB(0, 0, 0) --> <font color="rgb(0,0,0)">This is RGB colored text</font>
-- or
local text = SmartText2.new("This is "):ColorRGB("RGB colored text", 0, 0, 0) --> This is <font color="rgb(0,0,0)">RGB colored text</font>
````
### `function` `object:ColorHEX(text, hex)`
Colors the object's text or concatenates colored text to the object's text. Uses HEX color format.

If no argument is passed through the `text` parameter, the object's current text will be colored. If a string is passed through the `text` parameter, then a colored string will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText2.new("This is HEX colored text"):ColorHEX("#000000") --> <font color="#000000">This is HEX colored text</font>
-- or
local text = SmartText2.new("This is "):ColorHEX("HEX colored text", "#000000") --> This is <font color="#000000">HEX colored text</font>
````
### `function` `object:Face(text, face)`
Changes the font of the object's text or concatenates text with a font to the object's text.

If no argument is passed through the `text` parameter, the object's current text will change in font. If a string is passed through the `text` parameter, then a string with a font will be concatenated with the object's text. Returns the object itself to allow chaining.
````lua
-- Example

local text = SmartText2.new("This is SourceSans"):Face("SourceSans") --> <font face="SourceSans">This is SourceSans</font>
-- or
local text = SmartText2.new("This is "):Face("SourceSans", "SourceSans") --> This is <font face="SourceSans">SourceSans</font>
````
### `function` `object:Concat(text)`
Concatenates a string to the object's text. If no argument is passed through the `text` parameter, it will concatenate a singular space `" "`.
````lua
-- Example

local text = SmartText2.new("Some text."):Concat(" More text!") --> Some text. More text!
````
Can also be concatenated to another string directly using `..`. This will, however, return as a string
````lua
local text1 = SmartText.new("Some text.")
local text2 = text1 .. " More text!" -- returns a string
````
### `function` `object:Set(text)`
Clears the object's current text and replaces it with the new text. If no argument is passed through the 'text' parameter, it will set the text to an empty string `""`.
````lua
-- Example

local text = SmartText.new("Text"):Set("Different text") --> Different text
````
### `function` `object:Clear()`
Resets the object's text back to an empty string `""`.
````lua
-- Example

local text = SmartText2.new("This is some text!"):Clear() --> (empty string)
````
## Sample Code
Here are a few examples of how you can utilize SmartText2 in your projects.
### Sample #1
A simple `Countdown()` function that uses SmartText2 to give is a nice, clean look.
````lua
-- LocalScript inside of a TextLabel

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local SmartText2 = require(ReplicatedStorage:WaitForChild("SmartText2"))

local text = SmartText2.new()

local function Countdown(duration)
  for i = duration, 0, -1 do
    text:Set("Time left: "):ColorRGB(i, 200,50,50):Bold():Size(50)
    script.Parent.Text = text.text
    
    wait(1)
  end
end

Countdown(60)
````

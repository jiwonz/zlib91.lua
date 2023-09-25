# Note
- this module originally created for Roblox. so Pure lua version can be less stable.
# Pure Lua
## import zlib91 module
```lua
local zlib91 = require("zlib91")
```
## zlib91.compress(data :string, useSingleQuote :boolean, level :number, strategy :string) -> compressedData :string
- useSingleQuote default: false
- level default: 6
- strategy default: dynamic
```lua
local compressedData = zlib91.compress("example data")
```
## zlib91.decompress(compressedData :string, useSingleQuote :boolean) -> decompressedData :string
- useSingleQuote default: false
```lua
local decompressedData = zlib91.decompress(compressedData)
```
## Available strategies:
- "dynamic"
- "fixed"
- "huffman_only"
# Roblox Luau
- Supports luau type autocompletes
- (btw, I just personally prefer to use UpperCamelCase with modules for roblox)
## import Zlib91 module
```lua
local Zlib91 = require(script.Zlib91)
```
## Zlib91.compress(data :string, useSingleQuote? :boolean, level :number, strategy :"dynamic"|"fixed"|"huffman_only") -> compressedData :string
```lua
local compressedData = Zlib91.compress("example data")
```
## Zlib91.decompress(compressedData :string, useSingleQuote? :boolean) -> decompressedData :string
```lua
local decompressedData = Zlib91.decompress(compressedData)
```
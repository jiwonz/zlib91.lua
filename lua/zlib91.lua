local module = {}

local compression = require("lib.compression")
local base91 = require("lib.base91")

local function toSingleQuoto(str)
    return string.gsub(str,"\"","'")
end

function module.compress(data,useSingleQuote,level,strategy)
    local compressed = compression.Zlib.Compress(data,{
        level = level or 6;
        strategy = strategy or "dynamic"
    })
    local base91Encoded = base91.encode(compressed)
    return not useSingleQuote and base91Encoded or toSingleQuoto(base91Encoded)
end

function module.decompress(compressedData,useSingleQuote)
    local base91Decoded = base91.decode(not useSingleQuote and compressedData or toSingleQuoto(compressedData))
    local decompressed = compression.Zlib.Decompress(base91Decoded)
    return decompressed
end

return module

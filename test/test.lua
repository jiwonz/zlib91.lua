local Zlib91 = require(script.Zlib91)

local test = '{"sound": {"0.6666666666666666": "Sfx_Automatic_MA16_ClipOut_003.wav", "1.6": "M4_ReloadEmptyMagIn.wav", "2.0": "BU_rif_M16A2_reload_1p_Wave.res_stream1.str.001", "1.1666666666666667": "magpouch.wav", "1.9666666666666666": "rattle1.wav", "2.6": "grab.wav", "2.533333333333333": "rattle3.wav", "0.16666666666666666": "Cloth-ReloadStart.wav", "1.8333333333333333": "Cloth-ReloadStart.001", "2.433333333333333": "Cloth-ReloadStart.002"}}'

local compressed = Zlib91.compress(test)
local decompressed = Zlib91.decompress(compressed)

warn(`\ndecompressed data: {decompressed}\n\ncompressed data: {compressed}\n`)
warn(`\ndecompressed size: {decompressed:len()}\n\ncompressed size: {compressed:len()}\n`)

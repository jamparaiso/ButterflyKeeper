--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:9bb46cb1f36f2ed815564c9cbc83d279:5d61a7b6774bf8b5ea4d80b1513e4b8e:9d8a04e4d5f0fb3322669d5117a734c8$
--
-- local sheetInfo = require("mysheet")
-- local myImageSheet = graphics.newImageSheet( "mysheet.png", sheetInfo:getSheet() )
-- local sprite = display.newSprite( myImageSheet , {frames={sheetInfo:getFrameIndex("sprite")}} )
--

local SheetInfo = {}

SheetInfo.sheet =
{
    frames = {
    
        {
            -- mos12
            x=4,
            y=4,
            width=88,
            height=74,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 87,
            sourceHeight = 73
        },
        {
            -- mos22
            x=96,
            y=4,
            width=82,
            height=74,

            sourceX = 6,
            sourceY = 0,
            sourceWidth = 87,
            sourceHeight = 73
        },
    },
    
    sheetContentWidth = 186,
    sheetContentHeight = 82
}

SheetInfo.frameIndex =
{

    ["mos12"] = 1,
    ["mos22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

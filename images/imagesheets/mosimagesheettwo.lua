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
            x=2,
            y=2,
            width=44,
            height=37,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 43,
            sourceHeight = 37
        },
        {
            -- mos22
            x=48,
            y=2,
            width=41,
            height=37,

            sourceX = 3,
            sourceY = 0,
            sourceWidth = 43,
            sourceHeight = 37
        },
    },
    
    sheetContentWidth = 93,
    sheetContentHeight = 41
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

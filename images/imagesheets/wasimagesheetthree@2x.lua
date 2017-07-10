--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:cf527b581326926c29b3fcc861f5fa70:4c7972187fa6bc5f9a21d69498858971:20f2033995af10c09050dcb3981d2966$
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
            -- was13
            x=82,
            y=4,
            width=74,
            height=60,

        },
        {
            -- was23
            x=4,
            y=4,
            width=74,
            height=60,

        },
    },
    
    sheetContentWidth = 160,
    sheetContentHeight = 70
}

SheetInfo.frameIndex =
{

    ["was13"] = 1,
    ["was23"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

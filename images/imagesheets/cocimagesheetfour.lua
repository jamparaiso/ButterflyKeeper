--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:722bfcc558400ac53bb6c227be0c99fa:ed2ab5ce32ba8b0468a2b81ae67d8c14:44f9352cd657a6d183033391cc4531a0$
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
            -- coc14
            x=29,
            y=2,
            width=25,
            height=21,

            sourceX = 0,
            sourceY = 3,
            sourceWidth = 25,
            sourceHeight = 28
        },
        {
            -- coc24
            x=2,
            y=2,
            width=25,
            height=28,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 25,
            sourceHeight = 28
        },
    },
    
    sheetContentWidth = 56,
    sheetContentHeight = 32
}

SheetInfo.frameIndex =
{

    ["coc14"] = 1,
    ["coc24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

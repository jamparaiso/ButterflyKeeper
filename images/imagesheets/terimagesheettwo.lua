--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:f5df3160b18c17274a2d1ed3d37e2999:1b1b7a8b041d15a58ca1d6a7fd164adf:2a51a40265f6ef39a56ace4865fddebb$
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
            -- ter12
            x=2,
            y=2,
            width=23,
            height=50,

        },
        {
            -- ter22
            x=2,
            y=54,
            width=23,
            height=49,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 23,
            sourceHeight = 50
        },
    },
    
    sheetContentWidth = 27,
    sheetContentHeight = 105
}

SheetInfo.frameIndex =
{

    ["ter12"] = 1,
    ["ter22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

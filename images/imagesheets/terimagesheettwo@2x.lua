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
            x=4,
            y=4,
            width=46,
            height=100,

        },
        {
            -- ter22
            x=4,
            y=108,
            width=46,
            height=98,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 46,
            sourceHeight = 100
        },
    },
    
    sheetContentWidth = 54,
    sheetContentHeight = 210
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

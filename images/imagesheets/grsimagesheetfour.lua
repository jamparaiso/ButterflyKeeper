--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:807897c8699a3cc488c28584e5177500:51f9f10c8483bb9617bcc96fc4ca4d7d:2afe5d17e2da123cccede9f1a993d779$
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
            -- grs14
            x=2,
            y=33,
            width=29,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 30,
            sourceHeight = 29
        },
        {
            -- grs24
            x=2,
            y=2,
            width=30,
            height=29,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 30,
            sourceHeight = 29
        },
    },
    
    sheetContentWidth = 34,
    sheetContentHeight = 64
}

SheetInfo.frameIndex =
{

    ["grs14"] = 1,
    ["grs24"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

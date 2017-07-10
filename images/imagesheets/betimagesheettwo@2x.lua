--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:cfe92812ed35f01455250caf9a37130c:9f319b0cc7940b7696ef4a9802686c88:7aaf46462a5278510a89beb77ee10d0b$
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
            -- bet12
            x=4,
            y=4,
            width=50,
            height=46,

        },
        {
            -- bet22
            x=58,
            y=4,
            width=50,
            height=44,

            sourceX = 0,
            sourceY = 2,
            sourceWidth = 50,
            sourceHeight = 46
        },
    },
    
    sheetContentWidth = 112,
    sheetContentHeight = 54
}

SheetInfo.frameIndex =
{

    ["bet12"] = 1,
    ["bet22"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

--
-- created with TexturePacker (http://www.codeandweb.com/texturepacker)
--
-- $TexturePacker:SmartUpdate:722241dafbf0b93d813fe5b13a3d9ccf:d765d2e1b8e6b509380528d1c413d783:beee848e6d55f803de44974b42e4ede7$
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
            -- mos24
            x=4,
            y=4,
            width=78,
            height=78,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 78,
            sourceHeight = 78
        },
        {
            -- mos41
            x=86,
            y=4,
            width=66,
            height=78,

            sourceX = 8,
            sourceY = 0,
            sourceWidth = 78,
            sourceHeight = 78
        },
    },
    
    sheetContentWidth = 156,
    sheetContentHeight = 88
}

SheetInfo.frameIndex =
{

    ["mos24"] = 1,
    ["mos41"] = 2,
}

function SheetInfo:getSheet()
    return self.sheet;
end

function SheetInfo:getFrameIndex(name)
    return self.frameIndex[name];
end

return SheetInfo

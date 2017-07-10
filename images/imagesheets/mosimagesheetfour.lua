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
            x=2,
            y=2,
            width=39,
            height=39,

            sourceX = 0,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 39
        },
        {
            -- mos41
            x=43,
            y=2,
            width=33,
            height=39,

            sourceX = 4,
            sourceY = 0,
            sourceWidth = 39,
            sourceHeight = 39
        },
    },
    
    sheetContentWidth = 78,
    sheetContentHeight = 44
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

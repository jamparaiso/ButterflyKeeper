display.setStatusBar( display.HiddenStatusBar )
local composer = require "composer"
local dbFunctions = require("dbFunctions")
local globals = require("globals")

--create player table
dbFunctions.createPlayerDbTable()
--create trivia table
dbFunctions.createTriviaTable()
--create gallery table
dbFunctions.createGalleryTable()
--counts how many active savefiles
globals.totalActiveSaves = dbFunctions.countActiveSave()

composer.gotoScene( "splashScreen", globals.sceneFadeTransitionOption )

--uncomment this to find the font internal name
--[[local fonts = native.getFontNames()
local count, found_count = 0,0
for i,fontname in ipairs( fonts ) do
    count = count+1
    	--change the "SketchLogs" with the font name you want to search
    j, k = string.find( fontname, "SketchLogs" )
    if ( j ~= nil ) then
        found_count = found_count + 1
        print( "found font: " .. fontname )

    end
end

print( "Font count: " .. count )]]
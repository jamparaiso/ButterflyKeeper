local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
local globals = require( "globals" )
local playerData = require("playerData")

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here
local sketchFont = globals.sketchFont
local leavesButtonDef = globals.leavesButtonDef
local leavesButtonPress = globals.leavesButtonPress
local tapSound = functions.playTapSound
local gameSound = functions.playGameSound

local pGalleryStat = dbFunctions.fetchPlayerGalleryStat(playerData.playID)
local alert

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("playerMenu",globals.sceneBackTransitionOption)
      end
      return true
   end

   M.insButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
            if (alert) then
                   native.cancelAlert( alert )     
            end
         local a = tonumber( event.target.id)
         --checks if the player unlocked any insects in the gallery
            if (0 ~= pGalleryStat[a]) then
               playerData.insGallerySel = a
               composer.gotoScene("galleryView",globals.sceneNextTransitionOption)
            else
               --no unlocked insects
               alert = native.showAlert( "Gallery", "You haven't unlocked any insect in this catergory. Finish a level to unlock more", { "OK"})
            end
      end
      return true
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)

   backGround = functions.background()

   woodLabelImg = functions.woodLabelImg()

   woodLabelText = functions.woodLabelText("Gallery")

   leavesBg = functions.leavesBackground()

   sceneGroup:insert(backGround)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(woodLabelText)


   local xPos = 200
   local yPos = 210
   local insTable = {
      "Ants",
      "Mosquito",
      "Fly",
      "Cockroach",
      "Termite",
      "Bee",
      "Wasp",
      "Bug",
      "Beetle",
      "Dragonfly",
      "Grasshopper",
      "Stick",
      "Mantis",
      "Crickets",
      "Centipede",
      "Spider"
   }

--insect class selector
   for i=1,16 do
      if (i == 9) then
         xPos = 600
         yPos = 210
      end
      local insButton = globals.createButton(i,380,100,xPos,yPos,
                           sketchFont,leavesButtonDef,leavesButtonPress,insTable[i],
                           M.insButtonEventHandler)

      yPos = yPos + 130
      sceneGroup:insert(insButton)
   end

   backButton = globals.createButton(3,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)

   sceneGroup:insert( leavesBg )
   sceneGroup:insert(backButton)
end

-- "scene:show()"
function scene:show( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is still off screen (but is about to come on screen).
   elseif ( phase == "did" ) then
      -- Called when the scene is now on screen.
      -- Insert code here to make the scene come alive.
      --Remove unused scene
      -- Example: start timers, begin animation, play audio, etc.
      composer.removeScene("playerMenu")
      composer.removeScene("galleryView")
   end
end

-- "scene:hide()"
function scene:hide( event )

   local sceneGroup = self.view
   local phase = event.phase

   if ( phase == "will" ) then
      -- Called when the scene is on screen (but is about to go off screen).
      -- Insert code here to "pause" the scene.
      -- Example: stop timers, stop animation, stop audio, etc.
   elseif ( phase == "did" ) then
      -- Called immediately after scene goes off screen.
   end
end

-- "scene:destroy()"
function scene:destroy( event )

   local sceneGroup = self.view

   -- Called prior to the removal of scene's view ("sceneGroup").
   -- Insert code here to clean up the scene.
   -- Example: remove display objects, save state, etc.
end

---------------------------------------------------------------------------------

-- Listener setup
scene:addEventListener( "create", scene )
scene:addEventListener( "show", scene )
scene:addEventListener( "hide", scene )
scene:addEventListener( "destroy", scene )

---------------------------------------------------------------------------------

return scene
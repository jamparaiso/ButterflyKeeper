local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local dbFunctions = require("dbFunctions")
local globals = require( "globals" )

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
local fetchAllplayerSaveData = {}
fetchAllplayerSaveData = dbFunctions.fetchAllplayerSaveData()
local totalProfile = #fetchAllplayerSaveData 

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.noSaveProfile = function()
      if (0 == totalProfile) then
         noSaveText = display.newText("No saved profile",0,0,"Arial",50 )
         noSaveText.anchorX = 0.5
         noSaveText.anchorY = 0.5
         noSaveText.x = display.contentCenterX
         noSaveText.y = display.contentCenterY
         noSaveText:setFillColor( 0,0,0 )

         return noSaveText
      else
         return nil
      end
   end

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
            if (globals.isDelete) then
               composer.gotoScene("newGame",globals.sceneBackTransitionOption)
            else
               globals.isDelete = false
               composer.gotoScene("gameMenu",globals.sceneBackTransitionOption) 
            end
      end
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view
   loadSlotButton = display.newGroup( )

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   woodLabelImg = functions.woodLabelImg()

   if (globals.isDelete) then
      woodLabelText = functions.woodLabelText("Delete Profile")
   else
      woodLabelText = functions.woodLabelText("Load Game")
   end

   backButton = globals.createButton(2,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)

   --this will create the save slot button
   functions.loadSlotButton(totalProfile,fetchAllplayerSaveData)

   saveText = M.noSaveProfile() 

   sceneGroup:insert(backGround)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(woodLabelText)   
   sceneGroup:insert( leavesBg )
   if (nil ~= saveText) then
    sceneGroup:insert(saveText)     
   end
   sceneGroup:insert(loadSlotButton)
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
      composer.removeScene("gameMenu")
      composer.removeScene("newGame")
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
local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
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

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.soundButtonLabel = function()
      if (globals.enableTapSound) then
         label = "FX: On"
      else
         label = "FX: Off"
      end

      return label
   end

   M.gameSoundButtonLabel = function()
      if (globals.enableGameSound) then
         label = "Music: On"
      else
         label = "Music: Off"
      end

      return label
   end

   M.tapSoundButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         functions.toggleTapSound()
         tapSoundButton:setLabel(M.soundButtonLabel())
      end
   end

   M.gameSoundButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         functions.toggleGameSound()
         gameSoundButton:setLabel( M.gameSoundButtonLabel() )
      end
   end

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
      tapSound()
         composer.gotoScene("gameMenu",globals.sceneBackTransitionOption)
      end
   end

   M.insButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("instructions",globals.sceneNextTransitionOption)
      end
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   backGround = functions.background()

   leavesBg = functions.leavesBackground()

   woodLabelImg = functions.woodLabelImg()

   woodLabelText = functions.woodLabelText("Settings")

   insButton = globals.createButton(3,675,100,display.contentWidth/2,display.contentHeight-750,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Intsructions",
                           M.insButtonEventHandler)

   tapSoundButton = globals.createButton(1,675,100,display.contentWidth/2,display.contentHeight-600,
                           sketchFont,leavesButtonDef,leavesButtonPress,M.soundButtonLabel(),
                           M.tapSoundButtonEventHandler)   

   gameSoundButton = globals.createButton(2,675,100,display.contentWidth/2,display.contentHeight-450,
                           sketchFont,leavesButtonDef,leavesButtonPress,M.gameSoundButtonLabel(),
                           M.gameSoundButtonEventHandler)

   backButton = globals.createButton(3,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",
                           M.backButtonEventHandler)

   sceneGroup:insert(backGround)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(woodLabelText)
   sceneGroup:insert( leavesBg )
   sceneGroup:insert(tapSoundButton)
   sceneGroup:insert(gameSoundButton)
   sceneGroup:insert(insButton)
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
      -- Example: start timers, begin animation, play audio, etc.
      composer.removeScene("instructions")
      composer.removeScene("gameMenu")
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
local composer = require( "composer" )
local scene = composer.newScene()
local globals = require("globals")
local functions = require("functions")
local dbFunctions = require("dbFunctions")
---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------

-- local forward references should go here

local  function timerFunction()
      composer.gotoScene("gameMenu", globals.sceneFadeTransitionOption)
   end 

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.
   --[[backGround = display.newImageRect("images/background.png",0, 0)
   backGround.width = display.contentWidth
   backGround.height = display.contentHeight
   backGround.anchorX = 0
   backGround.anchorY = 0]]
   backGround = functions.background()

   splashText = display.newText("Loading...",0,0,"SketchLogs" or native.systemFont,70)
   splashText.anchorX = 0.5
   splashText.anchorY = 0.5
   splashText.x = display.contentCenterX
   splashText.y = display.contentCenterY
   splashText:setFillColor( 255,255,255 )
   
   sceneGroup:insert( backGround )
   sceneGroup:insert( splashText )

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
      if (globals.activateMemoryChecker) then
       checkMemoryTimer = timer.performWithDelay( 1000, functions.checkMemory, -1)
      end

      --makes sure that the trivia is added in the db before the splash screen transits to next scene
         if (dbFunctions.addTriviaData() and dbFunctions.addGalleryData()) then
            goToNextTimer = timer.performWithDelay( 1000,timerFunction)  
         end
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
      timer.cancel( goToNextTimer )
      goToNextTimer = nil
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
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
local counter = 1
local s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11
local imageSource = {
   "images/instruction/A1.png",
   "images/instruction/A.png",
   "images/instruction/B.png",
   "images/instruction/C.png",
   "images/instruction/D.png",
   "images/instruction/E.png",
   "images/instruction/F.png",
   "images/instruction/G.png",
   "images/instruction/H.png",
   "images/instruction/I.png",
   "images/instruction/J.png",
}

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.skipButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         --remove overlay
         --composer.hideOverlay("fade",400)
         composer.gotoScene("settingsMenu",globals.sceneBackTransitionOption)
      end
      return true
   end

   M.nextButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         if (counter == 1) then
            transition.to( s1, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 2) then
            transition.to( s2, { time=500, alpha=0} )
            counter = counter + 1 
         elseif (counter == 3) then
            transition.to( s3, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 4) then
            transition.to( s4, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 5) then
            transition.to( s5, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 6) then
            transition.to( s6, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 7) then
            transition.to( s7, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 8) then
            transition.to( s8, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 9) then
            transition.to( s9, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 10 ) then
            transition.to( s10, { time=500, alpha=0} )
            counter = counter + 1
         elseif (counter == 11 ) then
            counter = counter + 1
         elseif (counter == 12) then
         composer.gotoScene("settingsMenu",globals.sceneBackTransitionOption)
         end
      end
      return true
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   local slideGroup = display.newGroup( )

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)

   background = display.newRect( 0, 0, display.contentWidth, display.contentHeight )
   background.anchorX = 0
   background.anchorY = 0
   background.x = 0
   background.y = 0
   background:setFillColor( 244/255,182/255,63/255 )
   background.alpha = 0.85

   s1 = display.newImageRect( imageSource[1], display.contentWidth , display.contentHeight - 120 )
   s1.anchorX = 0.5
   s1.anchorY = 0.5
   s1.x = display.contentCenterX
   s1.y = display.contentCenterY - 100

   s2 = display.newImageRect( imageSource[2], display.contentWidth , display.contentHeight - 120)
   s2.anchorX = 0.5
   s2.anchorY = 0.5
   s2.x = display.contentCenterX
   s2.y = display.contentCenterY - 100

   s3 = display.newImageRect( imageSource[3], display.contentWidth , display.contentHeight - 120)
   s3.anchorX = 0.5
   s3.anchorY = 0.5
   s3.x = display.contentCenterX
   s3.y = display.contentCenterY - 100

   s4 = display.newImageRect( imageSource[4], display.contentWidth , display.contentHeight - 120 )
   s4.anchorX = 0.5
   s4.anchorY = 0.5
   s4.x = display.contentCenterX
   s4.y = display.contentCenterY - 100

   s5 = display.newImageRect( imageSource[5], display.contentWidth , display.contentHeight - 120 )
   s5.anchorX = 0.5
   s5.anchorY = 0.5
   s5.x = display.contentCenterX
   s5.y = display.contentCenterY - 100

   s6 = display.newImageRect( imageSource[6], display.contentWidth , display.contentHeight - 120 )
   s6.anchorX = 0.5
   s6.anchorY = 0.5
   s6.x = display.contentCenterX
   s6.y = display.contentCenterY- 100

   s7 = display.newImageRect( imageSource[7], display.contentWidth , display.contentHeight - 120 )
   s7.anchorX = 0.5
   s7.anchorY = 0.5
   s7.x = display.contentCenterX
   s7.y = display.contentCenterY- 100

   s8 = display.newImageRect( imageSource[8], display.contentWidth , display.contentHeight - 120 )
   s8.anchorX = 0.5
   s8.anchorY = 0.5
   s8.x = display.contentCenterX
   s8.y = display.contentCenterY- 100

   s9 = display.newImageRect( imageSource[9], display.contentWidth , display.contentHeight - 120 )
   s9.anchorX = 0.5
   s9.anchorY = 0.5
   s9.x = display.contentCenterX
   s9.y = display.contentCenterY- 100

   s10 = display.newImageRect( imageSource[10], display.contentWidth , display.contentHeight - 120 )
   s10.anchorX = 0.5
   s10.anchorY = 0.5
   s10.x = display.contentCenterX
   s10.y = display.contentCenterY- 100

   s11 = display.newImageRect( imageSource[11], display.contentWidth , display.contentHeight - 120 )
   s11.anchorX = 0.5
   s11.anchorY = 0.5
   s11.x = display.contentCenterX
   s11.y = display.contentCenterY- 100

   slideGroup:insert(s11)
   slideGroup:insert(s10)
   slideGroup:insert(s9)
   slideGroup:insert(s8)
   slideGroup:insert(s7)
   slideGroup:insert(s6)
   slideGroup:insert(s5)
   slideGroup:insert(s4)
   slideGroup:insert(s3)
   slideGroup:insert(s2)
   slideGroup:insert(s1)

   skipButton = globals.createButton(4,300,100,200,display.contentHeight-100,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back",M.skipButtonEventHandler)

   nextButton = globals.createButton(4,300,100,skipButton.x + 400,display.contentHeight-100,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Next",M.nextButtonEventHandler)
   
   sceneGroup:insert(background)
   sceneGroup:insert(slideGroup)
   sceneGroup:insert(skipButton)
   sceneGroup:insert(nextButton)
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
      composer.removeScene("settingsMenu")
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
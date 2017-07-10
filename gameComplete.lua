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
local triviaTbl = {}
triviaTbl = dbFunctions.fetchTrivia(playerData.selectedLevel)

local pGalleryStat = dbFunctions.fetchPlayerGalleryStat(playerData.playID)
local varGal = {
   "gant",
   "gmos",
   "gfly",
   "gcoc",
   "gter",
   "gbee",
   "gwas",
   "gbug",
   "gbet",
   "gdrg",
   "ggrs",
   "gstk",
   "gmts",
   "gcrt",
   "gcen",
   "gspi",
}

local playerID = tonumber( playerData.playID )
local level = tonumber( playerData.selectedLevel )
--number of unlocked in the gallery
local pStat = pGalleryStat[level]
local colName = varGal[level]

--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.options = {
    isModal = true,
    effect = "fade",
    time = 400,
    params = {
        isGamePause = nil,
      }
   }

   M.updatePlayerLevel = function()
         --checks if player level is needed to update
      if (level == 16) then
         level = 16
         dbFunctions.updatePlayerLevel(playerID,level)
         print( "max level, no update needed" )
      elseif (level == playerData.playLevel) then
         level = level + 1
         playerData.playLevel = level
         dbFunctions.updatePlayerLevel(playerID,level)
         print("level has been updated")
      else
         print("no level update")        
      end
   end

   M.nextWaveButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         playerData.wave = playerData.wave + 1
         composer.gotoScene("insectGame",globals.sceneBackTransitionOption)
      end
      return true
   end

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         playerData.wave = 1
         composer.gotoScene("playerMenu",globals.sceneBackTransitionOption)
      end
      return true
   end

   M.nextLevelButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         playerData.wave = 1
         --checks if the
         if (playerData.selectedLevel == 16) then
            playerData.selectedLevel = 16
         else
            playerData.selectedLevel = playerData.selectedLevel + 1
         end
         composer.gotoScene("insectGame",globals.sceneBackTransitionOption)
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

   leavesBg = functions.leavesBackground()

   sceneGroup:insert(backGround)
   sceneGroup:insert( leavesBg )
   print( "number of unlocked insect in the gallery: " .. pStat .. " ,col name: " .. colName )

      if (playerData.wave ~= 5) then
         --dont forget to add  the trivia!
         -- finished a wave
         print( "total trivia: " .. #triviaTbl )

         local ran = math.random(1,#triviaTbl)

         local didYouKnowText = display.newText( "did you know?",0,0,"Arial",60 )
         didYouKnowText.anchorX = 0.5
         didYouKnowText.anchorY = 0.5
         didYouKnowText.x = display.contentCenterX
         didYouKnowText.y = display.contentCenterY - 300
         didYouKnowText:setFillColor( 0,0,0 )
         sceneGroup:insert(didYouKnowText)

         local triviaTxt = display.newText( triviaTbl[ran].trivia,0,0,display.contentWidth- 200, 400,sketchFont,40 )
         triviaTxt.anchorX = 0.5
         triviaTxt.anchorY = 0
         triviaTxt.x = display.contentCenterX
         triviaTxt.y = didYouKnowText.y + 100
         triviaTxt:setFillColor( 0,0,0 )
         sceneGroup:insert(triviaTxt)

         local sourceTxt = display.newText( "*Source:".. triviaTbl[ran].source,0,0,display.contentWidth-200,400,"Arial",30 )
         sourceTxt.anchorX = 0.5
         sourceTxt.anchorY = 0
         sourceTxt.x = display.contentCenterX
         sourceTxt.y = display.viewableContentHeight - 300
         sourceTxt:setFillColor( 0,0,0 )
         sceneGroup:insert(sourceTxt)

         nextWaveButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Next Wave",
                           M.nextWaveButtonEventHandler)

         sceneGroup:insert(nextWaveButton)

      elseif (playerData.wave == 5) then
         --level is finished
         M.updatePlayerLevel()

         --local txtCongrats = display.newText( "Congratulations!",0,0,sketchFont,50)
         local txtCongrats = display.newImageRect( "images/cong.png", 525, 168 )
         txtCongrats.anchorX = 0.5
         txtCongrats.anchorY = 0.5
         txtCongrats.xScale = 1.2
         txtCongrats.yScale = 1.2
         txtCongrats.x = display.contentCenterX
         txtCongrats.y = display.contentCenterY - 400
         --txtCongrats:setFillColor( 0,0,0 )

         local txtLevelComplete = display.newText("Level Complete",0,0,sketchFont,40)
         txtLevelComplete.anchorX = 0.5
         txtLevelComplete.anchorY = 0.5
         txtLevelComplete.x = display.contentCenterX
         txtLevelComplete.y = txtCongrats.y + 200
         txtLevelComplete:setFillColor( 0,0,0 )

         local txtUnlockLevel = display.newText("Proceed to next level",0,0,sketchFont,40)
         txtUnlockLevel.anchorX = 0.5
         txtUnlockLevel.anchorY = 0.5
         txtUnlockLevel.x = display.contentCenterX
         txtUnlockLevel.y = txtLevelComplete.y + 100
         txtUnlockLevel:setFillColor( 0,0,0 )

         sceneGroup:insert(txtCongrats)
         sceneGroup:insert(txtLevelComplete)
         sceneGroup:insert(txtUnlockLevel)

            if (pStat == 5) then
               --all insects in the gallery unlocked
            else
               --unlocks one insect in the gallery
               pStat = pStat + 1
              local txtNotify = display.newText("You unlocked new content in the insect gallery.",0,0,sketchFont,25)
               txtNotify.anchorX = 0.5
               txtNotify.anchorY = 0.5
               txtNotify.x = display.contentCenterX
               txtNotify.y = txtUnlockLevel.y + 200
               txtNotify:setFillColor( 0,0,0 )
               dbFunctions.updatePlayerGalleryStat(playerData.playID,colName,pStat)
               sceneGroup:insert(txtNotify) 
            end


         nextLevelButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-300,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Next Level",
                           M.nextLevelButtonEventHandler)

         backButton = globals.createButton(4,675,100,display.contentWidth/2,display.contentHeight-150,
                           sketchFont,leavesButtonDef,leavesButtonPress,"Back to Menu",
                           M.backButtonEventHandler)

         sceneGroup:insert(nextLevelButton)
         sceneGroup:insert(backButton)
  
      end

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
      composer.removeScene("insectGame")
      if (playerData.wave == 5) and( playerData.selectedLevel == 16) then
                  if (playerData.pFinish == 0) then
            --show overlay ending
            composer.showOverlay("endingOverlay",M.options)
            dbFunctions.updatePlayerFinishStatus(playerID)
            playerData.pFinish = 1
         elseif (playerData.pFinish == 1) then
            --don't show overlay
         end
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
local composer = require( "composer" )
local scene = composer.newScene()
local widget = require( "widget" )
local functions = require( "functions" )
local globals = require( "globals" )
local playerData = require("playerData")

---------------------------------------------------------------------------------
-- All code outside of the listener functions will only be executed ONCE
-- unless "composer.removeScene()" is called.
---------------------------------------------------------------------------------

local sketchFont = globals.sketchFont
local leavesButtonDef = globals.leavesButtonDef
local leavesButtonPress = globals.leavesButtonPress
local tapSound = functions.playTapSound
local gameSound = functions.playGameSound
local splatSound = functions.playSplatSound
local clockSound = functions.clockSound
local worms = nil
local coins = 0
local currentWorm = nil
local currentGoldWorm = nil
local currentRedWorm = nil
local showGoldTimerStarted = false
local showRedTimerStarted = false
local wormIconXPos = nil
local yWormIconXPos = nil
local rWormIconXPos = nil
local gameTime = 30 --how many second the mini game is
local showGoldTimerTest = false
local quitButton = nil
local gameStarted = false
--local wormHit = {} --listener handler when the worm is hit


--scene functions----------------------------------------------------------------
--declare all scene functions here
local M = {}

   M.options = {
    isModal = true,
    effect = "fade",
    time = 400,
    params = {
        sampleVar = "my sample variable"
      }
   }

   M.checkAspectRatio = function()
      local aspectRatio = display.pixelHeight / display.pixelWidth
         if (aspectRatio >= 1.5) then
            --iphone
            return true
         else
            return false
         end
   end

   M.topUIPos = function()
      if (M.checkAspectRatio()) then
         wormIconXPos = 130
         yWormIconXPos = wormIconXPos + 130
         rWormIconXPos = yWormIconXPos + 130
      else
         wormIconXPos = 180
         yWormIconXPos = wormIconXPos + 130
         rWormIconXPos = yWormIconXPos + 130      
      end
   end

--sets worm location and its listener
   M.wormLocation = function()
      worms = display.newGroup(--[[w1,w2,w3,w4,w5,w6,w7,w8]])
      goldWorms = display.newGroup(--[[g1,g2,g3,g4,g5,g6,g7,g8]])
      redWorms = display.newGroup(--[[r1,r2,r3,r4,r5,r6,r7,r8]])
   --gets aspect ration of the device used. so that the worms positions changes
   local aspectRatio = display.pixelHeight / display.pixelWidth
      if (aspectRatio >= 1.5) then --small devices
         --normal worm
         w1 = display.newImage(worms,'images/worm.png', 65,90)
         w2 = display.newImage(worms,'images/worm.png', 208, 123)
         w3 = display.newImage(worms,'images/worm.png', 131, 149)
         w4 = display.newImage(worms,'images/worm.png', 59, 236)
         w5 = display.newImage(worms,'images/worm.png', 144, 273)
         w6 = display.newImage(worms,'images/worm.png', 228, 215)
         w7 = display.newImage(worms,'images/worm.png', 99, 387)
         w8 = display.newImage(worms,'images/worm.png', 218, 348)
         --gold worm
         g1 = display.newImage(goldWorms,'images/yellowworm.png', 65, 90)
         g2 = display.newImage(goldWorms,'images/yellowworm.png', 208, 123)
         g3 = display.newImage(goldWorms,'images/yellowworm.png', 131, 149)
         g4 = display.newImage(goldWorms,'images/yellowworm.png', 59, 236)
         g5 = display.newImage(goldWorms,'images/yellowworm.png', 144, 273)
         g6 = display.newImage(goldWorms,'images/yellowworm.png', 228, 215)
         g7 = display.newImage(goldWorms,'images/yellowworm.png', 99, 387)
         g8 = display.newImage(goldWorms,'images/yellowworm.png', 218, 348)
         --red word
         r1 = display.newImage(redWorms,'images/redworm.png', 65, 90)
         r2 = display.newImage(redWorms,'images/redworm.png', 208, 123)
         r3 = display.newImage(redWorms,'images/redworm.png', 131, 149)
         r4 = display.newImage(redWorms,'images/redworm.png', 59, 236)
         r5 = display.newImage(redWorms,'images/redworm.png', 144, 273)
         r6 = display.newImage(redWorms,'images/redworm.png', 228, 215)
         r7 = display.newImage(redWorms,'images/redworm.png', 99, 387)
         r8 = display.newImage(redWorms,'images/redworm.png', 218, 348)
      elseif (aspectRatio < 1.5) then --tablets
         --normal worm
         w1 = display.newImage(worms,'images/worm.png', 72,70)
         w2 = display.newImage(worms,'images/worm.png', 145, 121)
         w3 = display.newImage(worms,'images/worm.png', 234, 99)
         w4 = display.newImage(worms,'images/worm.png', 66, 193)
         w5 = display.newImage(worms,'images/worm.png', 160, 225)
         w6 = display.newImage(worms,'images/worm.png', 255, 177)
         w7 = display.newImage(worms,'images/worm.png', 110, 320)
         w8 = display.newImage(worms,'images/worm.png', 244, 289)
         --gold worm
         g1 = display.newImage(goldWorms,'images/yellowworm.png', 72,70)
         g2 = display.newImage(goldWorms,'images/yellowworm.png', 145, 121)
         g3 = display.newImage(goldWorms,'images/yellowworm.png', 234, 99)
         g4 = display.newImage(goldWorms,'images/yellowworm.png', 66, 193)
         g5 = display.newImage(goldWorms,'images/yellowworm.png', 160, 225)
         g6 = display.newImage(goldWorms,'images/yellowworm.png', 255, 177)
         g7 = display.newImage(goldWorms,'images/yellowworm.png', 110, 320)
         g8 = display.newImage(goldWorms,'images/yellowworm.png', 244, 289)
         --red worm
         r1 = display.newImage(redWorms,'images/redworm.png', 72,70)
         r2 = display.newImage(redWorms,'images/redworm.png', 145, 121)
         r3 = display.newImage(redWorms,'images/redworm.png', 234, 99)
         r4 = display.newImage(redWorms,'images/redworm.png', 66, 193)
         r5 = display.newImage(redWorms,'images/redworm.png', 160, 225)
         r6 = display.newImage(redWorms,'images/redworm.png', 255, 177)
         r7 = display.newImage(redWorms,'images/redworm.png', 110, 320)
         r8 = display.newImage(redWorms,'images/redworm.png', 244, 289)
      end

   worms.yScale = 3
   worms.xScale = 3
   worms.anchorX = 0.5
   worms.anchorY = 0.5

   goldWorms.xScale = 3
   goldWorms.yScale = 3
   goldWorms.achnorX = 0.5
   goldWorms.achnorY = 0.5

   redWorms.xScale = 3
   redWorms.yScale = 3
   redWorms.anchorX = 0.5
   redWorms.anchorY = 0.5

--assign event listener to every worms
      for i = 1, worms.numChildren do
         worms[i]:addEventListener('tap', M.wormHit)
         worms[i].isVisible = false
      end

      for a=1,goldWorms.numChildren do
         goldWorms[a]:addEventListener( "tap", M.goldWormHit )
         goldWorms[a].isVisible = false
      end

      for j=1,redWorms.numChildren do
         redWorms[j]:addEventListener( "tap", M.redWormHit )
         redWorms[j].isVisible = false
      end

      return true
   end

      M.options = {
    isModal = true,
    effect = "fade",
    time = 400,
    params = {
        isGamePause = nil,
      }
   }

   M.pausePlay = function()
         timer.pause( gameTimer )
         timer.pause( wormPopTimer )
         timer.pause( showGoldTimer )
      composer.showOverlay("mainGameOverlay",M.options)
   end

   M.alertHandler = function(event)
    if "clicked" == event.action then
        local i = event.index
        if 1 == i then
            --resume game
            gameStarted = true
        elseif 2 == i then
            --quit game
            timer.cancel( gameTimer )
            timer.cancel( wormPopTimer )
            timer.cancel( showGoldTimer )
            gameTimer = nil
            wormPopTimer = nil
            showGoldTimer = nil
            playerData.miniGameCoin = coins
            M.showWorm = nil
            showGoldTimerTest = false
            composer.gotoScene("playerMenu",globals.sceneBackTransitionOption) 
        end
    end
   end

   M.quitButtonEventHandler = function(event)
       if ("ended" == event.phase) then
                tapSound()
                M.pausePlay()
                gameStarted = false
                local alert = native.showAlert( "Quit mini-game", "Are you sure you want to quit? The coins you acquired will not be saved", {"No","Yes"} , M.alertHandler )
       end
   end

   M.startGame = function()
   print( "start game" )
      txtStart.isVisible = false
      gameStarted = true
      tapSound()
      quitButton:addEventListener( "touch", M.quitButtonEventHandler )
      txtStart:removeEventListener( "tap", M.startGame )
      M.startTimer()
      wormPopTimer = timer.performWithDelay(1000, M.showWorm, 0)
   end

   M.countDown = function()
      gameTime = gameTime - 1
      clockSound()
      timerText.text = "Time:" .. gameTime
         if (0 == gameTime) then
            timer.cancel( gameTimer )
            timer.cancel( wormPopTimer )
            timer.cancel( showGoldTimer )
            gameTimer = nil
            wormPopTimer = nil
            showGoldTimer = nil
            playerData.miniGameCoin = coins
            M.showWorm = nil
            showGoldTimerTest = false
            composer.showOverlay("gameOverlay",M.options)
         end
   end

   M.startTimer = function()
      gameTimer = timer.performWithDelay( 1000, M.countDown ,gameTime )
   end

   M.showWorm = function()

      local a = math.random(1,8)-- normal worm location
      local c = math.random(1,8)--red worm location

         while c == a do --make sure that normal and red worm dont have the same location
             c = math.random(1,8)
         end


            local function showGoldWorm()
               --1 out of 15 chance that will spawn a gold worm
               local goldWormChance = math.random(1,20)
               local function animGoldWorm()
                  --spawn gold worm
                  local b = math.random(1,8) --generate random gold worm location
                  --check if the gold worm location is the same with the normal worm
                     if (b == a)  then
                        b = math.random(1,8) 
                     elseif (b == c) then
                        b = math.random(1,8)                             
                     end
                  --shows the gold worm
                  currentGoldWorm = goldWorms[b]
                  currentGoldWorm.yScale = 0.2
                  currentGoldWorm.isVisible = true
                  Runtime:addEventListener("enterFrame",M.popOutGoldWorm)   
               end

                  if (currentGoldWorm == nil) then
                     if (goldWormChance == 10) then
                        print( "gold worm!!" )
                        animGoldWorm()
                     end
                     return true
                  elseif (currentGoldWorm == false) then
                     if (goldWormChance == 10) then
                        print( "gold worm!!" )
                        animGoldWorm()
                     end
                     return true
                   elseif (currentGoldWorm) then
                     Runtime:addEventListener("enterFrame",M.hideGoldWorm)
                     currentGoldWorm.isVisible = false
                      if (goldWormChance == 10) then
                        print( "gold worm!!" )
                        animGoldWorm()
                      end
                        return true
                  end
               return false                        
            end

            --prevents the showGoldTimer from stacking
            if (showGoldTimerTest) then
               --timer already started
            else
            --gold worm independent timer
               showGoldTimer = timer.performWithDelay( 500, showGoldWorm,0)
               showGoldTimerTest = true
            end

      local function animWorm()
         local normalWormChance = math.random(1,13)
         --2 out of 13 chance that will not spawn a normal worm
            if (normalWormChance == 2) or (normalWormChance == 7) then
               --no normal worm
               return false
            else
               --spawm worm
               currentWorm = worms[a]
               currentWorm.yScale = 0.2
               currentWorm.isVisible = true
               Runtime:addEventListener('enterFrame', M.popOutWorm)

               return true
            end
      end

      local function animRedWorm()
         local redWormChance = math.random(1,15)
            if(redWormChance == 1) or (redWormChance == 5) or (redWormChance == 10) or (redWormChance == 15)then
               --show red worm
               currentRedWorm = redWorms[c]
               currentRedWorm.yScale = 0.2
               currentRedWorm.isVisible = true
               Runtime:addEventListener("enterFrame", M.popOutRedWorm)

               return true
            else
               return false
            end
      end

      --for normal worm
      if (currentWorm == nil) then
         animWorm()
      elseif (currentWorm.isVisible == false) then
         animWorm()
      elseif (currentWorm.isVisible) then
         Runtime:addEventListener("enterFrame",M.hideWorm)
         currentWorm.isVisible = false
         animWorm()
      end

      --for red worm
      if (currentRedWorm == nil) then
         animRedWorm()
      elseif (currentRedWorm.isVisible == false) then
         animRedWorm()
      elseif (currentRedWorm.isVisible) then
         Runtime:addEventListener("enterFrame", M.hideRedWorm)
         currentRedWorm.isVisible = false
         animRedWorm()
      end

      return true

   end

--make normal worm pop out
   M.popOutWorm = function()
   currentWorm.yScale = currentWorm.yScale + 0.4
   
      if(currentWorm.yScale >= 1) then
         Runtime:removeEventListener('enterFrame', M.popOutWorm)
      end
   end

--make gold worm pop out
   M.popOutGoldWorm = function()
      currentGoldWorm.yScale = currentGoldWorm.yScale + 0.4
         if (currentGoldWorm.yScale >= 1) then
            Runtime:removeEventListener("enterFrame",M.popOutGoldWorm)
         end
   end

   M.popOutRedWorm = function()
      currentRedWorm.yScale = currentRedWorm.yScale + 0.4
         if (currentRedWorm.yScale >= 1) then
            Runtime:removeEventListener("enterFrame",M.popOutRedWorm)
         end
   end

   M.hideWorm = function()
      currentWorm.yScale = currentWorm.yScale - 0.4
         if (currentWorm.yScale <= 0.2) then
            Runtime:removeEventListener( "enterFrame", M.hideWorm )
         end
   end

   M.hideGoldWorm = function()
      currentGoldWorm.yScale = currentGoldWorm.yScale - 0.4
         if (currentGoldWorm.yScale <= 0.2) then
            Runtime:removeEventListener("enterFrame",M.hideGoldWorm)
         end
   end

   M.hideRedWorm = function()
      currentRedWorm.yScale = currentRedWorm.yScale - 0.4
         if (currentRedWorm.yScale <= 0.2) then
            Runtime:removeEventListener("enterFrame",M.hideRedWorm)
         end
   end

   M.wormHit = function()
   splatSound()
      print( "normal worm hit" )
      currentWorm.isVisible = false
      coins = coins + 10
      txtCoins.text = "Coins: " .. coins
   end

   M.goldWormHit = function()
      splatSound()
      print( "gold worm hit" )
      currentGoldWorm.isVisible = false
      coins = coins + 50
      txtCoins.text = "Coins: " .. coins
   end

   M.redWormHit = function()
      splatSound()
      print( "red worm hit" )
      currentRedWorm.isVisible = false
         if (coins ~= 0) then
            coins = coins - 10
         else
            coins = 0    
         end
      txtCoins.text = "Coins: " .. coins
   end

   M.backButtonEventHandler = function(event)
      if ("ended" == event.phase) then
         tapSound()
         composer.gotoScene("playerMenu",globals.sceneBackTransitionOption)
      end
   end

 --scene functions end-----------------------------------------------------------

---------------------------------------------------------------------------------

--calls when the game is being resumed
function scene:resumeGame()
   if (gameStarted) then
   timer.resume( gameTimer )
   timer.resume( wormPopTimer )
   timer.resume( showGoldTimer )
   end
end

-- "scene:create()"
function scene:create( event )

   local sceneGroup = self.view

   -- Initialize the scene here.
   -- Example: add display objects to "sceneGroup", add touch listeners, etc.

   --button template
   --button = globals.createButton(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)

   leavesBg = functions.leavesBackground()

   woodLabelImg = functions.woodLabelImg()

   holeBG = display.newImageRect( "images/gameBg.png", display.contentWidth, display.contentHeight)
   holeBG.anchorX = 0.5
   holeBG.anchorY = 0.5
   holeBG.x = display.contentCenterX
   holeBG.y = display.contentCenterY

   M.wormLocation()-- sets the worms locations and hide then

   --txtStart = display.newText( "Start",0,0,"Arial",60 )
   txtStart = display.newImageRect("images/play.png", 150, 100 )
   txtStart.anchorX = 0.5
   txtStart.anchorY = 0.5
   txtStart.x = display.contentCenterX
   txtStart.y = display.contentCenterY
   --txtStart:setFillColor( 1,0,0 )

   M.topUIPos()

   txtCoins =  display.newText("Coins: ".. coins,0,0,"Arial",40 )
   txtCoins.anchorX = 0
   txtCoins.anchorY = 0.5
   txtCoins.x = rWormIconXPos + 120
   txtCoins.y = 80
   txtCoins:setFillColor( 1,1,1 )

   topUIGroup = display.newGroup( )

   wormIcon = display.newImageRect(topUIGroup,"images/worm.png", 90, 90 )
   wormIcon.anchorX = 0.5
   wormIcon.anchorY = 0.5
   wormIcon.x = wormIconXPos
   wormIcon.y = 80

   wormIconText = display.newText("=10",0,0,"Arial",40)
   wormIconText.anchorX = 0
   wormIconText.anchorY = 0.5
   wormIconText.x = wormIconXPos + 10
   wormIconText.y = 80
   wormIconText:setFillColor( 1,1,1 )
   topUIGroup:insert(wormIconText)

   yWormIcon = display.newImageRect( topUIGroup, "images/yellowworm.png", 90, 90)
   yWormIcon.anchorX = 0.5
   yWormIcon.anchorY = 0.5
   yWormIcon.x = yWormIconXPos
   yWormIcon.y = 80

   yWormIconText = display.newText("=50",0,0,"Arial",40 )
   yWormIconText.anchorX = 0
   yWormIconText.anchorY = 0.5
   yWormIconText.x = yWormIconXPos + 10
   yWormIconText.y = 80
   topUIGroup:insert(yWormIconText)

   rWormIcon = display.newImageRect( topUIGroup, "images/redworm.png", 90, 90 )
   rWormIcon.anchorX = 0.5
   rWormIcon.anchorY = 0.5
   rWormIcon.x = rWormIconXPos
   rWormIcon.y = 80

   rWormIconText = display.newText( "=-10",0,0,"Arial",40 )
   rWormIconText.anchorX = 0
   rWormIconText.anchorY = 0.5
   rWormIconText.x = rWormIconXPos + 10
   rWormIconText.y = 80
   topUIGroup:insert(rWormIconText)
   topUIGroup:insert(txtCoins)

   timerText = display.newText( "Time: " .. gameTime,display.contentCenterX,140,"Arial", 45 )
   timerText.anchorX = 0.5
   timerText.anchorY = 0
   topUIGroup:insert(timerText)

   quitButton = display.newImageRect("images/quit.png", 80, 60 )
   quitButton.anchorX = 0
   quitButton.anchorY = 0
   quitButton.x = 30
   quitButton.y = display.contentHeight - 80

   sceneGroup:insert(holeBG)
   sceneGroup:insert(woodLabelImg)
   sceneGroup:insert(topUIGroup)
   sceneGroup:insert(leavesBg)
   sceneGroup:insert(worms)
   sceneGroup:insert(goldWorms)
   sceneGroup:insert(redWorms)
   sceneGroup:insert(quitButton)
   sceneGroup:insert(txtStart)

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
      math.randomseed(os.time())
      txtStart:addEventListener( "tap", M.startGame )
      if (1 == playerData.whackIns) and (playerData.isWhackGame) then
         --for mini game overlay
         composer.showOverlay("whackGameOverlay",M.options)
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
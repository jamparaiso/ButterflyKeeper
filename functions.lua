--put all reusable functions here
local globals = require("globals")
local widget = require("widget")
local playerData = require("playerData")
local dbFunctions = require("dbFunctions")
local composer = require("composer")
local sketchFont = globals.sketchFont
local leavesButtonDef = globals.leavesButtonDef
local leavesButtonPress = globals.leavesButtonPress

local M = {}

	M.leavesTable = {}

	M.resetInsectGameData = function()
		playerData.tries = 3
		playerData.pLife = 0
		playerData.playerInsectKilled = 0
		playerData.lastTry = false
	end

	M.resetInsectKill = function()
    	playerData.insectKill1 = 0
        playerData.insectKill2 = 0
        playerData.insectKill3 = 0
        playerData.insectKill4 = 0
        return true
	end

--check the aspect ratio of the device
	M.checkAspectRatio = function()
		local aspectRatio = display.pixelHeight / display.pixelWidth
			--iphone,ipad
			if (aspectRatio >= 1.5) then
				return true
			--ipad, tablets
			else
				return false
			end
	end

--checks the texture memory usage of the app
	M.checkMemory = function()
   		collectgarbage( "collect" )
    	local memUsage_str = string.format( "MEMORY = %.3f KB", collectgarbage( "count" ) )
    	print( memUsage_str, "TEXTURE = "..(system.getInfo("textureMemoryUsed") / (1024 * 1024) ) )
   end

--creates the background so that you wont repeat the code over and over again
	M.background = function()
	   backGround = display.newImageRect( "images/background.png", 0,0 )
	   backGround.anchorX = 0
	   backGround.anchorY = 0
	   backGround.width = display.contentWidth
	   backGround.height = display.contentHeight

	   return backGround
	end

	M.gameLogo = function(logoY,lWidth,lHeight)
		varGameLogo = display.newImageRect("images/gamelogo.png", 0, 0 )
		varGameLogo.anchorX = 0.5
		varGameLogo.anchorY = 0.5
		varGameLogo.x = display.contentCenterX
		varGameLogo.y = logoY
		varGameLogo.width = lWidth
		varGameLogo.height = lHeight

		return varGameLogo
	end

--creates the leaves on the sides
	M.leavesBackground = function()
	   leavesBg = display.newImageRect( "images/leavesbg.png", 0,0 )
	   leavesBg.anchorX = 0
	   leavesBg.anchorY = 0
	   leavesBg.width = display.contentWidth
	   leavesBg.height = display.contentHeight

	   return leavesBg
	end

	M.woodLabelImg = function()
		woodImg = display.newImageRect( "images/woodlabel.png", 675, 150 )
		woodImg.anchorX = 0.5
		woodImg.anchorY = 0
		woodImg.x = display.contentWidth / 2
		woodImg.y = 0

		return woodImg
	end

	M.woodLabelText = function(label)
		woodText = display.newText(label,0,0,sketchFont,75)
		woodText.anchorX = 0.5
		woodText.anchorY = 0.5
		woodText.x = display.contentWidth / 2
		woodText.y = 90

		return woodText
	end

--plays the tapsound
--it checks first if the tap sound is on or off
	M.playTapSound = function()
		local enabled = globals.enableTapSound
		local tapSound = globals.tapSound
			if (enabled) then
				audio.play( tapSound )
				return true
			end
	end

--plays the splatSound
	M.playSplatSound = function()
		local enabled = globals.enableTapSound
		local sound = globals.splatSound
			if (enabled) then
				audio.play( sound )
				return true
			end
	end

--plays the spraySound
	M.playSpraySound = function()
		local enabled = globals.enableTapSound
		local sound = globals.spraySound
			if (enabled) then
				audio.play( sound )
				return true
			end
	end

--plays the swatSound
	M.playSwatSound = function()
		local enabled = globals.enableTapSound
		local sound = globals.swatSound
			if (enabled) then
				audio.play( sound )
				return true
			end
	end

--coin sound
	M.playCoinSound = function()
		local enabled = globals.enableTapSound
		local sound = globals.coinSound
			if (enabled) then
				audio.play( sound )
				return
			end
	end

--plays the racketSound
	M.playRacketSound = function()
		local enabled = globals.enableTapSound
		local sound = globals.racketSound
			if (enabled) then
				audio.play( sound )
				return true
			end
	end

--plays the ticking sound
	M.clockSound = function()
		local enabled = globals.enableTapSound
		local sound = globals.clockSound
			if (enabled) then
				audio.play( sound )
				return true
			end
	end

--this changes when the tap sound button on the settings is turned on or off
	M.toggleTapSound = function()
		local toggle = globals.enableTapSound
			if (toggle) then
				globals.enableTapSound = false
			else
				globals.enableTapSound = true
			end
		return true
	end

	M.playGameSound = function()
		local enabled = globals.enableGameSound
		local gameSound = globals.gameSound
		local gameSoundHandler = globals.gameSoundHandler
			if (enabled and gameSoundHandler == nil ) then
				gameSoundHandler = audio.play( gameSound , {channel = 1,loops = -1} )
				audio.setVolume( 0.1, {channel = 1} )
				globals.gameSoundHandler = gameSoundHandler
				return true
			end
	end

	M.playPlaySound = function( )
		local enabled = globals.enableGameSound
		local playSound = globals.playSound
		local playSoundHandler = globals.playSoundHandler
			if (enabled and playSoundHandler == nil) then
				playSoundHandler = audio.play(playSound, {channel = 10, loops = -1} )
				audio.setVolume( 0.1, {channel = 10} )
				globals.playSoundHandler = playSoundHandler
				return true
			end
	end

	M.stopPlaySound = function()
		local playSoundHandler = globals.playSoundHandler
		audio.stop( playSoundHandler )
		audio.dispose( playSoundHandler )
		globals.playSoundHandler = nil
	end

	M.toggleGameSound = function()
		local toggle = globals.enableGameSound
		local gameSoundHandler = globals.gameSoundHandler
			if (toggle) then
				audio.stop( gameSoundHandler )
				globals.enableGameSound = false
				globals.gameSoundHandler = nil
			else
				globals.enableGameSound = true
				M.playGameSound()
			end

		return true
	end

   M.onComplete = function( event )
       if "clicked" == event.action then
           local i = event.index
           if 1 == i then
           	 playerData.tempPlayerName = ""
			 playerData.playID = nil
             composer.gotoScene("storyBoard",globals.sceneNextTransitionOption)
           end
       end
   end

--load slot button
--dont touch anything cuz its all dynamic
	M.loadSlotButton = function(numActive,playerDataTable)
		local t = numActive
		local yPos = 170
		local pData = {}
		local loadSlotButtonHandler = {}
		--change the size of the button base on the device

		if M.checkAspectRatio() then
			bWidth = 600
			bHeight = 300
			bGap = 350
			bLeft = 100
		else
			bWidth = 700
			bHeight = 250
			bGap = 270
			bLeft = 100
		end

		--[[local aspectRatio = globals.aspectRatio
			--iphone, samsung s3
			if (aspectRatio >= 1.5) then
				bWidth = 600
				bHeight = 300
				bGap = 350
				bLeft = 100
			--ipad, tablets
			elseif (aspectRatio < 1.5) then
				bWidth = 700
				bHeight = 250
				bGap = 270
				bLeft = 100
			end]]

		local function alertHandler(event)
			if ("clicked" == event.action) then
				if (event.index == 2) then
					--delete confirmed
					globals.isDelete = false
					globals.isLoad = false
					dbFunctions.updatePlayerStatus(playerData.playID)
					dbFunctions.addPlayer(playerData.tempPlayerName)
					local alert = native.showAlert( "Success", "Congratulations " .. playerData.tempPlayerName .. " your profile has been created.", { "OK" }, M.onComplete )
					--composer.gotoScene("storyBoard",globals.sceneNextTransitionOption)
					--go to the player menu with the new created profile
				elseif (event.index == 1) then
					--didnt delete
				end
			end
		end

		local function displayAlert()
			alert = native.showAlert( "Confirm delete", "Deleted profile cannot be recovered. Are you sure?",{"No","Yes"}, alertHandler )
		end

		--create the dynamic button
		for i=1,t do
			pData[i] = {
				playerID = playerDataTable[i].playerID,
				playerName = playerDataTable[i].playerName,
				level = playerDataTable[i].level,
				insectkilled = playerDataTable[i].insectkilled,
				coins = playerDataTable[i].coins
			}

			loadSlotButtonHandler[i] = function(event)
				local phase = event.phase
					if ("ended" == phase) then
						M.playTapSound()
							if (globals.isDelete) then
								--make an alert if sure to delete
								print( "delete alert" )
								playerData.playID = pData[i].playerID
								displayAlert()
							else
								playerData.playID = pData[i].playerID --pass the id into the playerdata.lua
								globals.isLoad = true
								print("playerID: " .. playerData.playID .. " Loaded" )
								composer.gotoScene("playerMenu",globals.sceneNextTransitionOption)
							end
					end
			end

			--buttons
				local slotButtonName = ("saveSlot".. i)
					slotButtonName = widget.newButton
					{
						width = bWidth,
						height = bHeight,
						top = yPos,
						left = bLeft,
						defaultFile = "images/loadbg.png",
						overFile = "images/loadbg.png",
						id = ("slotButtonID" .. i),
						onEvent = loadSlotButtonHandler[i],
					}

				local playerNameText = display.newText("Name: " .. pData[i].playerName,0,0,"Arial" or native.systemFont,40)
				playerNameText.anchorX = 0
				playerNameText.anchorY = 0.5
				playerNameText.x = bLeft + 20
				playerNameText.y = yPos + 50
				playerNameText:setFillColor( 0,0,0 )

				local playerLevelText = display.newText("Level: " .. pData[i].level,0,0,"Arial" or native.systemFont,40)
				playerLevelText.anchorX = 0
				playerLevelText.anchorY = 0.5
				playerLevelText.x = bLeft + 20
				playerLevelText.y = playerNameText.y + 70
				playerLevelText:setFillColor( 0,0,0 )

				local playerCoins = display.newText( "Coins: " .. pData[i].coins,0,0,"Arial" or native.systemFont,40 )
				playerCoins.anchorX = 0
				playerCoins.anchorY = 0.5
				playerCoins.x = bLeft + 20
				playerCoins.y = playerLevelText.y + 70
				playerCoins:setFillColor( 0,0,0 )

				loadSlotButton:insert(slotButtonName)
				loadSlotButton:insert(playerNameText)
				loadSlotButton:insert(playerLevelText)
				loadSlotButton:insert(playerCoins)
				yPos = yPos + bGap
		end
	end

--falling leaves effect
	M.fallingLeavesEffect = function()
		local lWidth
		local lHeight
		local ranLeaf = math.random(1,4)

		if (ranLeaf == 1) then
			lWidth = 31
			lHeight = 24
		elseif (ranLeaf == 2) then
			lWidth = 80
			lHeight = 88
		elseif (ranLeaf == 3) then
			lWidth = 48
			lHeight = 42
		elseif (ranLeaf == 4) then
			lWidth = 40
			lHeight = 38
		end

		local leafTmp = display.newImageRect("images/fallingleaves/leaf".. ranLeaf .. ".png", lWidth, lHeight )

		leafTmp.y = -30
		leafTmp.x = math.random(1,display.contentWidth)
		leavesGroup:insert(leafTmp)

		-- Give it a body so 'gravity' can pull on it
		physics.addBody( leafTmp, { radius = leafTmp.contentWidth/2} )

		leafTmp.angularVelocity = math.random( 1, 180 )
		leafTmp.linearDamping = 5

	timer.performWithDelay( 20000,
		function()
			M.leavesTable[leafTmp] = nil
			display.remove( leafTmp )
		end )

	return true

	end

return M
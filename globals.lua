--put all global variables here
local widget = require("widget")

local M = {}
	
	M.activateMemoryChecker = false

	M.leaderParam = nil

	M.sketchFont = "SketchLogs" or native.systemFont

	M.leavesButtonDef = "images/woodbutton.png"

	M.leavesButtonPress = "images/woodbutton.png"

	M.logButtonDef = "images/logbutton.png"

	M.logButtonPress = "images/logbutton.png"

	M.pauseButtonPress = "images/pausebutton.png"

	M.lockButton = "images/lock.png"

	M.totalActiveSaves = nil

	M.isDelete = false --used when deleting profile

	M.isLoad = false --used when loading profile

	M.aspectRatio = display.pixelHeight / display.pixelWidth

	M.createButton = function(id,bWidth,bHeight,bX,bY,bFont,bDefFile,bOverFile,bLabel,bHandler)
	   	button = widget.newButton
	   		{
		      width = bWidth,--675,
		      height = bHeight,--100,
		      x = bX,--display.contentWidth / 2,
		      y = bY,--display.contentHeight - 900 ,
		      font = bFont,--sketchFont,
		      fontSize = 55,--bFontSize,--55,
		      --reposition the text inside the button
		      labelXOffset = 0,
		      labelYOffset = 7,
		      defaultFile = bDefFile,--leavesButtonDef,
		      overFile = bOverFile,--leavesButtonPress,
		      label = bLabel,--"New Game",
		      labelColor = {
		            default= {255,255,255}, 
		            over = {0,0,0,0.5}
		            },
		      --emboss = true,
		      onEvent = bHandler
	   		}

   		button.id = id

   		return button
	end

	M.enableTapSound = true

	M.tapSound =  audio.loadSound("sounds/tap.wav")

	M.splatSound = audio.loadSound("sounds/splat.wav")

	M.spraySound = audio.loadSound( "sounds/spray.wav")

	M.swatSound = audio.loadSound( "sounds/swat.wav")

	M.racketSound = audio.loadSound("sounds/eracket.wav")

	M.coinSound = audio.loadSound( "sounds/coin.wav" )

	M.clockSound = audio.loadSound( "sounds/ticking.wav" )

	M.enableGameSound = true

	M.gameSoundHandler = nil

	M.playSoundHandler = nil

	M.gameSound = audio.loadStream ( "sounds/music_loopbak.wav" )

	M.playSound = audio.loadStream( "sounds/gameplay.wav" )

	M.sceneNextTransitionOption = 
		{
	    	effect = "slideLeft",
	    	time = 250,
	    	--params = { level="Level 1", score=currentScore }
		}

	M.sceneBackTransitionOption = 
		{
	    	effect = "slideRight",
	    	time = 250,
	    	--params = { level="Level 1", score=currentScore }
		}

	M.sceneFadeTransitionOption = 
		{
	    	effect = "fade",
	    	time = 400,
	    	--params = { level="Level 1", score=currentScore }
		}

return M
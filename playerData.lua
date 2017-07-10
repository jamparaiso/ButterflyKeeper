--put all player related data here

local M = {}

	M.tempPlayerName = ""-- this will be used to temporary hold the name of the player during new game
	
	M.playID = nil --holds the player id

	M.playLevel = nil

	M.selectedLevel = 1 --used to hold the selected level of the player

	M.whackIns = nil

	M.gameIns = nil

	M.isWhackGame = nil

	M.playerCoin = nil

	M.miniGameCoin = nil 

	M.wave = 1 -- used to hold what wave the player is

	M.tries = 3 -- how many tries the player has

	M.pLife = nil --life of the player

	M.lastTry = false --checks if player last try

	M.insGallerySel = 0 --selected insect in the gallery table

	M.pFinish = nil -- check if the player has finish the game

	--player insects killed
	--
	M.insectKill1 = 0

	M.insectKill2 = 0

	M.insectKill3 = 0

	M.insectKill4 = 0

	M.playerInsectKilled = 0

return M
--put all database functions here
local sqlite = require("sqlite3")
local defaultValues = require("defaultValues")
local triviaTable = require("triviaTable")
local playerData = require("playerData")
local galleryTable = require("galleryTable")

local M = {}
	
	--filename of the db and where it will be saved
	M.path = system.pathForFile( "db.sqlite" , system.DocumentsDirectory )

	--create a table for the player data
	M.createPlayerDbTable = function()
		db = sqlite.open(M.path)

		sql = [[
			CREATE TABLE IF NOT EXISTS playerData (
				id INTEGER PRIMARY KEY,
				playerName,
				level INTEGER,
				insectkilled INTEGER,
				coins INTEGER,
				minigametime INTEGER,
				whackins INTEGER,
				gameins INTEGER,
				gant INTEGER,
				gmos INTEGER,
				gfly INTEGER,
				gcoc INTEGER,
				gter INTEGER,
				gbee INTEGER,
				gwas INTEGER,
				gbug INTEGER,
				gbet INTEGER,
				gdrg INTEGER,
				ggrs INTEGER,
				gstk INTEGER,
				gmts INTEGER,
				gcrt INTEGER,
				gcen INTEGER,
				gspi INTEGER,
				finish INTEGER,
				status INTEGER
				);
		]]

		db:exec(sql)

		db:close()--always close the db after using

		return true
	end

--creates the table for trivia
	M.createTriviaTable = function()
		db = sqlite.open(M.path)

		sql = [[
				CREATE TABLE IF NOT EXISTS triviaTable (
					id INTEGER PRIMARY KEY,
					insectID INTEGER,
					trivia,
					source
					);
			  ]]

		db:exec(sql)
		db:close()
		return true
	end

--adds data into the trivia table
	M.addTriviaData = function()
		local triviaTableData = {}
		triviaTableData = triviaTable.triviaTableList
		print( "Total Trivia: " .. #triviaTableData )
		db = sqlite.open(M.path)

		local totalRows = 0
		--checks if there is data in the triviaTable in the DB
			for row in db:nrows("SELECT * FROM triviaTable") do
				totalRows = totalRows + 1
			end

			if (0 == totalRows) then
				for i=1, #triviaTableData do
					sql = [[
						INSERT INTO triviaTable ("insectID", "trivia","source")
						VALUES ("]] .. tonumber(triviaTableData[i].insectID) ..
						[[","]] .. triviaTableData[i].trivia ..
						[[","]] .. triviaTableData[i].source ..
						[[");]]
					db:exec(sql)
				end
			end
		db:close()
		return true
	end

--fetch trivia data
	M.fetchTrivia = function(selectedLevel)
		db = sqlite.open(M.path)
		local l = selectedLevel
		local myTable = {}
		local result = {}

		sql = "SELECT * FROM triviaTable WHERE insectID = " .. l

			for row in db:nrows(sql) do
			myTable[#myTable+1] = 
			{
				insectID = row.insectID,
				trivia = row.trivia,
				source = row.source,
			}
			end

		db:close()

		result = myTable
		
		return result
	end

--create gallery table
	M.createGalleryTable = function()
		db = sqlite.open(M.path)

		sql = [[
				CREATE TABLE IF NOT EXISTS galleryTable (
					id INTEGER PRIMARY KEY,
					insectID INTEGER,
					imgSource,
					description,
					source
					);
			  ]]

		db:exec(sql)
		db:close()
		return true
	end

--adds data into the gallery table
	M.addGalleryData = function()
		local galleryTableData = {}
		galleryTableData = galleryTable.insectTableList
		print( "Total Gallery: " .. #galleryTableData )
		db = sqlite.open(M.path)

		local totalRows = 0
		--checks if there is data in the triviaTable in the DB
			for row in db:nrows("SELECT * FROM galleryTable") do
				totalRows = totalRows + 1
			end

			if (0 == totalRows) then
				for i=1, #galleryTableData do
					sql = [[
						INSERT INTO galleryTable ("insectID", "imgSource","description","source")
						VALUES ("]] .. tonumber(galleryTableData[i].insectID) ..
						[[","]] .. galleryTableData[i].imgSource ..
						[[","]] .. galleryTableData[i].description ..
						[[","]] .. galleryTableData[i].source ..
						[[");]]
					db:exec(sql)
				end
			end
		db:close()
		return true
	end

--fetch gallery data
	M.fetchGalleryImg = function(insID,limit)
		db = sqlite.open(M.path)
		local l = insID
		local a = limit
		local myTable = {}
		local result = {}

		sql = "SELECT * FROM galleryTable WHERE insectID = " .. l .. " LIMIT " .. a

			for row in db:nrows(sql) do
			myTable[#myTable+1] = 
			{
				insectID = row.insectID,
				imgSource = row.imgSource,
				description = row.description,
				source = row.source,
			}
			end

		db:close()

		result = myTable
		
		return result
	end


	--add new player data
	M.addPlayer = function(playerName)
		db = sqlite.open(M.path)

		tbl = defaultValues.newPlayerDefaultData

		sql = [[
			INSERT INTO playerData ("playerName","level","insectkilled","coins","minigametime","whackins","gameins","gant","gmos","gfly",
				"gcoc","gter","gbee","gwas","gbug","gbet","gdrg","ggrs","gstk","gmts","gcrt","gcen","gspi","finish","status")
			VALUES ("]] .. playerName ..
			[[","]] .. tbl.level ..
			[[","]] .. tbl.insectkilled ..
			[[","]] .. tbl.coins ..
			[[","]] .. tbl.minigametime ..
			[[","]] .. tbl.whackins ..
			[[","]] .. tbl.gameins ..
			[[","]] .. tbl.gant ..
			[[","]] .. tbl.gmos ..
			[[","]] .. tbl.gfly ..
			[[","]] .. tbl.gcoc ..
			[[","]] .. tbl.gter ..
			[[","]] .. tbl.gbee ..
			[[","]] .. tbl.gwas ..
			[[","]] .. tbl.gbug ..
			[[","]] .. tbl.gbet ..
			[[","]] .. tbl.gdrg ..
			[[","]] .. tbl.ggrs ..
			[[","]] .. tbl.gstk ..
			[[","]] .. tbl.gmts ..
			[[","]] .. tbl.gcrt ..
			[[","]] .. tbl.gcen ..
			[[","]] .. tbl.gspi ..
			[[","]] .. tbl.finish ..
			[[","]] .. tbl.status ..
			[[");]]
		db:exec(sql)
		db:close()
		print( "profile of " .. playerName .. " successfully created.." )

		return true
	end


	--fetch all player save data
	M.fetchAllplayerSaveData = function()
		local fetchData = {}
		db = sqlite.open(M.path)

		sql = "SELECT * FROM playerData WHERE status = 1"

			for row in db:nrows(sql) do
				fetchData[#fetchData+1] =
				{
					playerID = row.id,
					playerName = row.playerName,
					level = row.level,
					insectkilled = row.insectkilled,
					coins = row.coins,
					minigametime = row.minigametime,
					finish = row.finish,
					status = row.status,
				}
			end

			db:close( )

			return fetchData
	end

--fetch player galleryStatus
	M.fetchPlayerGalleryStat = function(playID)
		local fetchData = {}
		local id = tonumber( playID )
		db = sqlite.open(M.path)

		sql = "SELECT * FROM playerData WHERE id = " .. id

			for row in db:nrows(sql) do
				fetchData =
				{
					row.gant,
					row.gmos,
					row.gfly,
					row.gcoc,
					row.gter,
					row.gbee,
					row.gwas,
					row.gbug,
					row.gbet,
					row.gdrg,
					row.ggrs,
					row.gstk,
					row.gmts,
					row.gcrt,
					row.gcen,
					row.gspi,
				}
			end

		db:close()
		return fetchData
	end

--update player insect gallery stat
	M.updatePlayerGalleryStat = function(playID,colName,stat)
		local id = tonumber( playID )
		local col = colName
		local a = tonumber( stat )

		db = sqlite.open(M.path)

		sql = "UPDATE playerData SET " .. col .. " = " .. a .. " WHERE id = " .. id

		db:exec(sql)
		db:close()
		return true
	end

--update player finish status
	M.updatePlayerFinishStatus = function(playID)
		local id = playID
		db = sqlite.open(M.path)

		sql = "UPDATE playerData SET finish = 1 WHERE id = " .. id
		print( sql )
		db:exec(sql)
		db:close()

		print( "player finish stat updated" ) 
		return true
	end

	--change that profile status of the player 1= active 0=deleted/not active
	M.updatePlayerStatus = function(playerID)
		db = sqlite.open(M.path)

		sql = "UPDATE playerData SET status = 0 WHERE id = " .. playerID

		db:exec(sql)
		db:close()

		print( "Added new insect in the gallery" )

		return true
	end

	--count active saves
	M.countActiveSave = function()
		db = sqlite.open(M.path)

		sql = [[
			SELECT * FROM playerData WHERE status = 1;
		]]

		local totalRows = 0
			for row in db:nrows(sql) do
				totalRows = totalRows + 1
			end

		db:close()

		return totalRows	
	end

--fetch the last created profile
--used when loading newly created profile
	M.getLastRowId = function()
		db = sqlite.open(M.path)

		sql = "SELECT * FROM playerData order by id DESC limit 1"
		local result = {}
		for row in db:nrows(sql) do
				result =
				{
					playerID = row.id,
					playerName = row.playerName,
					level = row.level,
					insectkilled = row.insectkilled,
					coins = row.coins,
					minigametime = row.minigametime,
					whackins = row.whackins,
					gameins = row.gameins,
					status = row.status,
				}
		end	

		db:close( )
		playerData.playID = result.playerID
		--print( "playerID: " .. playerData.playID )
		return result
	end

--fetch the player profile based on id
--used when loading player profile from load menu
	M.fetchPlayerById = function(playerID)
		db = sqlite.open(M.path)

		sql = "SELECT * FROM playerData WHERE id = " .. playerID

		for row in db:nrows(sql) do
			result = row
		end

		db:close( )

		return result
	end

--checks if there are same name in DB
	M.checkName = function(pName)
		db = sqlite.open(M.path)
		local counter = 0

		sql = "SELECT * FROM playerData WHERE playerName = " .. '"' .. pName .. '"'

			for row in db:nrows(sql) do
				counter = counter + 1
			end

			db:close()

			if (counter >= 1) then
				print( "Name conflict" )
				return false
			else
				print( "Name available" )
				return true
			end
	end

--updates the player instructions overlay
	M.updateIfInstructionWillShow = function(playerID,whatIns)

		if (1 == whatIns) then
			colName = "whackins"
		elseif (2 == whatIns) then
			colName = "gameins"
		end

		db = sqlite.open(M.path)

		sql = "UPDATE playerData SET " .. colName .. " = 0 WHERE id = " .. playerID

		db:exec(sql)

		db:close( )

		return true
	end

--updates the palyer game coins
--for any deduction in the coin
	M.updatePlayerGameCoinDeduction = function(playerID,coins)
		db = sqlite.open(M.path)
		local coin = tonumber(coins)
		sql = "UPDATE playerData SET coins = " .. coin .. " WHERE id = " .. playerID
		db:exec(sql)
		db:close()
		return true
	end

--updates the player game coins
--for any game coin addition
	M.updatePlayerGameCoin = function(playerID,coins)
		db = sqlite.open(M.path)
		local result = {}
		local currentCoins = nil
		--gets the current coins first
		sql = "SELECT coins FROM playerData WHERE id = " .. playerID
		for row in db:nrows(sql) do
			result = row
		end
		currentCoins = result.coins

		--updates the coins
		totalCoins = tonumber(coins) + tonumber(currentCoins)
		--checks if the player coins exceeds the limit
		if (totalCoins >= 999999) then
			totalCoins = 999999 
		end
		sql = "UPDATE playerData SET coins = " .. totalCoins .. " WHERE id = " .. playerID

		db:exec(sql)
		db:close()

		return true
	end

--fetch player coins
	M.fetchPlayerCoin = function(playerID)
		db = sqlite.open(M.path)
		local currentCoins
		--gets the current coins first
		sql = "SELECT coins FROM playerData WHERE id = " .. playerID
		for row in db:nrows(sql) do
			result = row
		end
		currentCoins = result.coins

		return currentCoins
	end

--fetch player killed insects
	M.fetchPlayerInsectKill = function(playerID)
		db = sqlite.open(M.path)
		local insKill
		sql = "SELECT insectkilled FROM playerData WHERE id = " .. playerID
		for row in db:nrows(sql) do
			result = row
		end
		insKill = result.insectkilled

		return insKill
	end

--updates the player killed insects
	M.updatePlayerInsectKill = function(playerID,insKilled)
		db = sqlite.open(M.path)
		local insKill = tonumber( insKilled )
		sql = "UPDATE playerData SET insectkilled = " .. insKill .. " WHERE id = " .. playerID

		db:exec(sql)
		db:close()
		return true
	end

--updates the player mini game time
	M.updateMiniGameTime = function(playerID)
		db = sqlite.open(M.path)

		sql = "UPDATE playerData SET minigametime = " .. tonumber(os.time()) .. " WHERE id = " .. playerID

		db:exec(sql)
		db:close()
		return true
	end

--fetch player level
	M.fetchPlayerLevel = function(playerID)
		db = sqlite.open(M.path)

		sql = "SELECT level FROM playerData WHERE id = " .. playerID

		for row in db:nrows(sql) do
			result = row.level
		end

		db:close( )

		return result
	end

--update player level
	M.updatePlayerLevel = function(playerID,level)
		db = sqlite.open(M.path)

		sql = "UPDATE playerData SET level = " .. tonumber(level) .. " WHERE id = " .. playerID

		db:exec(sql)
		db:close()

		return true
	end

--fetch the top insect killer profiles
	M.fetchTopInsectKiller = function(colName)
		db = sqlite.open(M.path)
		local col = colName
		local myTable = {}
		local result = {}

		sql = "SELECT * FROM playerData WHERE " .. col .. " <> 0 ORDER BY ".. col .." DESC LIMIT 10"

		for row in db:nrows(sql) do
			myTable[#myTable+1] = 
			{
				playerName = row.playerName,
				level = row.level,
				insectkilled = row.insectkilled,
				coins = row.coins,
			}
		end
		db:close()

		result = myTable

		return result
	end

return M
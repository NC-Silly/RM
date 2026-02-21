local MainRunner = require(game.ReplicatedStorage.ModModule)

local MainRunner = require(game.ReplicatedStorage.ModModule)

MainRunner.CreateGui(
	"Super Speed",                -- Name
	"1.0",                        -- Version
	"rbxassetid://12950682859",   -- Icon ID
	"Test Description",           -- Description

	-- Function: When Turned ON
	function() 
		local char = game.Players.LocalPlayer.Character
		if char and char:FindFirstChild("Humanoid") then
			char.Humanoid.WalkSpeed = 100 
		end
	end, 

	-- Function: When Turned OFF
	function() 
		local char = game.Players.LocalPlayer.Character
		if char and char:FindFirstChild("Humanoid") then
			char.Humanoid.WalkSpeed = 16 
		end
	end
)

local ModModule = {}
local UserInputService = game:GetService("UserInputService")

-- Internal variable to keep track of the GUI
local menuGui = nil

function ModModule.OpenAndClose()
	if menuGui then
		local mainFrame = menuGui:FindFirstChild("Main")
		if mainFrame then
			mainFrame.Visible = not mainFrame.Visible
		end
	end
end

function ModModule.CreateGui(Name, Version, Icon, MDescription, onFunction, offFunction)
	local playerGui = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	-- Setup the ScreenGui if it doesn't exist
	if not menuGui then
		menuGui = playerGui:FindFirstChild("ModMenuGui")
		if not menuGui then
			menuGui = script.ModMenuRoblox:Clone()
			menuGui.Name = "ModMenuGui"
			menuGui.Parent = playerGui

			-- Listen for F5 Keypress
			UserInputService.InputBegan:Connect(function(input, gameProcessed)
				if not gameProcessed and input.KeyCode == Enum.KeyCode.F5 then
					ModModule.OpenAndClose()
				end
			end)
		end
	end

	local modEntry = script.Example:Clone()
	modEntry.Name = Name
	modEntry.Parent = menuGui.Main.Mods

	modEntry.MName.Text = Name
	modEntry.MIcon.Image = Icon
	modEntry.MVersion.Text = "Version: " .. Version
	modEntry.MDescription.Text = MDescription

	local isEnabled = false

	modEntry.DownloadButton.MouseButton1Click:Connect(function()
		isEnabled = not isEnabled 

		if isEnabled then
			modEntry.DownloadButton.Text = "UnInstall"
			if onFunction then onFunction() end 
		else
			modEntry.DownloadButton.Text = "Install"
			if offFunction then offFunction() end
		end
	end)
end

return ModModule

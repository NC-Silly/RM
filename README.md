--[[
    [ DISTRIBUTION NOTICE ]
    This module is distributed independently due to current Roblox Creator Store 
    content policies and metadata restrictions. To ensure continued updates 
    and stability, please source this module directly from the official discord.
    DiscordLink: https://discord.gg/RyNjx2d7
]]

--[[
    [ DOCUMENTATION: HOW TO REGISTER A MOD ]
    
    Use the 'CreateGui' method to register a new entry into the Mod Menu.
    
    Parameters:
    1. Title (string)       : Display name of the modification.
    2. Version (string)     : Current semantic version (e.g., "1.0.0").
    3. IconID (string)      : Rbxassetid for the display thumbnail.
    4. Description (string) : Short summary of the mod's functionality.
    5. OnInstall (func)     : Logic executed when the mod is toggled ON.
    6. OnUninstall (func)   : Logic executed when the mod is toggled OFF.
--]]

--[[MainRunner.CreateGui(
    "Super Speed",                -- Mod Title
    "1.0.0",                      -- Version
    "rbxassetid://12950682859",   -- Mod Icon
    "Increases player WalkSpeed to 100 studs per second.", -- Description

    -- @callback: OnInstall
    function() 
        local character = game.Players.LocalPlayer.Character
        local humanoid  = character and character:FindFirstChild("Humanoid")
        
        if humanoid then
            humanoid.WalkSpeed = 100 
        end
    end, 

    -- @callback: OnUninstall
    function() 
        local character = game.Players.LocalPlayer.Character
        local humanoid  = character and character:FindFirstChild("Humanoid")
        
        if humanoid then
            humanoid.WalkSpeed = 16 
        end
    end
) ]]

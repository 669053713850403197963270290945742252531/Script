-- Break In (Story)

local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'

local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()

local player = game:GetService("Players").LocalPlayer
local getgamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local teleportservice = game:GetService("TeleportService")

local Window = Library:CreateWindow({
    Title = 'Corrade Private',
    Center = true,
    AutoShow = true,
    TabPadding = 8,
    MenuFadeTime = 0.2
})

-- Loop Values

_G.godmodeloop = true
_G.removeeatsound = true
_G.loophideenergy = true
_G.autoeat = true
_G.noclip = true

-- Loop Functions

function godmodeloop()
    while _G.godmodeloop == true do
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Apple")
        game:GetService("ReplicatedStorage").RemoteEvents.Energy:FireServer(15, "Apple")

        wait()
    end
end

function removeeatsound()
    while _G.removeeatsound == true do
        for i,v in pairs(game.Workspace.Sounds:GetDescendants()) do
            if v.Name == "Temp" and v:IsA("Sound") then
                v.Playing = false
            end
        end

        wait()
    end
end

function loophideenergy()
    while _G.loophideenergy == true do
        for i,v in pairs(game.Players.LocalPlayer.PlayerGui.EnergyBar.EnergyBar.EnergyBar:GetDescendants()) do
            if v.Name == "Template" and v:IsA("TextLabel") then
                v.Visible = false
            end
        end

        wait()
    end
end

function autoeat()
    while _G.autoeat == true do
        -- Removing the eat sound

        for i,v in pairs(game.Workspace.Sounds:GetDescendants()) do
            if v.Name == "Temp" and v:IsA("Sound") then
                v.Playing = false
            end
        end

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(5, "Chips")

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(15, "Cookie")

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(15, "BloxyCola")

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(15, "Apple")

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(1, "Pizza1")

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(6, "Pizza3")

        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("Energy"):FireServer(5, "ExpiredBloxyCola")

        wait()
    end
end

function noclip()
    while _G.noclip == true do
        for i, v in pairs(player.Character:GetDescendants()) do
            pcall(function()
                if v:IsA("BasePart") or v:IsA("UnionOperation") then
                    v.CanCollide = false
                end
            end)
        end

        wait(1)
    end
end









-- Auto Give Items Values




local giveitemdelay = 1

_G.givemedkit = true
_G.givecure = true
_G.givechips = true
_G.givebloxycola = true
_G.giveapple = true
_G.givepizza = true
_G.givecookie = true
_G.giveplank = true

-- Auto Give Item Value Function

function givemedkit()
    while _G.givemedkit == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("MedKit")
    end
end

function givecure()
    while _G.givecure == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cure")
    end
end

function givechips()
    while _G.givechips == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Chips")
    end
end

function givebloxycola()
    while _G.givebloxycola == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("BloxyCola")
    end
end

function giveapple()
    while _G.giveapple == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Apple")
    end
end

function givepizza()
    while _G.givepizza == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Pizza3")
    end
end

function givecookie()
    while _G.givecookie == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Cookie")
    end
end

function giveplank()
    while _G.giveplank == true do
        wait(giveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Plank")
    end
end



local Tabs = {
    Information = Window:AddTab('Information'),
    Blatant = Window:AddTab('Blatant'),
    Utility = Window:AddTab('Utility'),
    Misc = Window:AddTab('Misc'),
    ['UI Settings'] = Window:AddTab('Configs'),
}

-- Game Info Tab

local GameInfoGroup = Tabs.Information:AddLeftGroupbox('Game Information')
local AccountInfoGroup = Tabs.Information:AddRightGroupbox('Account Information')

-- Game Info Group

GameInfoGroup:AddDivider()

GameInfoGroup:AddLabel('Game Supported: true')
GameInfoGroup:AddLabel('Game Name: '..getgamename)
GameInfoGroup:AddLabel('Place ID: '..game.PlaceId)

-- Account Info Group

AccountInfoGroup:AddDivider()

AccountInfoGroup:AddLabel('Username: '..player.Name)
AccountInfoGroup:AddLabel('Display Name: '..player.DisplayName)
AccountInfoGroup:AddLabel('Account Age: '..player.AccountAge.." Days")

-- Blatant Tab

local CombatGroup = Tabs.Blatant:AddLeftGroupbox('Combat')
local LocalPlayerGroup = Tabs.Blatant:AddRightGroupbox('LocalPlayer')

-- Combat Group

CombatGroup:AddDivider()

CombatGroup:AddToggle('GodmodeToggle', {
    Text = 'Godmode',
    Default = false,
    Tooltip = "Makes you invincible",

    Callback = function(Value)
        _G.godmodeloop = Value
        godmodeloop()
    end
})

CombatGroup:AddToggle('RemoveEat', {
    Text = 'Remove Eat Sound',
    Default = false,
    Tooltip = "Removes the eating sound",

    Callback = function(Value)
        _G.removeeatsound = Value
        removeeatsound()
    end
})

CombatGroup:AddToggle('HideEnergyUI', {
    Text = 'Hide Gain Energy UI',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.loophideenergy = Value
        loophideenergy()
    end
})

-- LocalPlayer Group

LocalPlayerGroup:AddDivider()

LocalPlayerGroup:AddSlider('WalkSpeed', {
    Text = 'WalkSpeed',
    Default = 16,
    Min = 16,
    Max = 300,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        player.Character.Humanoid.WalkSpeed = Value
    end
})

LocalPlayerGroup:AddSlider('JumpPower', {
    Text = 'JumpPower',
    Default = 50,
    Min = 50,
    Max = 200,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        player.Character.Humanoid.JumpPower = Value
    end
})

LocalPlayerGroup:AddToggle('Noclip', {
    Text = 'Noclip',
    Default = false,
    Tooltip = "Allows you to clip through walls",

    Callback = function(Value)
        _G.noclip = Value
        noclip()
    end
})

-- Utility Tab

local GiveItemGroup = Tabs.Utility:AddLeftGroupbox('Give Item')
local ItemGroup = Tabs.Utility:AddRightGroupbox('Auto Give Items')
local OthersGroup1 = Tabs.Utility:AddLeftGroupbox('Other')

local normalgiveitemdelay = 1

-- Give Item Group

GiveItemGroup:AddDivider()

GiveItemGroup:AddDropdown('ItemDropdown', {
    Values = {'Bat', 'MedKit', 'TeddyBloxpin', 'Cure', 'Chips', 'Cookie', 'BloxyCola', 'Apple', 'Pizza', 'ExpiredBloxyCola'},
    Default = 0,
    Multi = false,

    Text = 'Item List',
    Tooltip = 'Select the item to give yourself',

    Callback = function(Value)
        wait(normalgiveitemdelay)
        game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer(Value)

        if Value == "Pizza" then
            game:GetService("ReplicatedStorage").RemoteEvents.GiveTool:FireServer("Pizza3")
        end
    end
})

GiveItemGroup:AddSlider('GiveDelay', {
    Text = 'Give Item Delay',
    Default = 0,
    Min = 0,
    Max = 3,
    Rounding = 0,
    Compact = false,

    Callback = function(Value)
        normalgiveitemdelay = Value
    end
})

-- Auto Give Items Group

ItemGroup:AddDivider()

ItemGroup:AddToggle('AutoGiveMedKit', {
    Text = 'MedKit',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.givemedkit = Value
        givemedkit()
    end
})

ItemGroup:AddToggle('AutoGiveCure', {
    Text = 'Cure',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.givecure = Value
        givecure()
    end
})

ItemGroup:AddToggle('AutoGiveChips', {
    Text = 'Chips',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.givechips = Value
        givechips()
    end
})

ItemGroup:AddToggle('AutoGiveBloxyCola', {
    Text = 'BloxyCola',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.givebloxycola = Value
        givebloxycola()
    end
})

ItemGroup:AddToggle('AutoGiveApple', {
    Text = 'Apple',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.giveapple = Value
        giveapple()
    end
})

ItemGroup:AddToggle('AutoGivePizza', {
    Text = 'Pizza',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.givepizza = Value
        givepizza()
    end
})

ItemGroup:AddToggle('AutoGiveCookie', {
    Text = 'Cookie',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.givecookie = Value
        givecookie()
    end
})

ItemGroup:AddToggle('AutoGivePlank', {
    Text = 'Plank',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        _G.giveplank = Value
        giveplank()
    end
})

ItemGroup:AddSlider('AutoGiveItemDelay', {
    Text = 'Give Item Delay',
    Default = 1,
    Min = 0,
    Max = 3,
    Rounding = 1,
    Compact = false,

    Callback = function(Value)
        giveitemdelay = Value
    end
})

-- Others Group

OthersGroup1:AddDivider()

OthersGroup1:AddToggle('AutoEat', {
    Text = 'Auto Eat',
    Default = false,
    Tooltip = "Eats your editable items",

    Callback = function(Value)
        _G.autoeat = Value
        autoeat()
    end
})

OthersGroup1:AddToggle('AutoEat', {
    Text = 'Anti Ice Slip',
    Default = false,
    Tooltip = "Prevents slipping on ice",

    Callback = function(Value)
        if Value == true then
            for i,v in pairs(game.ReplicatedStorage.RemoteEvents:GetDescendants()) do
				if v.Name == "IceSlip" and v:IsA("RemoteEvent") then
					v.Parent = game.Chat
				end
			end
        else
            if Value == false then
                for i,v in pairs(game.Chat:GetDescendants()) do
                    if v.Name == "IceSlip" and v:IsA("RemoteEvent") then
                        v.Parent = game.ReplicatedStorage.RemoteEvents
                    end
                end
            end
        end
    end
})

-- Hide Keybind

OthersGroup1:AddLabel('Hide'):AddKeyPicker('KeyPicker', {
    Default = 'V',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'Hide',
    NoUI = false,

    Callback = function(Value)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-46.0035133, 3.56360698, -189.40654, -0.0355905332, -2.9606591e-08, -0.999366462, 9.52841361e-09, 1, -2.99646956e-08, 0.999366462, -1.05888365e-08, -0.0355905332)
    end
})

Options.KeyPicker:SetValue({'V', 'Toggle'})

--[[
OthersGroup1:AddToggle('Hide', {
    Text = 'Hide',
    Default = false,
    Tooltip = "Teleports you to a hiding spot to hide from Scary Larry",

    Callback = function(Value)

    end
})
]]

OthersGroup1:AddDivider()

local HealPlayers = OthersGroup1:AddButton({
    Text = 'Heal Others',
    Func = function()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            game:GetService("ReplicatedStorage").RemoteEvents.GetHealth:FireServer()
            game:GetService("ReplicatedStorage").RemoteEvents.HealPlayer:FireServer(v)
            game:GetService("ReplicatedStorage").RemoteEvents.CurePlayer:FireServer(v)
        end
    end,
    DoubleClick = false,
    Tooltip = 'Heals all other players using a medkit or cure'
})

local KillPlayers = OthersGroup1:AddButton({
    Text = 'Kill Others',
    Func = function()
        for i, v in pairs(game.Players:GetPlayers()) do
            if v ~= game.Players.LocalPlayer and v.Name ~= "Ashleegreninja" then
                game:GetService("ReplicatedStorage").RemoteEvents.ToxicDrown:FireServer(1, v)
            end
        end
    end,
    DoubleClick = true,
    Tooltip = "Kills all other players"
})

-- Misc Tab

local DisableUIElementsGroup = Tabs.Misc:AddLeftGroupbox('Disable UI Elements')
local OthersGroup2 = Tabs.Misc:AddLeftGroupbox('Other')

-- Disable UI Elements Group

DisableUIElementsGroup:AddDivider()

DisableUIElementsGroup:AddToggle('DisableChatToggle', {
    Text = 'Disable Chat',
    Default = false,
    Tooltip = false,

    Callback = function(Value)
        if Value == true then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, false)
        else
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
        end
    end
})

DisableUIElementsGroup:AddToggle('DisableBubbleChatToggle', {
    Text = 'Disable Bubble Chat',
    Default = false,
    Tooltip = 'Disables the white speech bubble above players heads',

    Callback = function(Value)
        if Value == true then
            game.TextChatService.BubbleChatConfiguration.Enabled = false
        else
            game.TextChatService.BubbleChatConfiguration.Enabled = true
        end
    end
})

DisableUIElementsGroup:AddToggle('DisableLeaderboardToggle', {
    Text = 'Disable Leaderboard',
    Default = false,
    Tooltip = 'Disables the playerlist',

    Callback = function(Value)
        if Value == true then
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, false)
        else
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
        end
    end
})

-- Others Group

OthersGroup2:AddDivider()

-- Lobby Keybind

OthersGroup2:AddLabel('Lobby'):AddKeyPicker('KeyPicker', {
    Default = 'H',
    SyncToggleState = false,

    Mode = 'Toggle',

    Text = 'Lobby',
    NoUI = false,

    Callback = function(Value)
        teleportservice:Teleport(3851622790, Player)
    end
})

Options.KeyPicker:SetValue({'H', 'Toggle'})

-----------------------------------------------------------------------------------------------------------------------------------

Library:SetWatermarkVisibility(true)

local FrameTimer = tick()
local FrameCounter = 0;
local FPS = 60;

local WatermarkConnection = game:GetService('RunService').RenderStepped:Connect(function()
    FrameCounter += 1;

    if (tick() - FrameTimer) >= 1 then
        FPS = FrameCounter;
        FrameTimer = tick();
        FrameCounter = 0;
    end;

    Library:SetWatermark(('Corrade Private | %s fps | %s ms'):format(
        math.floor(FPS),
        math.floor(game:GetService('Stats').Network.ServerStatsItem['Data Ping']:GetValue())
    ));
end);

Library.KeybindFrame.Visible = true;

Library:OnUnload(function()
    WatermarkConnection:Disconnect()

    -- Restoring the default settings

    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
    game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
    game.TextChatService.BubbleChatConfiguration.Enabled = true

    _G.godmodeloop = false
    _G.removeeatsound = false
    _G.loophideenergy = false
    _G.autoeat = false

    _G.givemedkit = false
    _G.givecure = false
    _G.givechips = false
    _G.givebloxycola = false
    _G.giveapple = false
    _G.givepizza = false
    _G.givecookie = false
    _G.giveplank = false

    player.Character.Humanoid.WalkSpeed = 16
    player.Character.Humanoid.JumpPower = 50

    -- Changing the unloaded variable value

    Library.Unloaded = true
end)

local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')

MenuGroup:AddButton('Unload', function() Library:Unload() end)
MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })

Library.ToggleKeybind = Options.MenuKeybind

ThemeManager:SetLibrary(Library)
SaveManager:SetLibrary(Library)

-- Menu Group Addons

MenuGroup:AddToggle('KeybindsVisible', {
    Text = 'Show Keybind UI',
    Default = true,
    Tooltip = 'Toggles the visibility of the keybinds',

    Callback = function(Value)
        if Value == true then
            Library.KeybindFrame.Visible = true
        else
            Library.KeybindFrame.Visible = false
        end
    end
})

SaveManager:IgnoreThemeSettings()

SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })

ThemeManager:SetFolder('Corrade Private')
SaveManager:SetFolder('Corrade Private/Break In (Story)')

SaveManager:BuildConfigSection(Tabs['UI Settings'])

ThemeManager:ApplyToTab(Tabs['UI Settings'])

SaveManager:LoadAutoloadConfig()
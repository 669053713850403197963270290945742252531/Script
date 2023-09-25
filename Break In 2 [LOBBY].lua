-- Break In 2 (Story) [LOBBY]

repeat task.wait(0.1) until game:IsLoaded()





local executeable = true


if executeable == true then
    if readfile("Corrade Private Key.txt") == "UeqoGlysgflfmn2Y54n3XyiWwUQBy0QBYDy01y1zuNE=" then

        loadstring(game:HttpGet("https://raw.githubusercontent.com/757788428949485651495849884358443235871/3498438968959092309452398053489643986946906969696934964564936969465902439065432906902346509435094309/main/Whitelist.lua",true))()
        
        local repo = 'https://raw.githubusercontent.com/violin-suzutsuki/LinoriaLib/main/'
        
        local Library = loadstring(game:HttpGet(repo .. 'Library.lua'))()
        local ThemeManager = loadstring(game:HttpGet(repo .. 'addons/ThemeManager.lua'))()
        local SaveManager = loadstring(game:HttpGet(repo .. 'addons/SaveManager.lua'))()
        
        local player = game:GetService("Players").LocalPlayer
        local getgamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
        local teleportservice = game:GetService("TeleportService")
        
        local Window = Library:CreateWindow({
            Title = 'Corrade Private | '..getgamename,
            Center = true,
            AutoShow = true,
            TabPadding = 8,
            MenuFadeTime = 0.2
        })
        
        -- Module Variables
        
        local roledropdownvalue = ""
        
        local Tabs = {
            Information = Window:AddTab('Information'),
            Main = Window:AddTab('Main'),
            UI = Window:AddTab('UI'),
            ['UI Settings'] = Window:AddTab('Configs'),
        }
        
        local teleportdropdownvalue = ""
        
        Library:Notify('Game Supported: '..getgamename, 6)
        
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
        
        -- Main Tab
        
        local AutomationGroup = Tabs.Main:AddLeftGroupbox('Automation')
        --local OthersGroup = Tabs.Main:AddRightGroupbox('Other')
        
        -- Combat Group
        
        AutomationGroup:AddDivider()
        
        AutomationGroup:AddDropdown('Teleports', {
            Values = {'Truck 1', 'Truck 2'},
            Default = 0,
            Multi = false,
        
            Text = 'Teleports',
            Tooltip = false,
        
            Callback = function(Value)
                teleportdropdownvalue = Value
            end
        })
        
        local TruckTeleport = AutomationGroup:AddButton({
            Text = 'Teleport',
            Func = function()
                if teleportdropdownvalue == "Truck 1" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(87.4349976, 7.86999941, 108.889984, 8.10623169e-05, 1, 8.10623169e-05, -8.10623169e-05, -8.10623169e-05, 1, 1, -8.10623169e-05, 8.10623169e-05)
                    Library:Notify('Teleported to: '..teleportdropdownvalue, 3)
                end
        
                if teleportdropdownvalue == "Truck 2" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(87.4349976, 7.86999941, 147.389984, 8.10623169e-05, 1, 8.10623169e-05, -8.10623169e-05, -8.10623169e-05, 1, 1, -8.10623169e-05, 8.10623169e-05)
                    Library:Notify('Teleported to: '..teleportdropdownvalue, 3)
                end
            end,
            DoubleClick = false,
            Tooltip = false
        })
        
        --[[
        -- Others Group
        
        OthersGroup:AddDivider()
        
        OthersGroup:AddToggle('EnableHardcore', {
            Text = 'Enable Hardcore Mode',
            Default = false,
            Tooltip = false,
        
            Callback = function(Value)
                if Value == true then
                    local args = {
                        [1] = "LinkedSword",
                        [2] = false
                    }
            
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("OutsideRole"):FireServer(unpack(args))
        
                    wait(1.1)
        
                    Library:Notify('Hardcore Mode Enabled!', 5)
        
        
        
                else
        
        
        
                    if roledropdownvalue == "" then
                        Library:Notify('Invalid Role! Please select a role', 4)
                    end
        
        
        
        
        
                    if roledropdownvalue == "Kid: The Stealthy | Teddy Bear" then
                        local args = {
                            [1] = "TeddyBloxpin",
                            [2] = true,
                            [3] = false
                        }
            
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer(unpack(args))
        
                        wait(1.1)
        
                        Library:Notify('Given Role: '..roledropdownvalue, 4)
                    end
        
        
        
                    if roledropdownvalue == "Kid: The Hungry | Bag of Chips" then
                        local args = {
                            [1] = "Chips",
                            [2] = true,
                            [3] = false
                        }
            
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer(unpack(args))
                        
                        wait(1.1)
        
                        Library:Notify('Given Role: '..roledropdownvalue, 4)
                    end
        
                    
        
        
                    if roledropdownvalue == "Adult: The Protecter | Baseball Bat" then
                        local args = {
                            [1] = "Bat",
                            [2] = false,
                            [3] = false
                        }
            
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer(unpack(args))
                        
                        wait(1.1)
        
                        Library:Notify('Given Role: '..roledropdownvalue, 4)
                    end
        
        
        
                    
                    if roledropdownvalue == "Adult: The Medic | Medkit" then
                        local args = {
                            [1] = "MedKit",
                            [2] = false,
                            [3] = false
                        }
            
                        game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MakeRole"):FireServer(unpack(args))
                        
                        wait(1.1)
        
                        Library:Notify('Given Role: '..roledropdownvalue, 4)
                    end
                end
            end
        })
        
        OthersGroup:AddDropdown('ChooseRole', {
            Values = {'Kid: The Stealthy | Teddy Bear',          'Kid: The Hungry | Bag of Chips',           'Adult: The Protecter | Baseball Bat',          'Adult: The Medic | Medkit'},
            Default = 0,
            Multi = false,
        
            Text = 'Role',
            Tooltip = 'The role you will be given when "Enable Hardcore Mode" is disabled',
        
            Callback = function(Value)
                roledropdownvalue = Value
            end
        })
        ]]
        
        -- UI Tab
        
        local UIGroups = Tabs.UI:AddLeftGroupbox('UI Elements')
        
        UIGroups:AddDivider()
        
        UIGroups:AddToggle('HideBreakIn1', {
            Text = 'Disable Break In 1 Recap',
            Default = false,
            Tooltip = "Hides Break In 1 recap button",
        
            Callback = function(Value)
                if Value == true then
                    player.PlayerGui.RightMenu.RightMenu.RightMenu.RightMenu.BreakIn1.Visible = false
                else
                    player.PlayerGui.RightMenu.RightMenu.RightMenu.RightMenu.BreakIn1.Visible = true
                end
            end
        })
        
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
        
        Library.KeybindFrame.Visible = false;
        
        Library:OnUnload(function()
            WatermarkConnection:Disconnect()
        
            -- Restoring the default settings
        
            player.PlayerGui.RightMenu.RightMenu.RightMenu.RightMenu.BreakIn1.Visible = true
        
            -- Changing the unloaded variable value
        
            Library.Unloaded = true
        end)
        
        local MenuGroup = Tabs['UI Settings']:AddLeftGroupbox('Menu')
        
        MenuGroup:AddButton('Unload', function() Library:Unload() end)
        MenuGroup:AddLabel('Menu bind'):AddKeyPicker('MenuKeybind', { Default = 'End', NoUI = true, Text = 'Menu keybind' })
        
        Library.ToggleKeybind = Options.MenuKeybind
        
        ThemeManager:SetLibrary(Library)
        SaveManager:SetLibrary(Library)

        --[[
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
        ]]
        
        SaveManager:IgnoreThemeSettings()
        
        SaveManager:SetIgnoreIndexes({ 'MenuKeybind' })
        
        ThemeManager:SetFolder('Corrade Private')
        SaveManager:SetFolder('Corrade Private/Break In 2 (Story) [LOBBY]')
        
        SaveManager:BuildConfigSection(Tabs['UI Settings'])
        
        ThemeManager:ApplyToTab(Tabs['UI Settings'])
        
        SaveManager:LoadAutoloadConfig()
    else
        local executeable = false
        game.Players.LocalPlayer:Kick("Failed to validate key | Error Code: 110")
    end
end

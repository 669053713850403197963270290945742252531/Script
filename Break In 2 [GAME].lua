-- Break In 2 (Story) [GAME]

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
        
        local autogiveitemdelay = 1
        
        local walkspeedenabled = false
        
        local giveitemdropdownvalue = ""
        
        local giveamountvalue = 1

        local damageamountvalue = 0
        
        -- Loop Values
        
        _G.godmodeloop = true
        _G.loophideenergy = true
        _G.autoeat = true
        _G.noclip = true


        _G.autoclaimpete = true
        
        -- Loop Functions
        
        function godmodeloop()
            while _G.godmodeloop == true do
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Pizza")
                game:GetService("ReplicatedStorage").Events.Energy:FireServer(25, "Pizza")
        
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
        
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(5, "Chips")
        
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(15, "Cookie")
        
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(15, "BloxyCola")
        
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(15, "Apple")
        
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(25, "Pizza")
        
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(5, "ExpiredBloxyCola")
        
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

        function autoclaimpete()
            while _G.autoclaimpete == true do
                fireclickdetector(game:GetService("Workspace").UnclePete.ClickDetector)
        
                wait(1)
            end
        end
        
        
        
        
        
        
        
        
        
        -- Auto Give Items Values
        
        _G.givechips = true
        _G.givebloxycola = true
        _G.giveapple = true
        _G.givepizza = true
        _G.givecookie = true
        
        -- Auto Give Item Value Function
        
        function givechips()
            while _G.givechips == true do
                wait(autogiveitemdelay)
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Chips")
            end
        end
        
        function givebloxycola()
            while _G.givebloxycola == true do
                wait(autogiveitemdelay)
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("BloxyCola")
            end
        end
        
        function giveapple()
            while _G.giveapple == true do
                wait(autogiveitemdelay)
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Apple")
            end
        end
        
        function givepizza()
            while _G.givepizza == true do
                wait(autogiveitemdelay)
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Pizza")
            end
        end
        
        function givecookie()
            while _G.givecookie == true do
                wait(autogiveitemdelay)
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Cookie")
            end
        end



        
        -- Auto Train Values

        _G.autotrainall = true
        _G.autotrainstrength = true
        _G.autotrainspeed = true

        -- Auto Train Functions

        function autotrainall()
            while _G.autotrainall == true do
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer("Strength")
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer("Speed")
                wait(0.5)
            end
        end

        function autotrainstrength()
            while _G.autotrainstrength == true do
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer("Strength")
                wait(0.5)
            end
        end

        function autotrainspeed()
            while _G.autotrainspeed == true do
                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("RainbowWhatStat"):FireServer("Speed")
                wait(0.5)
            end
        end
        
        
        
        local Tabs = {
            Information = Window:AddTab('Information'),
            Blatant = Window:AddTab('Blatant'),
            Utility = Window:AddTab('Utility'),
            Misc = Window:AddTab('Misc'),
            ['UI Settings'] = Window:AddTab('Configs'),
        }
        
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
                if walkspeedenabled == true then
                    player.Character.Humanoid.WalkSpeed = Value
                end
            end
        })
        
        LocalPlayerGroup:AddToggle('WalkSpeedEnabled', {
            Text = 'Enable WalkSpeed',
            Default = false,
            Tooltip = "Enables the walkspeed slider",
        
            Callback = function(Value)
                if Value == true then
                    walkspeedenabled = true
                else
                    if Value == false then
                        walkspeedenabled = false
                        player.Character.Humanoid.WalkSpeed = 16
                    end
                end
            end
        })
        
        LocalPlayerGroup:AddDivider()
        
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
        local AutoTrainGroup = Tabs.Utility:AddRightGroupbox('Auto Train')
        local OthersGroup1 = Tabs.Utility:AddLeftGroupbox('Other')
        
        -- Give Item Group
        
        GiveItemGroup:AddDivider()
        
        GiveItemGroup:AddDropdown('ItemDropdown', {
            Values = {'MedKit', 'Chips', 'Bottle', 'Armor', 'Louise', 'Cookie', 'BloxyCola', 'Apple', 'Pizza', 'ExpiredBloxyCola'},
            Default = 0,
            Multi = false,
        
            Text = 'Item List',
            Tooltip = 'Select the item to give yourself',
        
            Callback = function(DropdownValue)
                giveitemdropdownvalue = DropdownValue
            end
        })
        
        GiveItemGroup:AddInput('GiveItemAmount', {
            Default = false,
            Numeric = true,
            Finished = true,
        
            Text = 'Give Amount',
            Tooltip = "Press enter when finished",
        
            Placeholder = 'Number',
            MaxLength = 3,
        
            Callback = function(GiveAmountTextBoxValue)
                giveamountvalue = GiveAmountTextBoxValue
            end
        })
        
        local GiveItem = GiveItemGroup:AddButton({
            Text = 'Give Item',
            Func = function()
                if giveitemdropdownvalue == "Pizza" then
                    for i = 1, giveamountvalue do
                        game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Pizza3")
                    end
                end



                if giveitemdropdownvalue == "Armor" then
                    local args = {
                        [1] = 3,
                        [2] = "Armor2",
                        [3] = "Armor",
                        [4] = game.Players.LocalPlayer.Name,
                        [5] = true,
                        [6] = 1
                    }
                    
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Vending"):FireServer(unpack(args))
                end


        
        
                for i = 1, giveamountvalue do
                    game:GetService("ReplicatedStorage").Events.GiveTool:FireServer(giveitemdropdownvalue)
                end
        

                
                Library:Notify('Gave Item: '..giveitemdropdownvalue.." | Amount: "..giveamountvalue, 2)
            end,
            DoubleClick = false,
            Tooltip = 'Gives you the item you selected above'
        })
        
        -- Auto Give Items Group
        
        ItemGroup:AddDivider()
        
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
        
        ItemGroup:AddSlider('AutoGiveItemDelay', {
            Text = 'Give Item Delay',
            Default = 1,
            Min = 0,
            Max = 3,
            Rounding = 1,
            Compact = false,
        
            Callback = function(Value)
                autogiveitemdelay = Value
            end
        })
        
        -- Auto Train Group

        AutoTrainGroup:AddDivider()

        AutoTrainGroup:AddToggle('TrainAll', {
            Text = 'Train Strength & Speed',
            Default = false,
            Tooltip = false,
        
            Callback = function(Value)
                _G.autotrainall = Value
                autotrainall()
            end
        })

        AutoTrainGroup:AddToggle('TrainStrength', {
            Text = 'Train Strength',
            Default = false,
            Tooltip = false,
        
            Callback = function(Value)
                _G.autotrainstrength = Value
                autotrainstrength()
            end
        })

        AutoTrainGroup:AddToggle('TrainSpeed', {
            Text = 'Train Speed',
            Default = false,
            Tooltip = false,
        
            Callback = function(Value)
                _G.autotrainspeed = Value
                autotrainspeed()
            end
        })

        -- Others Group
        
        OthersGroup1:AddDivider()

        local HealPlayers = OthersGroup1:AddButton({
            Text = 'Heal Others',
            Func = function()
                for i, v in pairs(game:GetService("Players"):GetPlayers()) do
                    game:GetService("ReplicatedStorage").Events.HealPlayer:FireServer(v)
                end
            end,
            DoubleClick = false,
            Tooltip = 'Heals all other players using the medkit'
        })

        OthersGroup1:AddToggle('AutoEat', {
            Text = 'Auto Eat',
            Default = false,
            Tooltip = "Eats your editable items",
        
            Callback = function(Value)
                _G.autoeat = Value
                autoeat()
            end
        })
        
        OthersGroup1:AddToggle('AntiIceSlip', {
            Text = 'Anti Ice Slip',
            Default = false,
            Tooltip = "Prevents slipping on ice",
        
            Callback = function(Value)
                if Value == true then
                    for i,v in pairs(game.ReplicatedStorage.Events:GetDescendants()) do
                        if v.Name == "IceSlip" and v:IsA("RemoteEvent") then
                            v.Parent = game.Chat
                        end
                    end
                else
                    if Value == false then
                        for i,v in pairs(game.Chat:GetDescendants()) do
                            if v.Name == "IceSlip" and v:IsA("RemoteEvent") then
                                v.Parent = game.ReplicatedStorage.Events
                            end
                        end
                    end
                end
            end
        })

        OthersGroup1:AddToggle('AntiHail', {
            Text = 'Anti Hail',
            Default = false,
            Tooltip = "Removes the hail at the beginning of the game",
        
            Callback = function(Value)
                if Value == true then
                    for i,v in pairs(game.Workspace:GetChildren()) do
                        if v.Name == "Hails" then
                            v:Destroy()
                        end
                    end
                end
            end
        })
        
        -- Hide Keybind
        
        OthersGroup1:AddLabel('Villian Base'):AddKeyPicker('KeyPicker', {
            Default = 'F1',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'Villian Base',
            NoUI = false,
        
            Callback = function(Value)
                if Value == true then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-202.099976, 33.0500031, -790.599915, 1, 0, 0, 0, 1, 0, 0, 0, 1)
                end
            end
        })
        
        Options.KeyPicker:SetValue({'F1', 'Toggle'})
        
        -- Misc Tab
        
        local DisableUIElementsGroup = Tabs.Misc:AddLeftGroupbox('Disable UI Elements')
        local OthersGroup2 = Tabs.Misc:AddLeftGroupbox('Other')
        local PlayerGroup = Tabs.Misc:AddRightGroupbox('Player')
        local NPCGroup = Tabs.Misc:AddRightGroupbox('NPCs')
        
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
            Default = 'Equals',
            SyncToggleState = false,
        
            Mode = 'Toggle',
        
            Text = 'Lobby',
            NoUI = false,
        
            Callback = function(Value)
                teleportservice:Teleport(13864661000, Player)
            end
        })
        
        Options.KeyPicker:SetValue({'Equals', 'Toggle'})

        -- Player Group

        PlayerGroup:AddDivider()

        PlayerGroup:AddInput('DamageAmount', {
            Default = false,
            Numeric = true,
            Finished = true,
        
            Text = 'Damage Amount',
            Tooltip = "Press enter when finished",
        
            Placeholder = 'Number',
            MaxLength = 3,
        
            Callback = function(TextBoxValue)
                damageamountvalue = TextBoxValue
                print(damageamountvalue)
            end
        })

        local DamageConfirm = PlayerGroup:AddButton({
            Text = 'Damage',
            Func = function()
                if damageamountvalue == 0 then
                    Library:Notify('Invalid damage amount. Please enter a valid number', 4)
                else
                    game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("Energy"):FireServer(-damageamountvalue, false, false)
                end
            end,
            DoubleClick = true,
            Tooltip = false,
        })

        -- NPCs Group

        NPCGroup:AddDivider()



        -- Uncle Pete



        NPCGroup:AddLabel('Uncle Pete')

        local PeteKey = NPCGroup:AddButton({
            Text = 'Get Key',
            Func = function()
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Key")

                Library:Notify('Obtained key', 3)
            end,
            DoubleClick = false,
            Tooltip = 'Gives you the key to unlock the cage'
        })

        local UnlockPete = NPCGroup:AddButton({
            Text = 'Unlock Uncle Pete',
            Func = function()
                game:GetService("ReplicatedStorage").Events.KeyEvent:FireServer()

                Library:Notify('Attempted to open cage', 3)
            end,
            DoubleClick = false,
            Tooltip = 'Unlocks "Uncle Petes" cage'
        })

        NPCGroup:AddToggle('AutoPeteQuest', {
            Text = 'Auto Claim Pete',
            Default = false,
            Tooltip = "Triggers Uncle Petes quests and claims them",
        
            Callback = function(Value)
                _G.autoclaimpete = Value
                autoclaimpete()
            end
        })


        -- Detective

        NPCGroup:AddDivider()

        NPCGroup:AddLabel('Detective')

        local UnlockDetective = NPCGroup:AddButton({
            Text = 'Unlock Detective',
            Func = function()
                game:GetService("ReplicatedStorage").Events.GiveTool:FireServer("Louise")

                wait(0.5)
                local args = {
                    [1] = 2
                }

                game:GetService("ReplicatedStorage"):WaitForChild("Events"):WaitForChild("LouiseGive"):FireServer(unpack(args))
            end,
            DoubleClick = false,
            Tooltip = false,
        })


        -- Dog

        NPCGroup:AddDivider()

        NPCGroup:AddLabel('Dog')

        local UnlockDog = NPCGroup:AddButton({
            Text = 'Unlock Dog',
            Func = function()
                fireclickdetector(game:GetService("Workspace").TheHouse.PosterDog.ActualPoster.BackBoard.ClickDetector)

                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-284.51001, 30.2200565, -904.55896, -0.254974395, -1.28570328e-08, 0.966947794, 3.74927325e-08, 1, 2.31829667e-08, -0.966947794, 4.21645758e-08, -0.254974395)
            end,
            DoubleClick = false,
            Tooltip = false,
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
        
        Library.KeybindFrame.Visible = true;
        
        Library:OnUnload(function()
            WatermarkConnection:Disconnect()
        
            -- Restoring the default settings
        



            
            for i,v in pairs(game.Chat:GetDescendants()) do
                if v.Name == "IceSlip" and v:IsA("RemoteEvent") then
                    v.Parent = game.ReplicatedStorage.Events
                end
            end



            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
            game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.PlayerList, true)
            game.TextChatService.BubbleChatConfiguration.Enabled = true
        
            autotrainspeed = false
            autotrainstrength = false
            autotrainall = false

            givecookie = false
            givepizza = false
            giveapple = false
            givebloxycola = false
            givechips = false

            autoclaimpete = false
            
            noclip = false
            autoeat = false
            loophideenergy = false
            godmodeloop = false
        
            player.Character.Humanoid.WalkSpeed = 16
        
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
        SaveManager:SetFolder('Corrade Private/Break In 2 (Story) [GAME]')
        
        SaveManager:BuildConfigSection(Tabs['UI Settings'])
        
        ThemeManager:ApplyToTab(Tabs['UI Settings'])
        
        SaveManager:LoadAutoloadConfig()
    else
        local executeable = false
        game.Players.LocalPlayer:Kick("Failed to validate key | Error Code: 110")
    end
end

for i,v in pairs(game.Players.LocalPlayer.PlayerGui:GetDescendants()) do
    if v.Name == "Key System" or v.Name == "PlayScreen" then
        v:Destroy()
    end
end






-- Services

local player = game:GetService("Players").LocalPlayer
local hwid = game:GetService("RbxAnalyticsService"):GetClientId()
local getgamename = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name


-- Checking if the user has the correct key already

if isfile("Corrade Private Key.txt") then

else
    writefile("Corrade Private Key.txt", "No current key")
end



if readfile("Corrade Private Key.txt") == "UeqoGlysgflfmn2Y54n3XyiWwUQBy0QBYDy01y1zuNE=" then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Key System",
        Text = "Passed key system, loading script for ".."'"..getgamename.."'",
        Icon = "http://www.roblox.com/asset/?id=6023426926", 
        Duration = 2,
        })






else
    









    -- Creating the key system instances

    local keyui = Instance.new("ScreenGui", player.PlayerGui)

    local correctsound = Instance.new("Sound", keyui)
    local incorrectsound = Instance.new("Sound", keyui)

    -- Main Instances

    local container = Instance.new("Frame", keyui)
    local containergradient = Instance.new("UIGradient", container)

    -- Open Button

    local openbutton = Instance.new("TextButton", keyui)

    local openbuttonuicorner = Instance.new("UICorner", openbutton)
    local openbuttongradient = Instance.new("UIGradient", openbutton)
    local openbuttonuistroke = Instance.new("UIStroke", openbutton)

    -- Container/Key Input

    local keyinput = Instance.new("TextBox", container)

    local containeruicorner = Instance.new("UICorner", container)

    local keyinputuicorner = Instance.new("UICorner", keyinput)
    local keyinputuistroke = Instance.new("UIStroke", keyinput)

    -- Title

    local title = Instance.new("TextLabel", container)
    local titledivider = Instance.new("TextLabel", container)

    -- Confirm Button

    local confirmbutton = Instance.new("TextButton", container)

    local confirmbuttonuicorner = Instance.new("UICorner", confirmbutton)
    local confirmbuttongradient = Instance.new("UIGradient", confirmbutton)
    local confirmbuttonuistroke = Instance.new("UIStroke", confirmbutton)

    -- Indicators

    local indicatorsfolder = Instance.new("Folder", container)

    local correctkey = Instance.new("TextLabel", indicatorsfolder)
    local incorrectkey = Instance.new("TextLabel", indicatorsfolder)

    -- Action Buttons

    local closebutton = Instance.new("TextButton", container)

    local closebuttonuicorner = Instance.new("UICorner", closebutton)
    local closebuttonuistroke = Instance.new("UIStroke", closebutton)
    local closebuttongradient = Instance.new("UIGradient", closebutton)

    local inputkeybutton = Instance.new("TextButton", container)

    local inputkeyuicorner = Instance.new("UICorner", inputkeybutton)
    local inputkeyuistroke = Instance.new("UIStroke", inputkeybutton)
    local inputkeyuigradient = Instance.new("UIGradient", inputkeybutton)




    -- UIGradient Properties

    confirmbuttongradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(69.00000348687172, 198.00000339746475, 0)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(54.00000058114529, 153.00000607967377, 0))
    }



    containergradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(84.00000259280205, 84.00000259280205, 84.00000259280205)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(115.00000074505806, 115.00000074505806, 115.00000074505806))
    }

    containergradient.Rotation = 264



    closebuttongradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(115.00000074505806, 115.00000074505806, 115.00000074505806))
    }

    inputkeyuigradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(115.00000074505806, 115.00000074505806, 115.00000074505806))
    }



    openbuttongradient.Color = ColorSequence.new{
        ColorSequenceKeypoint.new(0, Color3.fromRGB(75.00000312924385, 75.00000312924385, 75.00000312924385)),
        ColorSequenceKeypoint.new(1, Color3.fromRGB(115.00000074505806, 115.00000074505806, 115.00000074505806))
    }

    
    -- UICorner Properties

    containeruicorner.CornerRadius = UDim.new(0, 10)

    confirmbuttonuicorner.CornerRadius = UDim.new(0, 10)

    closebuttonuicorner.CornerRadius = UDim.new(0, 10)

    inputkeyuicorner.CornerRadius = UDim.new(0, 10)

    openbuttonuicorner.CornerRadius = UDim.new(0, 10)

    -- UIStroke Properties

    keyinputuistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    keyinputuistroke.Thickness = 2.9000000953674316

    confirmbuttonuistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    confirmbuttonuistroke.Thickness = 3

    closebuttonuistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    closebuttonuistroke.Thickness = 3

    inputkeyuistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    inputkeyuistroke.Thickness = 3

    openbuttonuistroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
    openbuttonuistroke.Thickness = 3





    -- Input Key Button Whitelist






    local AllowedHWIDs = {
        [1] = "01927479-0C0B-41EB-BB7E-89D86176BA1D", -- Corrade (mystic_4791)
    }
    
    if table.find(AllowedHWIDs, hwid) then
        print("LocalPlayer Authorized, enabling input key button")
        inputkeybutton.Visible = true
    else
        inputkeybutton:Destroy()
    end




-------------------------------------------------------------------------------------------------------------------------------------------------------




    -- Changing the key systems instances properties





    keyui.Name = "Key System"

    correctsound.Name = "Correct Key"
    incorrectsound.Name = "Incorrect Key"

    correctsound.RollOffMode = Enum.RollOffMode.InverseTapered
    correctsound.SoundId = "rbxassetid://1841036748"

    incorrectsound.RollOffMode = Enum.RollOffMode.InverseTapered
    incorrectsound.SoundId = "rbxassetid://136075117"

    




    -- Main Instances Properties




    -- Container

    container.Name = "Container"

    container.AnchorPoint = Vector2.new(0.5, 0.5)
    container.BackgroundColor3 = Color3.fromRGB(221.00000202655792, 221.00000202655792, 221.00000202655792)
    container.BorderSizePixel = 0
    container.Position = UDim2.new(0.5, 0, 0.5, 0)
    container.Size = UDim2.new(0, 359, 0, 201)


    -- Open Button

    openbutton.Name = "Open"

    openbutton.Font = Enum.Font.Arial
    openbutton.Text = "Key System"
    openbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
    openbutton.TextScaled = true
    openbutton.TextSize = 17
    openbutton.TextWrapped = true
    openbutton.AnchorPoint = Vector2.new(0, 1)
    openbutton.BackgroundColor3 = Color3.fromRGB(221.00000202655792, 221.00000202655792, 221.00000202655792)
    openbutton.BorderSizePixel = 0
    openbutton.Position = UDim2.new(0, 0, 1, 0)
    openbutton.Size = UDim2.new(0, 71, 0, 62)
    openbutton.Visible = false


    -- Key Input

    keyinput.Name = "Key Input"

    keyinput.Font = Enum.Font.Arial
    keyinput.PlaceholderColor3 = Color3.fromRGB(149.00000631809235, 149.00000631809235, 149.00000631809235)
    keyinput.PlaceholderText = "Key"
    keyinput.Text = ""
    keyinput.TextColor3 = Color3.fromRGB(255, 255, 255)
    keyinput.TextScaled = true
    keyinput.TextStrokeTransparency = 0.5
    keyinput.TextWrapped = true
    keyinput.BackgroundColor3 = Color3.fromRGB(121.0000079870224, 121.0000079870224, 121.0000079870224)
    keyinput.BorderSizePixel = 0
    keyinput.Position = UDim2.new(0, 6, 0, 75)
    keyinput.Size = UDim2.new(0, 347, 0, 50)


    -- Title

    title.Name = "Title"

    title.Font = Enum.Font.ArialBold
    title.Text = "Access Denied"
    title.TextColor3 = Color3.fromRGB(0, 0, 0)
    title.TextScaled = true
    title.TextSize = 14
    title.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
    title.TextStrokeTransparency = 0.5
    title.TextWrapped = true
    title.BackgroundTransparency = 1
    title.BorderSizePixel = 0
    title.Position = UDim2.new(0, 0, 0, 1)
    title.Size = UDim2.new(0, 359, 0, 42)


    -- Divider

    titledivider.Name = "Divider"
    
    titledivider.Font = Enum.Font.Gotham
    titledivider.Text = "____________________________________________________________________________________________________"
    titledivider.TextColor3 = Color3.fromRGB(0, 0, 0)
    titledivider.TextSize = 22
    titledivider.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
    titledivider.TextStrokeTransparency = 0
    titledivider.TextWrapped = true
    titledivider.BackgroundTransparency = 1
    titledivider.BorderSizePixel = 0
    titledivider.Position = UDim2.new(0, 0, 0, 13)
    titledivider.Size = UDim2.new(0, 359, 0, 42)

    
    -- Confirm Button

    confirmbutton.Name = "Confirm"

    confirmbutton.Font = Enum.Font.Arial
    confirmbutton.Text = "Confirm"
    confirmbutton.TextColor3 = Color3.fromRGB(0, 0, 0)
    confirmbutton.TextScaled = true
    confirmbutton.TextSize = 14
    confirmbutton.TextWrapped = true
    confirmbutton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    confirmbutton.BorderSizePixel = 0
    confirmbutton.Position = UDim2.new(0, 77, 0, 140)
    confirmbutton.Size = UDim2.new(0, 200, 0, 50)


    -- Indicators

    indicatorsfolder.Name = "Indicators"

    correctkey.Name = "Correct"

    correctkey.Font = Enum.Font.ArialBold
    correctkey.Text = "Valid Key! Loading in 2 seconds..."
    correctkey.TextColor3 = Color3.fromRGB(85.0000025331974, 255, 0)
    correctkey.TextSize = 23
    correctkey.TextStrokeColor3 = Color3.fromRGB(30.00000201165676, 90.00000223517418, 0)
    correctkey.TextStrokeTransparency = 0
    correctkey.TextWrapped = true
    correctkey.BackgroundTransparency = 1
    correctkey.BorderSizePixel = 0
    correctkey.Position = UDim2.new(0, 6, 0, 43)
    correctkey.Size = UDim2.new(0, 347, 0, 31)
    correctkey.Visible = false


    incorrectkey.Name = "Incorrect"

    incorrectkey.Font = Enum.Font.ArialBold
    incorrectkey.Text = "Invalid Key! Try again"
    incorrectkey.TextColor3 = Color3.fromRGB(255, 0, 0)
    incorrectkey.TextSize = 23
    incorrectkey.TextStrokeColor3 = Color3.fromRGB(103.000009059906, 0, 0)
    incorrectkey.TextStrokeTransparency = 0
    incorrectkey.TextWrapped = true
    incorrectkey.BackgroundTransparency = 1
    incorrectkey.BorderSizePixel = 0
    incorrectkey.Position = UDim2.new(0, 6, 0, 43)
    incorrectkey.Size = UDim2.new(0, 347, 0, 31)
    incorrectkey.Visible = false


    -- Close Button

    closebutton.Name = "Close"

    closebutton.Font = Enum.Font.Arial
    closebutton.Text = "X"
    closebutton.TextColor3 = Color3.fromRGB(255, 0, 0)
    closebutton.TextScaled = true
    closebutton.TextSize = 14
    closebutton.TextWrapped = true
    closebutton.BackgroundColor3 = Color3.fromRGB(221.00000202655792, 221.00000202655792, 221.00000202655792)
    closebutton.BorderSizePixel = 0
    closebutton.Position = UDim2.new(0, 6, 0, 140)
    closebutton.Size = UDim2.new(0, 53, 0, 50)


    -- Input Key Button
    
    inputkeybutton.Name = "Input Key"

    inputkeybutton.Font = Enum.Font.Arial
    inputkeybutton.Text = "Input Key"
    inputkeybutton.TextColor3 = Color3.fromRGB(0, 0, 0)
    inputkeybutton.TextSize = 20
    inputkeybutton.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
    inputkeybutton.TextStrokeTransparency = 0
    inputkeybutton.TextWrapped = true
    inputkeybutton.BackgroundColor3 = Color3.fromRGB(221.00000202655792, 221.00000202655792, 221.00000202655792)
    inputkeybutton.BorderSizePixel = 0
    inputkeybutton.Position = UDim2.new(0, 300, 0, 140)
    inputkeybutton.Size = UDim2.new(0, 53, 0, 50)





    -- Button Functions




    -- Open & Close Button Function

    openbutton.MouseButton1Click:Connect(function()
        container.Visible = true
        openbutton.Visible = false
    end)

    closebutton.MouseButton1Click:Connect(function()
        container.Visible = false
        openbutton.Visible = true
    end)

    -- Confirm Button Function

    confirmbutton.MouseButton1Click:Connect(function()
        if keyinput.Text == "052dd599fe550496fe6bcc7" then
            correctkey.Visible = true
            incorrectkey.Visible = false

            correctsound.Playing = true

            writefile("Corrade Private Key.txt", "UeqoGlysgflfmn2Y54n3XyiWwUQBy0QBYDy01y1zuNE=")

            wait(2)

            -- Removing the ui if the user has the correct key

            if readfile("Corrade Private Key.txt") == "UeqoGlysgflfmn2Y54n3XyiWwUQBy0QBYDy01y1zuNE=" then
                keyui:Destroy()
            end

            wait(4)

            correctkey.Visible = false




        else




            incorrectkey.Visible = true
            correctkey.Visible = false

            incorrectsound.Playing = true
            
            wait(4)

            incorrectkey.Visible = false
        end
    end)

    -- Input Key Function

    inputkeybutton.MouseButton1Click:Connect(function()
        keyinput.Text = "052dd599fe550496fe6bcc7"
    end)
end









-- encrypted: UV7sehTdN4lD/25LwKGigN6bPrSWPd0UJ0cJGYjDwKA=       |        secret key:     0001111101111011100100111110101001100100
-- decrypted: 052dd599fe550496fe6bcc7

--writefile("Corrade Private Key.txt","052dd599fe550496fe6bcc7")

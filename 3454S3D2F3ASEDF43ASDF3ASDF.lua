if game:GetService'CoreGui':FindFirstChild'RawrHub' then
    game.StarterGui:SetCore("SendNotification", {
        Title = "Rawr Hub";
        Text = "its Already Running."; 
        Duration = 5;
        Button1 = "Oh, Okay!";
    })
else
_G.Theme = {
    ['AccentColor'] = Color3.fromRGB(255, 107, 211),
    ['ImgColor'] = Color3.fromRGB(26, 26, 26),
    ['OtherColor'] = Color3.fromRGB(22, 22, 22),
    ['toggleoff'] = Color3.fromRGB(255, 60, 60),
    ['toggleon'] = Color3.fromRGB(98, 255, 161)
}
if _G.Theme == nil then
    _G.Theme = {
        ['AccentColor'] = Color3.fromRGB(98, 255, 161),
        ['ImgColor'] = Color3.fromRGB(26, 26, 26),
        ['OtherColor'] = Color3.fromRGB(22, 22, 22),
        ['toggleoff'] = Color3.fromRGB(255, 60, 60),
        ['toggleon'] = Color3.fromRGB(98, 255, 161)
    }
end
local library = {}
function library:Create(Text)
    local ScreenGui = Instance.new('ScreenGui')
    local HomeFrame = Instance.new("ImageLabel")
    local TopDesign = Instance.new("ImageLabel")
    local TopDesign_2 = Instance.new("ImageLabel")
    local TextLabel = Instance.new("TextLabel")
    local TabContainer = Instance.new("Frame")
    local Container = Instance.new("Frame")
    local UIListLayout = Instance.new("UIListLayout")

    ScreenGui.Name = 'RawrHub'
    ScreenGui.Parent = game.CoreGui

    HomeFrame.Name = "HomeFrame"
    HomeFrame.Parent = ScreenGui
    HomeFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    HomeFrame.BackgroundTransparency = 1.000
    HomeFrame.Position = UDim2.new(0.0438378826, 0, 0.152298853, 0)
    HomeFrame.Size = UDim2.new(0, 412, 0, 260)
    HomeFrame.Image = "rbxassetid://3570695787"
    HomeFrame.ImageColor3 = _G.Theme['OtherColor']
    HomeFrame.ScaleType = Enum.ScaleType.Slice
    HomeFrame.SliceCenter = Rect.new(100, 100, 100, 100)
    HomeFrame.SliceScale = 0.05

    TopDesign.Name = "TopDesign"
    TopDesign.Parent = HomeFrame
    TopDesign.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDesign.BackgroundTransparency = 1.000
    TopDesign.Size = UDim2.new(0, 412, 0, 44)
    TopDesign.Image = "rbxassetid://3570695787"
    TopDesign.ImageColor3 = _G.Theme['ImgColor']
    TopDesign.ScaleType = Enum.ScaleType.Slice
    TopDesign.SliceCenter = Rect.new(100, 100, 100, 100)
    TopDesign.SliceScale = 0.05

    TopDesign_2.Name = "TopDesign"
    TopDesign_2.Parent = HomeFrame
    TopDesign_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TopDesign_2.BackgroundTransparency = 1.000
    TopDesign_2.Size = UDim2.new(0, 412, 0, 5)
    TopDesign_2.Image = "rbxassetid://3570695787"
    TopDesign_2.ImageColor3 = _G.Theme['AccentColor']
    TopDesign_2.ScaleType = Enum.ScaleType.Slice
    TopDesign_2.SliceCenter = Rect.new(100, 100, 100, 100)
    TopDesign_2.SliceScale = 0.05

    TextLabel.Parent = HomeFrame
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.BorderSizePixel = 0
    TextLabel.Position = UDim2.new(0, 0, 0, 5)
    TextLabel.Size = UDim2.new(0, 120, 0, 40)
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.Text = Text
    TextLabel.TextColor3 = _G.Theme['AccentColor']
    TextLabel.TextSize = 18.000

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = HomeFrame
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderSizePixel = 0
    TabContainer.ClipsDescendants = true
    TabContainer.Position = UDim2.new(0.29126215, 0, 0.0219298247, 0)
    TabContainer.Size = UDim2.new(0, 292, 0, 35)

    UIListLayout.Parent = TabContainer
    UIListLayout.FillDirection = Enum.FillDirection.Horizontal
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

    Container.Name = "Container"
    Container.Parent = HomeFrame
    Container.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    Container.BackgroundTransparency = 1.000
    Container.BorderSizePixel = 0
    Container.Position = UDim2.new(0, 0, 0.173076928, 0)
    Container.Size = UDim2.new(0, 412, 0, 215)

    local function TQVF_fake_script() -- HomeFrame.LocalScript 
        local script = Instance.new('LocalScript', HomeFrame)
        local UILIB = {}
        UILIB = script.Parent
        local UserInputService = game:GetService("UserInputService")
        local dragging
        local dragInput
        local dragStart
        local startPos
        local function update(input)
            local delta = input.Position - dragStart
            UILIB:TweenPosition(UDim2.new(startPos.X.Scale,
                                          startPos.X.Offset + delta.X,
                                          startPos.Y.Scale,
                                          startPos.Y.Offset + delta.Y),
                                "Out", "Linear", 0.1, true)
        end
        UILIB.InputBegan:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseButton1 or
                input.UserInputType == Enum.UserInputType.Touch then
                dragging = true
                dragStart = input.Position
                startPos = UILIB.Position

                input.Changed:Connect(
                    function()
                        if input.UserInputState == Enum.UserInputState.End then
                            dragging = false
                        end
                    end)
            end
        end)
        UILIB.InputChanged:Connect(function(input)
            if input.UserInputType == Enum.UserInputType.MouseMovement or
                input.UserInputType == Enum.UserInputType.Touch then
                dragInput = input
            end
        end)
        UserInputService.InputChanged:Connect(
            function(input)
                if input == dragInput and dragging then
                    update(input)
                end
            end)
        end
    coroutine.wrap(TQVF_fake_script)()

    local tabshit = {}
    function tabshit:CreateTab(Text)
        local Frame = Instance.new("Frame")
        local TextButton = Instance.new("TextButton")
        local SecContainer = Instance.new("Frame")
        local UIListLayout_2 = Instance.new("UIListLayout")

        Frame.Parent = TabContainer
        Frame.BackgroundColor3 = _G.Theme['ImgColor']
        Frame.BorderSizePixel = 0
        Frame.ClipsDescendants = true
        Frame.Position = UDim2.new(0, 175, 0, 110)
        Frame.Size = UDim2.new(0, 103, 0, 40)

        TextButton.Parent = Frame
        TextButton.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
        TextButton.BackgroundTransparency = 1.000
        TextButton.BorderColor3 = Color3.fromRGB(56, 56, 56)
        TextButton.BorderSizePixel = 0
        TextButton.Size = UDim2.new(0, 103, 0, 40)
        TextButton.AutoButtonColor = false
        TextButton.Font = Enum.Font.SourceSansBold
        TextButton.Text = Text
        TextButton.TextColor3 = Color3.fromRGB(255, 255, 255)
        TextButton.TextSize = 15.000
        TextButton.MouseButton1Down:connect(
            function()
                for i, v in pairs(Container:GetChildren()) do
                    if v:IsA('Frame') then
                        v.Visible = false
                        if v.Name == Text then
                            v.Visible = true
                        end
                    elseif v:IsA('ImageLabel') then
                        v.Visible = false
                    end
                end
            end)

        SecContainer.Name = Text
        SecContainer.Parent = Container
        SecContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        SecContainer.BackgroundTransparency = 1.000
        SecContainer.BorderSizePixel = 0
        SecContainer.Position = UDim2.new(0, 5, 0, 7)
        SecContainer.Size = UDim2.new(0, 116, 0, 201)

        UIListLayout_2.Parent = SecContainer
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder

        local function JEOZBI_fake_script() -- TabContainer.LocalScript 
            local script = Instance.new('LocalScript', TabContainer)
    
            local parent = script.Parent
            local value = 0
            for _, v in pairs(parent:GetChildren()) do
                if v:IsA('Frame') then value = value + 1 end
            end
            wait(.25)
            local storedshit = value
            value = value * 292 / value
            storedshit = value / storedshit
            for i, v in pairs(parent:GetChildren()) do
                if v:IsA('Frame') then
                    v.Size = UDim2.new(0, storedshit, 0, 40)
                    v.TextButton.Size = UDim2.new(0, storedshit, 0, 40)
                end
            end
        end
        coroutine.wrap(JEOZBI_fake_script)()

        local section = {}

        function section:CreateSection(text)

            local Frame_3 = Instance.new("ImageLabel")
            local TextButton_3 = Instance.new("TextButton")
            local ShitContainer = Instance.new("ImageLabel")
            local ScrollingFrame = Instance.new("ScrollingFrame")
            local UIListLayout_3 = Instance.new("UIListLayout")

            Frame_3.Name = text
            Frame_3.Parent = SecContainer
            Frame_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Frame_3.BackgroundTransparency = 1.000
            Frame_3.Size = UDim2.new(0, 116, 0, 32)
            Frame_3.Image = "rbxassetid://3570695787"
            Frame_3.ImageColor3 = _G.Theme['ImgColor']
            Frame_3.ScaleType = Enum.ScaleType.Slice
            Frame_3.SliceCenter = Rect.new(100, 100, 100, 100)
            Frame_3.SliceScale = 0.05

            TextButton_3.Parent = Frame_3
            TextButton_3.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
            TextButton_3.BackgroundTransparency = 1.000
            TextButton_3.BorderColor3 = Color3.fromRGB(56, 56, 56)
            TextButton_3.BorderSizePixel = 0
            TextButton_3.Size = UDim2.new(0, 116, 0, 32)
            TextButton_3.AutoButtonColor = false
            TextButton_3.Font = Enum.Font.SourceSansBold
            TextButton_3.Text = text
            TextButton_3.TextColor3 = Color3.fromRGB(255, 255, 255)
            TextButton_3.TextSize = 15.000
            TextButton_3.MouseButton1Down:connect(
                function()
                    for i, v in pairs(Container:GetChildren()) do
                        if v:IsA('ImageLabel') then
                            v.Visible = false
                            if v.Name == text then
                                v.Visible = true
                            end
                        end
                    end
                end)

            ShitContainer.Name = text
            ShitContainer.Parent = Container
            ShitContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ShitContainer.BackgroundTransparency = 1.000
            ShitContainer.Position = UDim2.new(0, 125, 0, 7)
            ShitContainer.Size = UDim2.new(0, 282, 0, 201)
            ShitContainer.Image = "rbxassetid://3570695787"
            ShitContainer.ImageColor3 = _G.Theme['ImgColor']
            ShitContainer.ScaleType = Enum.ScaleType.Slice
            ShitContainer.SliceCenter = Rect.new(100, 100, 100, 100)
            ShitContainer.SliceScale = 0.05

            ScrollingFrame.Parent = ShitContainer
            ScrollingFrame.Active = true
            ScrollingFrame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ScrollingFrame.BackgroundTransparency = 1.000
            ScrollingFrame.BorderSizePixel = 0
            ScrollingFrame.Position =
                UDim2.new(0.0106382975, 0, 0.0298507456, 0)
            ScrollingFrame.Size = UDim2.new(0, 275, 0, 195)
            ScrollingFrame.ScrollBarThickness = 0

            UIListLayout_3.Parent = ScrollingFrame
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 4)

            local function aidsppshit() -- TextButton_5.LocalScript 
                local script = Instance.new('LocalScript', ScrollingFrame)

                local aids = script.Parent
                wait(1.5)
                aids.CanvasSize = UDim2.new(0, 0, 0, aids.UIListLayout.AbsoluteContentSize.Y)
            end
            coroutine.wrap(aidsppshit)()

            local Toolshit = {}

            function Toolshit:CreateButton(text, callback)
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextButton")
                local callback = callback or function() end

                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = _G.Theme['OtherColor']
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.AutoButtonColor = false
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
                TextButton_4.MouseButton1Down:connect(
                    function() pcall(callback) end)
            end

            function Toolshit:CreateLabel(text)
                local Frame_4 = Instance.new("ImageLabel")
                local TextButton_4 = Instance.new("TextButton")

                Frame_4.Name = "Frame"
                Frame_4.Parent = ScrollingFrame
                Frame_4.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_4.BackgroundTransparency = 1.000
                Frame_4.Size = UDim2.new(0, 275, 0, 32)
                Frame_4.Image = "rbxassetid://3570695787"
                Frame_4.ImageColor3 = _G.Theme['OtherColor']
                Frame_4.ScaleType = Enum.ScaleType.Slice
                Frame_4.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_4.SliceScale = 0.05

                TextButton_4.Parent = Frame_4
                TextButton_4.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_4.BackgroundTransparency = 1.000
                TextButton_4.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_4.BorderSizePixel = 0
                TextButton_4.Size = UDim2.new(0, 275, 0, 32)
                TextButton_4.AutoButtonColor = false
                TextButton_4.Font = Enum.Font.SourceSansBold
                TextButton_4.Text = text
                TextButton_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_4.TextSize = 15.000
            end

            function Toolshit:CreateToggle(title, description, callback)
                local callback = callback or function() end
                local actions = {}
                local enabled = false
                local Frame_7 = Instance.new("ImageLabel")
                local Frame_8 = Instance.new("ImageLabel")
                local TextButton_7 = Instance.new("TextButton")
                local TextLabel_3 = Instance.new("TextLabel")

                Frame_7.Name = "Frame"
                Frame_7.Parent = ScrollingFrame
                Frame_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_7.BackgroundTransparency = 1.000
                Frame_7.ClipsDescendants = true
                Frame_7.Position = UDim2.new(0, 0, 0.369230777, 0)
                Frame_7.Size = UDim2.new(0, 275, 0, 50)
                Frame_7.Image = "rbxassetid://3570695787"
                Frame_7.ImageColor3 = _G.Theme['OtherColor']
                Frame_7.ScaleType = Enum.ScaleType.Slice
                Frame_7.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_7.SliceScale = 0.05

                Frame_8.Name = "Frame"
                Frame_8.Parent = Frame_7
                Frame_8.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_8.BackgroundTransparency = 1.000
                Frame_8.ClipsDescendants = true
                Frame_8.Position = UDim2.new(0, 249, 0, 6)
                Frame_8.Size = UDim2.new(0, 20, 0, 20)
                Frame_8.Image = "rbxassetid://3570695787"
                Frame_8.ImageColor3 = Color3.fromRGB(255, 60, 60)
                Frame_8.ScaleType = Enum.ScaleType.Slice
                Frame_8.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_8.SliceScale = 0.05

                TextButton_7.Parent = Frame_7
                TextButton_7.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_7.BackgroundTransparency = 1.000
                TextButton_7.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_7.BorderSizePixel = 0
                TextButton_7.Size = UDim2.new(0, 275, 0, 32)
                TextButton_7.AutoButtonColor = false
                TextButton_7.Font = Enum.Font.SourceSansBold
                TextButton_7.Text = title
                TextButton_7.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_7.TextSize = 15.000

                TextLabel_3.Parent = Frame_7
                TextLabel_3.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_3.BackgroundTransparency = 1.000
                TextLabel_3.Position = UDim2.new(0, 9, 0, 28)
                TextLabel_3.Size = UDim2.new(0, 266, 0, 22)
                TextLabel_3.Font = Enum.Font.SourceSansBold
                TextLabel_3.Text = description
                TextLabel_3.TextColor3 = Color3.fromRGB(111, 111, 111)
                TextLabel_3.TextSize = 14.000
                TextLabel_3.TextXAlignment = Enum.TextXAlignment.Left

                function fire()
                    enabled = not enabled
                    Frame_8.ImageColor3 = enabled and _G.Theme['toggleon'] or _G.Theme['toggleoff']
                    pcall(callback, enabled)
                end

                TextButton_7.MouseButton1Down:connect(fire)

                function actions:Set(arg)
                    Frame_8.ImageColor3 = enabled and _G.Theme['toggleon'] or _G.Theme['toggleoff']
                    pcall(callback, arg)
                end
            end

            function Toolshit:CreateTextBox(text, callback)
                local callback = callback or function() end
                local Frame_9 = Instance.new("ImageLabel")
                local TextBox = Instance.new("TextBox")

                Frame_9.Name = "Frame"
                Frame_9.Parent = ScrollingFrame
                Frame_9.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_9.BackgroundTransparency = 1.000
                Frame_9.ClipsDescendants = true
                Frame_9.Position = UDim2.new(0, 0, 0.184615389, 0)
                Frame_9.Size = UDim2.new(0, 275, 0, 32)
                Frame_9.Image = "rbxassetid://3570695787"
                Frame_9.ImageColor3 = _G.Theme['OtherColor']
                Frame_9.ScaleType = Enum.ScaleType.Slice
                Frame_9.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_9.SliceScale = 0.05

                TextBox.Parent = Frame_9
                TextBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.BackgroundTransparency = 1.000
                TextBox.BorderSizePixel = 0
                TextBox.Size = UDim2.new(0, 275, 0, 32)
                TextBox.Font = Enum.Font.SourceSansBold
                TextBox.PlaceholderText = text
                TextBox.Text = ""
                TextBox.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextBox.TextSize = 15.000
                TextBox.FocusLost:Connect(
                    function(ep)
                        if ep then
                            if #TextBox.Text > 0 then
                                pcall(callback, TextBox.Text)
                                TextBox.Text = ""
                            end
                        end
                    end)
            end
            function Toolshit:CreateDropdown(text)
                local Frame_5 = Instance.new("ImageLabel")
                local TextLabel_2 = Instance.new("TextLabel")
                local TextButton_5 = Instance.new("TextButton")
                local Frame_6 = Instance.new("ImageLabel")
                local UIListLayout_4 = Instance.new("UIListLayout")

                Frame_5.Name = "Frame"
                Frame_5.Parent = ScrollingFrame
                Frame_5.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_5.BackgroundTransparency = 1.000
                Frame_5.ClipsDescendants = true
                Frame_5.Position = UDim2.new(0, 0, 0.184615389, 0)
                Frame_5.Size = UDim2.new(0, 275, 0, 32)
                Frame_5.Image = "rbxassetid://3570695787"
                Frame_5.ImageColor3 = _G.Theme['OtherColor']
                Frame_5.ScaleType = Enum.ScaleType.Slice
                Frame_5.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_5.SliceScale = 0.05

                TextLabel_2.Parent = Frame_5
                TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.BackgroundTransparency = 1.000
                TextLabel_2.BorderSizePixel = 0
                TextLabel_2.Size = UDim2.new(0, 275, 0, 32)
                TextLabel_2.Font = Enum.Font.SourceSansBold
                TextLabel_2.Text =
                    "                                                                                   v"
                TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextLabel_2.TextSize = 15.000
                TextLabel_2.TextWrapped = true

                TextButton_5.Parent = Frame_5
                TextButton_5.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                TextButton_5.BackgroundTransparency = 1.000
                TextButton_5.BorderColor3 = Color3.fromRGB(56, 56, 56)
                TextButton_5.BorderSizePixel = 0
                TextButton_5.Size = UDim2.new(0, 275, 0, 32)
                TextButton_5.AutoButtonColor = false
                TextButton_5.Font = Enum.Font.SourceSansBold
                TextButton_5.Text = text
                TextButton_5.TextColor3 = Color3.fromRGB(255, 255, 255)
                TextButton_5.TextSize = 15.000

                Frame_6.Name = "Frame"
                Frame_6.Parent = Frame_5
                Frame_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                Frame_6.BackgroundTransparency = 1.000
                Frame_6.ClipsDescendants = false
                Frame_6.Position = UDim2.new(0, 0, 0, 32)
                Frame_6.Size = UDim2.new(0, 275, 0, 32)
                Frame_6.Image = "rbxassetid://3570695787"
                Frame_6.ImageColor3 = _G.Theme['OtherColor']
                Frame_6.ScaleType = Enum.ScaleType.Slice
                Frame_6.SliceCenter = Rect.new(100, 100, 100, 100)
                Frame_6.SliceScale = 0.05

                UIListLayout_4.Parent = Frame_6
                UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder

                function dropdownshit()
                        local script = Instance.new("LocalScript",TextButton_5)
                        local TextButton_5 = script.Parent
                        local container = script.Parent.Parent.Frame
                        local box = script.Parent.Parent.Parent
                        local value = 0
                        local toggled = false
                        wait(1)
                        for _,v in pairs(container:GetChildren()) do
                            if v:IsA('TextButton')  then
                                value = value + 1
                            end
                        end
                        wait(1)
                        value = value * 32
                        value = value + 32
                        TextButton_5.MouseButton1Down:connect(function()
                        if toggled == false then
                            toggled = true
                            Frame_5:TweenSize(
                                UDim2.new(0, 275, 0, value), 'Out',
                                'Linear', .25)
                            wait(.25)
                            box.CanvasSize =
                                UDim2.new(0, 0, 0, box.UIListLayout
                                            .AbsoluteContentSize.Y)
                        elseif toggled == true then
                            toggled = false
                            print(value..' true')
                            Frame_5:TweenSize(
                                UDim2.new(0, 275, 0, 32), 'In', 'Linear',
                                .25)
                            wait(.25)
                            box.CanvasSize =
                                UDim2.new(0, 0, 0, box.UIListLayout
                                            .AbsoluteContentSize.Y)
                        end
                    end)
                end
                coroutine.wrap(dropdownshit)()
                
                    local droptable = {}

                    function droptable:AddButton(text, callback)
                        local TextButton_6 = Instance.new("TextButton")

                        TextButton_6.Parent = Frame_6
                        TextButton_6.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
                        TextButton_6.BackgroundTransparency = 1.000
                        TextButton_6.BorderColor3 = Color3.fromRGB(56, 56, 56)
                        TextButton_6.BorderSizePixel = 0
                        TextButton_6.Size = UDim2.new(0, 275, 0, 32)
                        TextButton_6.AutoButtonColor = false
                        TextButton_6.Font = Enum.Font.SourceSansBold
                        TextButton_6.Text = text
                        TextButton_6.TextColor3 = Color3.fromRGB(255, 255, 255)
                        TextButton_6.TextSize = 15.000
                        TextButton_6.MouseButton1Down:connect(
                            function() pcall(callback) end)
                    end
                    return droptable
                end
                return Toolshit
            end
            return section
        end
        return tabshit
    end
	local mainui = library:Create('Rawr Hub')
	local testingtab = mainui:CreateTab('Prison Life')
    local testingsection = testingtab:CreateSection('Teleports')
    testingsection:CreateTextBox('Player Name',function(text)
        Target = text
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players[Target].Character.HumanoidRootPart.CFrame
    end)
    local dropshit = testingsection:CreateDropdown('Prison Teleports')
    dropshit:AddButton('Prison In',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(921.025757, 99.9899902, 2467.31079, -0.267973721, -6.99410947e-08, -0.963426113, 7.27738296e-08, 1, -9.28379791e-08, 0.963426113, -9.49903551e-08, -0.267973721)
    end)
    dropshit:AddButton('Prison Yard',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(770.090637, 97.9999466, 2476.68628, -0.438502103, 8.88243079e-08, 0.898730159, 4.27871782e-08, 1, -7.7956706e-08, -0.898730159, 4.26994751e-09, -0.438502103)
    end)
    dropshit:AddButton('Prison Out',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(461.056885, 98.0399399, 2216.55322, 0.101156361, 2.81871113e-08, 0.994870543, -9.2718146e-08, 1, -1.89050535e-08, -0.994870543, -9.03301824e-08, 0.101156361)
    end)
    dropshit:AddButton('Cafeteria',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(895.286499, 99.9899597, 2281.979, -0.985367537, -5.1045614e-08, -0.170442879, -6.01460997e-08, 1, 4.82296407e-08, 0.170442879, 5.77753987e-08, -0.985367537)
    end)
    local dropshit2 = testingsection:CreateDropdown('Garage Teleports')
    dropshit2:AddButton('Criminal Garage',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-910.708557, 95.1273117, 2152.31763, 0.0549355969, -3.99537363e-08, -0.998489916, 4.12214618e-08, 1, -3.77462115e-08, 0.998489916, -3.90856023e-08, 0.0549355969)
    end)
    dropshit2:AddButton('Prison Garage',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(618.632263, 98.2000275, 2493.61426, 0.999138653, -4.66199612e-09, -0.0414963216, 5.53297586e-09, 1, 2.08744684e-08, 0.0414963216, -2.10860875e-08, 0.999138653)
    end)
    dropshit2:AddButton('City Garage',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-530.869141, 54.5750389, 1776.4071, 0.861634672, -7.79034437e-09, 0.507528961, 7.92556598e-09, 1, 1.89427962e-09, -0.507528961, 2.39027731e-09, 0.861634672)
    end)
    local dropshit3 = testingsection:CreateDropdown('Base Teleports')
    dropshit3:AddButton('Criminal Base',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-975.901001, 109.323792, 2070.86035, -0.0506503284, 5.07623064e-08, -0.998716474, -3.09326289e-08, 1, 5.2396306e-08, 0.998716474, 3.35468187e-08, -0.0506503284)
    end)
    dropshit3:AddButton('Guard Base',function()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(803.225464, 99.9900055, 2264.79517, 0.986784279, -1.03143103e-08, -0.162039518, 8.13453571e-09, 1, -1.41155603e-08, 0.162039518, 1.26108963e-08, 0.986784279)
    end)
    local testingsection2 = testingtab:CreateSection('Misc')
    testingsection2:CreateButton('Super Punch',function()
        mainRemotes=game.ReplicatedStorage;meleeRemote=mainRemotes['meleeEvent']mouse=game.Players.LocalPlayer:GetMouse()punching=false;cooldown=false;function punch()cooldown=true;local a=Instance.new("Part",game.Players.LocalPlayer.Character)a.Transparency=1;a.Size=Vector3.new(5,2,3)a.CanCollide=false;local b=Instance.new("Weld",a)b.Part0=game.Players.LocalPlayer.Character.Torso;b.Part1=a;b.C1=CFrame.new(0,0,2)a.Touched:connect(function(c)if game.Players:FindFirstChild(c.Parent.Name)then local d=game.Players:FindFirstChild(c.Parent.Name)if d.Name~=game.Players.LocalPlayer.Name then a:Destroy()for e=1,100 do meleeRemote:FireServer(d)end end end end)wait(1)cooldown=false;a:Destroy()end;mouse.KeyDown:connect(function(f)if cooldown==false then if f:lower()=="f"then punch()end end end)
    end)

    testingsection2:CreateButton('Arrest All',function()
    Player=game.Players.LocalPlayer;Pcf=Player.Character.HumanoidRootPart.CFrame;for a,b in pairs(game.Teams.Criminals:GetPlayers())do if b.Name~=Player.Name then local a=10;repeat wait()a=a-1;game.Workspace.Remote.arrest:InvokeServer(b.Character.HumanoidRootPart)Player.Character.HumanoidRootPart.CFrame=b.Character.HumanoidRootPart.CFrame*CFrame.new(0,0,1)until a==0 end end
    end)
    testingsection2:CreateButton('Btools',function()
        local a=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)local b=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)local c=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)local d=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)local e=Instance.new("HopperBin",game.Players.LocalPlayer.Backpack)a.BinType="Clone"b.BinType="GameTool"c.BinType="Hammer"d.BinType="Script"e.BinType="Grab"
    end)
    testingsection2:CreateButton('Remove Doors',function()
        Workspace.Prison_Cellblock.doors:Destroy()for a,b in pairs(workspace:GetChildren())do if b.Name=="Doors"then b:Destroy()end end
    end)
    testingsection2:CreateButton('Remove Fences',function()
        game.Workspace.Prison_Fences:Destroy()
    end)
    testingsection2:CreateButton('Key Card',function()
        local a=game:GetService("Workspace")["Prison_ITEMS"].single["Key card"].ITEMPICKUP;local b=game:GetService("Workspace").Remote.ItemHandler;b:InvokeServer(a)
    end)
    testingsection2:CreateButton('Click Arrest',function()
        local a=game.Players.LocalPlayer:GetMouse()local b=game.Workspace.Remote.arrest;a.Button1Down:connect(function()local c=a.Target;local d=b:InvokeServer(c)end)
    end)
    testingsection2:CreateToggle('ESP','Captures every trace of every single player.',function(bool)
        if bool == true then
            local a=Instance.new("Folder",game.CoreGui)a.Name="ESP"local b=Instance.new("BoxHandleAdornment")b.Name="nilBox"b.Size=Vector3.new(4,7,4)b.Color3=Color3.new(100/255,100/255,100/255)b.Transparency=0.7;b.ZIndex=0;b.AlwaysOnTop=true;b.Visible=true;local c=Instance.new("BillboardGui")c.Name="nilNameTag"c.Enabled=false;c.Size=UDim2.new(0,200,0,50)c.AlwaysOnTop=true;c.StudsOffset=Vector3.new(0,1.8,0)local d=Instance.new("TextLabel",c)d.Name="Tag"d.BackgroundTransparency=1;d.Position=UDim2.new(0,-50,0,0)d.Size=UDim2.new(0,300,0,20)d.TextSize=20;d.TextColor3=Color3.new(100/255,100/255,100/255)d.TextStrokeColor3=Color3.new(0/255,0/255,0/255)d.TextStrokeTransparency=0.4;d.Text="nil"d.Font=Enum.Font.SourceSansBold;d.TextScaled=false;local e=function(f)repeat wait()until f.Character~=nil;f.Character:WaitForChild("Humanoid")local g=a:FindFirstChild(f.Name)g:ClearAllChildren()local h=b:Clone()h.Name=f.Name.."Box"h.Adornee=f.Character;h.Parent=g;local i=c:Clone()i.Name=f.Name.."NameTag"i.Enabled=true;i.Parent=g;i.Adornee=f.Character:WaitForChild("Head",5)if not i.Adornee then return UnloadCharacter(f)end;i.Tag.Text=f.Name;local j=10;while true do for k=0,1,0.001*j do h.Color3=Color3.fromHSV(k,1,1)i.Tag.TextColor3=Color3.fromHSV(k,1,1)wait()end end;local l;local m=function()if not pcall(function()f.Character.Humanoid.DisplayDistanceType=Enum.HumanoidDisplayDistanceType.None;local n=math.floor(f.Character.Humanoid.MaxHealth)local o=math.floor(f.Character.Humanoid.Health)i.Tag.Text=f.Name.."\n"..(n~=0 and tostring(math.floor(o/n*100))or"0").."%  "..tostring(o).."/"..tostring(n)end)then l:Disconnect()end end;m()l=f.Character.Humanoid.Changed:Connect(m)end;local UnloadCharacter=function(f)local g=a:FindFirstChild(f.Name)if g and(g:FindFirstChild(f.Name.."Box")~=nil or g:FindFirstChild(f.Name.."NameTag")~=nil)then g:ClearAllChildren()end end;local p=function(f)local g=Instance.new("Folder",a)g.Name=f.Name;f.CharacterAdded:Connect(function()pcall(e,f)end)f.CharacterRemoving:Connect(function()pcall(UnloadCharacter,f)end)f.Changed:Connect(function(q)if q=="TeamColor"then UnloadCharacter(f)wait()e(f)end end)e(f)end;local r=function(f)UnloadCharacter(f)local g=a:FindFirstChild(f.Name)if g then g:Destroy()end end;for k,f in pairs(game:GetService("Players"):GetPlayers())do spawn(function()pcall(p,f)end)end;game:GetService("Players").PlayerAdded:Connect(function(f)pcall(p,f)end)game:GetService("Players").PlayerRemoving:Connect(function(f)pcall(r,f)end)game:GetService("Players").LocalPlayer.NameDisplayDistance=0
        else
            local esp = game:GetService("CoreGui").ESP
            esp:Remove()
        end
    end)
    testingsection2:CreateToggle('Tase Bypass','Bypassing Tase Thing.',function(bool)
        if bool == true then
            game.Players.LocalPlayer.Character.ClientInputHandler.Disabled=true;game.Players.LocalPlayer.CharacterAdded:connect(function()game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)game.Players.LocalPlayer.Character.ClientInputHandler.Disabled=true end)
        else
            game.Players.LocalPlayer.Character.ClientInputHandler.Disabled=false;game.Players.LocalPlayer.CharacterAdded:connect(function()game.Workspace:WaitForChild(game.Players.LocalPlayer.Name)game.Players.LocalPlayer.Character.ClientInputHandler.Disabled=false end)
        end
    end)
    testingsection2:CreateToggle('Tase All','Simple, Tase All.',function(bool)
        if bool == true then
            _G.tazeall=true;while _G.tazeall do function kill(a)local b={[1]={["RayObject"]=Ray.new(Vector3.new(829.838562,101.489998,2331.25635),Vector3.new(-30.6540909,-5.42795324,95.0308533)),["Distance"]=15.355997085571,["Cframe"]=CFrame.new(826.616699,100.8508,2340.11279,0.964640439,-0.00993416365,-0.263382077,9.31322575e-10,0.999289393,-0.0376908854,0.263569355,0.0363581516,0.963954985),["Hit"]=a.Character.Torso}}local c=game.Players.LocalPlayer.Backpack["Taser"]local d=game:GetService("ReplicatedStorage").ShootEvent;d:FireServer(b,c)end;for e,f in pairs(game.Players:GetChildren())do if f.Name~=game.Players.LocalPlayer.Name then kill(f)wait()end end end
        else
            _G.tazeall = false
        end
    end)
    testingsection2:CreateToggle('Invisible Fling','Edited Invisible Fling Script For Rawr Hub.',function(bool)
        if bool == true then
            game.StarterGui:SetCore("SendNotification", {
                Title = "Rawr Hub";
                Text = "Invisible Fling Loading... (Wait 8 Second Please.)"; 
                Duration = 5;
                Button1 = "Oh, Okay!";
            })
            local a=game.Players.LocalPlayer.Character;local b=Instance.new("Model",workspace)local c=Instance.new("Part",b)c.Name="Torso"c.CanCollide=false;c.Anchored=true;local d=Instance.new("Part",b)d.Name="Head"d.Anchored=true;d.CanCollide=false;local e=Instance.new("Humanoid",b)e.Name="Humanoid"c.Position=Vector3.new(0,9999,0)d.Position=Vector3.new(0,9991,0)game.Players.LocalPlayer.Character=b;wait(4)game.Players.LocalPlayer.Character=a;wait(4)local f=game.Players.LocalPlayer;mouse=f:GetMouse()local g=Instance.new("Humanoid")g.Parent=game.Players.LocalPlayer.Character;local h=game.Players.LocalPlayer.Character.HumanoidRootPart;for i,j in pairs(f.Character:GetChildren())do if j~=h and j.Name~="Humanoid"then j:Destroy()end end;local k=Instance.new("SelectionBox",h)k.Adornee=h;k.Color3=Color3.fromRGB(255,120,255)workspace.CurrentCamera.CameraSubject=h;game:GetService('RunService').Stepped:connect(function()game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide=false end)game:GetService('RunService').RenderStepped:connect(function()game.Players.LocalPlayer.Character.HumanoidRootPart.CanCollide=false end)power=500;power=power*10;wait(.1)local l=Instance.new("BodyThrust")l.Parent=game.Players.LocalPlayer.Character.HumanoidRootPart;l.Force=Vector3.new(power,0,power)l.Location=game.Players.LocalPlayer.Character.HumanoidRootPart.Position;local f=game.Players.LocalPlayer;local m=h;local n=true;local o=true;local p={f=0,b=0,l=0,r=0}local q={f=0,b=0,l=0,r=0}local r=120;local s=15;groot=h;function Fly()local t=Instance.new("BodyGyro",m)t.P=9e4;t.maxTorque=Vector3.new(0,0,0)t.cframe=m.CFrame;local u=Instance.new("BodyVelocity",m)u.velocity=Vector3.new(0,0,0)u.maxForce=Vector3.new(9e9,9e9,9e9)repeat wait()if p.l+p.r~=0 or p.f+p.b~=0 then s=s+.2;if s>r then s=r end elseif not(p.l+p.r~=0 or p.f+p.b~=0)and s~=0 then s=s-1;if s<0 then s=0 end end;if p.l+p.r~=0 or p.f+p.b~=0 then u.velocity=(game.Workspace.CurrentCamera.CoordinateFrame.lookVector*(p.f+p.b)+game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(p.l+p.r,(p.f+p.b)*.2,0).p-game.Workspace.CurrentCamera.CoordinateFrame.p)*s;q={f=p.f,b=p.b,l=p.l,r=p.r}elseif p.l+p.r==0 and p.f+p.b==0 and s~=0 then u.velocity=(game.Workspace.CurrentCamera.CoordinateFrame.lookVector*(q.f+q.b)+game.Workspace.CurrentCamera.CoordinateFrame*CFrame.new(q.l+q.r,(q.f+q.b)*.2,0).p-game.Workspace.CurrentCamera.CoordinateFrame.p)*s else u.velocity=Vector3.new(0,0.1,0)end until not n;p={f=0,b=0,l=0,r=0}q={f=0,b=0,l=0,r=0}s=0;t:Destroy()u:Destroy()end;mouse.KeyDown:connect(function(v)if v:lower()=="*"then if n then n=false else n=true;Fly()end elseif v:lower()=="w"then p.f=1 elseif v:lower()=="s"then p.b=-1 elseif v:lower()=="a"then p.l=-1 elseif v:lower()=="d"then p.r=1 end end)mouse.KeyUp:connect(function(v)if v:lower()=="w"then p.f=0 elseif v:lower()=="s"then p.b=0 elseif v:lower()=="a"then p.l=0 elseif v:lower()=="d"then p.r=0 elseif v:lower()=="r"then end end)Fly()
        else
            saved=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;wait()local a="LocalPlayer"local b=game:GetService("Workspace").Remote.loadchar;b:InvokeServer(a)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=saved
        end
    end)

    local testingsection3 = testingtab:CreateSection('Combat')
    local guns = testingsection3:CreateDropdown('Select Gun')
    guns:AddButton('Remington 870',function()
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["Remington 870"].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
    end)
    
    guns:AddButton('M9',function()
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver.M9.ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
    end)
    
    guns:AddButton('AK-47',function()
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].giver["AK-47"].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
    end)

    local extra = testingsection3:CreateDropdown('Extra Items')
    extra:AddButton('Sword',function()
        local plr=game.Players.LocalPlayer;local tool=Instance.new("Tool",plr.Backpack)tool.GripPos=Vector3.new(0.1,-1,0)tool.Name="Sword"local k=Instance.new("Part",tool)k.Name="Handle"k.Size=Vector3.new(0.4,4,0.4)local l=Instance.new("Animation",tool)l.AnimationId="rbxassetid://218504594"local m=plr.Character.Humanoid:LoadAnimation(l)db=true;da=false;tool.Equipped:connect(function()tool.Activated:connect(function()if db==true then db=false;m:Play()wait()da=true;db=true;wait(0.1)da=false end end)end)k.Touched:connect(function(n)if da==true then local o=n.Parent.Humanoid;if o~=nil then local p=game.Players:FindFirstChild(n.Parent.Name)for j=1,10 do if p.Name~="RealAnimus"then game.ReplicatedStorage.meleeEvent:FireServer(p)end end end end end)
    end)
    extra:AddButton('Hammer',function()
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single.Hammer.ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
    end)
    extra:AddButton('Knife',function()
    local A_1 = game:GetService("Workspace")["Prison_ITEMS"].single["Crude Knife"].ITEMPICKUP
    local Event = game:GetService("Workspace").Remote.ItemHandler
    Event:InvokeServer(A_1)
    end)

    testingsection3:CreateButton('All Guns',function()
        for a,b in pairs(Workspace.Prison_ITEMS.giver:GetChildren())do OwO=Workspace.Remote.ItemHandler:InvokeServer(b.ITEMPICKUP)end
    end)

    testingsection3:CreateButton('Modify Gun',function()
        local mod       = require(game:GetService('Players').LocalPlayer.Character:FindFirstChildOfClass("Tool").GunStates)
        mod.Damage      = 200
        mod.MaxAmmo     = math.huge
        mod.CurrentAmmo = math.huge
        mod.AutoFire    = true
        mod.FireRate    = 0
        mod.Spread      = 0
        mod.ReloadTime  = 0
        mod.Range       = math.huge
        mod.Bullets     = 100
        mod.StoredAmmo  = math.huge
    end)
    testingsection3:CreateButton('Ghost Gun',function()
        for i,v in pairs(game.Players.LocalPlayer.Backpack:GetDescendants())do
            if v.ClassName == "Model" then
                v:Destroy()
            end
        end
        game.Players.LocalPlayer.Backpack.M9.Part:Destroy()
        game.Players.LocalPlayer.Backpack.M9.Part:Destroy()
    end)

    testingsection3:CreateTextBox('Kill Player',function(textio)
        workspace.Remote.TeamEvent:FireServer("Medium stone grey")game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)wait(0.5)function kill(a)local b={[1]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-391.152252,8.65560055,-83.2166901)),["Distance"]=3.2524313926697,["Cframe"]=CFrame.new(840.310791,101.334137,2267.87988,0.0636406094,0.151434347,-0.986416459,0,0.988420188,0.151741937,0.997972965,-0.00965694897,0.0629036576),["Hit"]=a.Character.Head},[2]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-392.481476,-8.44939327,-76.7261353)),["Distance"]=3.2699294090271,["Cframe"]=CFrame.new(840.290466,101.184189,2267.93506,0.0964837447,0.0589403138,-0.993587971,4.65661287e-10,0.998245299,0.0592165813,0.995334625,-0.00571343815,0.0963144377),["Hit"]=a.Character.Head},[3]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-389.21701,-2.50536323,-92.2163162)),["Distance"]=3.1665518283844,["Cframe"]=CFrame.new(840.338867,101.236496,2267.80371,0.0166504811,0.0941716284,-0.995416701,1.16415322e-10,0.995554805,0.0941846818,0.999861419,-0.00156822044,0.0165764652),["Hit"]=a.Character.Head},[4]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-393.353973,3.13988972,-72.5452042)),["Distance"]=3.3218522071838,["Cframe"]=CFrame.new(840.277222,101.285957,2267.9707,0.117109694,0.118740402,-0.985994935,-1.86264515e-09,0.992826641,0.119563118,0.993119001,-0.0140019981,0.116269611),["Hit"]=a.Character.Head},[5]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-390.73172,3.2097764,-85.5477524)),["Distance"]=3.222757101059,["Cframe"]=CFrame.new(840.317993,101.286423,2267.86035,0.0517584644,0.123365127,-0.991010666,0,0.992340803,0.123530701,0.99865967,-0.00639375951,0.0513620302),["Hit"]=a.Character.Head}}local c=game.Players.LocalPlayer.Backpack["Remington 870"]local d=game:GetService("ReplicatedStorage").ShootEvent;d:FireServer(b,c)d:FireServer(b,c)end;for e,f in pairs(game.Players:GetChildren())do if f.Name==textio then kill(f)end end;wait(1)workspace.Remote.TeamEvent:FireServer("Bright orange")
    end)
    testingsection3:CreateButton('Kill All [For Free Exploits]',function()
        for a,b in next,game.Players:GetPlayers()do if b.Character~=nil and b~=game.Players.LocalPlayer then repeat local c=b.Character.HumanoidRootPart.CFrame;game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=CFrame.new(c.x,c.y,c.z-1)local d=game:GetService("ReplicatedStorage").meleeEvent;d:FireServer(b)d:FireServer(b)d:FireServer(b)wait()until b.Character.Humanoid.Health<=0 end end
    end)

    testingsection3:CreateToggle('Kill All','Killing Everyone.',function(bool)
        if bool == true then
            _G.KillALL=true;while _G.KillALL do workspace.Remote.TeamEvent:FireServer("Medium stone grey")game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)wait(0.5)function kill(a)local b={[1]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-391.152252,8.65560055,-83.2166901)),["Distance"]=3.2524313926697,["Cframe"]=CFrame.new(840.310791,101.334137,2267.87988,0.0636406094,0.151434347,-0.986416459,0,0.988420188,0.151741937,0.997972965,-0.00965694897,0.0629036576),["Hit"]=a.Character.Head},[2]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-392.481476,-8.44939327,-76.7261353)),["Distance"]=3.2699294090271,["Cframe"]=CFrame.new(840.290466,101.184189,2267.93506,0.0964837447,0.0589403138,-0.993587971,4.65661287e-10,0.998245299,0.0592165813,0.995334625,-0.00571343815,0.0963144377),["Hit"]=a.Character.Head},[3]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-389.21701,-2.50536323,-92.2163162)),["Distance"]=3.1665518283844,["Cframe"]=CFrame.new(840.338867,101.236496,2267.80371,0.0166504811,0.0941716284,-0.995416701,1.16415322e-10,0.995554805,0.0941846818,0.999861419,-0.00156822044,0.0165764652),["Hit"]=a.Character.Head},[4]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-393.353973,3.13988972,-72.5452042)),["Distance"]=3.3218522071838,["Cframe"]=CFrame.new(840.277222,101.285957,2267.9707,0.117109694,0.118740402,-0.985994935,-1.86264515e-09,0.992826641,0.119563118,0.993119001,-0.0140019981,0.116269611),["Hit"]=a.Character.Head},[5]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-390.73172,3.2097764,-85.5477524)),["Distance"]=3.222757101059,["Cframe"]=CFrame.new(840.317993,101.286423,2267.86035,0.0517584644,0.123365127,-0.991010666,0,0.992340803,0.123530701,0.99865967,-0.00639375951,0.0513620302),["Hit"]=a.Character.Head}}local c=game.Players.LocalPlayer.Backpack["Remington 870"]local d=game:GetService("ReplicatedStorage").ShootEvent;d:FireServer(b,c)d:FireServer(b,c)end;for e,f in pairs(game.Players:GetChildren())do if f.Name~=game.Players.LocalPlayer.Name then kill(f)end end;wait(1)workspace.Remote.TeamEvent:FireServer("Bright orange")wait(1.5)end
        else
            _G.KillALL = false
        end
    end)
    testingsection3:CreateToggle('Kill Criminals','Killing Criminals.',function(bool)
        if bool == true then
            _G.CriminalKill=true;while _G.CriminalKill do workspace.Remote.TeamEvent:FireServer("Medium stone grey")game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)wait(0.5)function kill(a)local b={[1]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-391.152252,8.65560055,-83.2166901)),["Distance"]=3.2524313926697,["Cframe"]=CFrame.new(840.310791,101.334137,2267.87988,0.0636406094,0.151434347,-0.986416459,0,0.988420188,0.151741937,0.997972965,-0.00965694897,0.0629036576),["Hit"]=a.Character.Head},[2]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-392.481476,-8.44939327,-76.7261353)),["Distance"]=3.2699294090271,["Cframe"]=CFrame.new(840.290466,101.184189,2267.93506,0.0964837447,0.0589403138,-0.993587971,4.65661287e-10,0.998245299,0.0592165813,0.995334625,-0.00571343815,0.0963144377),["Hit"]=a.Character.Head},[3]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-389.21701,-2.50536323,-92.2163162)),["Distance"]=3.1665518283844,["Cframe"]=CFrame.new(840.338867,101.236496,2267.80371,0.0166504811,0.0941716284,-0.995416701,1.16415322e-10,0.995554805,0.0941846818,0.999861419,-0.00156822044,0.0165764652),["Hit"]=a.Character.Head},[4]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-393.353973,3.13988972,-72.5452042)),["Distance"]=3.3218522071838,["Cframe"]=CFrame.new(840.277222,101.285957,2267.9707,0.117109694,0.118740402,-0.985994935,-1.86264515e-09,0.992826641,0.119563118,0.993119001,-0.0140019981,0.116269611),["Hit"]=a.Character.Head},[5]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-390.73172,3.2097764,-85.5477524)),["Distance"]=3.222757101059,["Cframe"]=CFrame.new(840.317993,101.286423,2267.86035,0.0517584644,0.123365127,-0.991010666,0,0.992340803,0.123530701,0.99865967,-0.00639375951,0.0513620302),["Hit"]=a.Character.Head}}local c=game.Players.LocalPlayer.Backpack["Remington 870"]local d=game:GetService("ReplicatedStorage").ShootEvent;d:FireServer(b,c)d:FireServer(b,c)end;for e,f in pairs(game.Players:GetChildren())do if f.TeamColor==BrickColor.new("Really red")then kill(f)end end;wait(1)workspace.Remote.TeamEvent:FireServer("Bright orange")wait(1.5)end
        else
            _G.CriminalKill = false
        end
    end)
    testingsection3:CreateToggle('Kill Prisoners','Killing Prisoners.',function(bool)
        if bool == true then
            _G.PrisonerKill=true;while _G.PrisonerKill do workspace.Remote.TeamEvent:FireServer("Medium stone grey")game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)wait(0.5)function kill(a)local b={[1]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-391.152252,8.65560055,-83.2166901)),["Distance"]=3.2524313926697,["Cframe"]=CFrame.new(840.310791,101.334137,2267.87988,0.0636406094,0.151434347,-0.986416459,0,0.988420188,0.151741937,0.997972965,-0.00965694897,0.0629036576),["Hit"]=a.Character.Head},[2]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-392.481476,-8.44939327,-76.7261353)),["Distance"]=3.2699294090271,["Cframe"]=CFrame.new(840.290466,101.184189,2267.93506,0.0964837447,0.0589403138,-0.993587971,4.65661287e-10,0.998245299,0.0592165813,0.995334625,-0.00571343815,0.0963144377),["Hit"]=a.Character.Head},[3]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-389.21701,-2.50536323,-92.2163162)),["Distance"]=3.1665518283844,["Cframe"]=CFrame.new(840.338867,101.236496,2267.80371,0.0166504811,0.0941716284,-0.995416701,1.16415322e-10,0.995554805,0.0941846818,0.999861419,-0.00156822044,0.0165764652),["Hit"]=a.Character.Head},[4]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-393.353973,3.13988972,-72.5452042)),["Distance"]=3.3218522071838,["Cframe"]=CFrame.new(840.277222,101.285957,2267.9707,0.117109694,0.118740402,-0.985994935,-1.86264515e-09,0.992826641,0.119563118,0.993119001,-0.0140019981,0.116269611),["Hit"]=a.Character.Head},[5]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-390.73172,3.2097764,-85.5477524)),["Distance"]=3.222757101059,["Cframe"]=CFrame.new(840.317993,101.286423,2267.86035,0.0517584644,0.123365127,-0.991010666,0,0.992340803,0.123530701,0.99865967,-0.00639375951,0.0513620302),["Hit"]=a.Character.Head}}local c=game.Players.LocalPlayer.Backpack["Remington 870"]local d=game:GetService("ReplicatedStorage").ShootEvent;d:FireServer(b,c)d:FireServer(b,c)end;for e,f in pairs(game.Players:GetChildren())do if f.TeamColor==BrickColor.new("Bright orange")then kill(f)end end;wait(1)workspace.Remote.TeamEvent:FireServer("Bright orange")wait(1.5)end
        else
            _G.PrisonerKill = false
        end
    end)
    testingsection3:CreateToggle('Kill Guards','Killing Guards.',function(bool)
        if bool == true then
            _G.GuardKill=true;while _G.GuardKill do workspace.Remote.TeamEvent:FireServer("Medium stone grey")game.Workspace.Remote.ItemHandler:InvokeServer(workspace.Prison_ITEMS.giver["Remington 870"].ITEMPICKUP)wait(0.5)function kill(a)local b={[1]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-391.152252,8.65560055,-83.2166901)),["Distance"]=3.2524313926697,["Cframe"]=CFrame.new(840.310791,101.334137,2267.87988,0.0636406094,0.151434347,-0.986416459,0,0.988420188,0.151741937,0.997972965,-0.00965694897,0.0629036576),["Hit"]=a.Character.Head},[2]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-392.481476,-8.44939327,-76.7261353)),["Distance"]=3.2699294090271,["Cframe"]=CFrame.new(840.290466,101.184189,2267.93506,0.0964837447,0.0589403138,-0.993587971,4.65661287e-10,0.998245299,0.0592165813,0.995334625,-0.00571343815,0.0963144377),["Hit"]=a.Character.Head},[3]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-389.21701,-2.50536323,-92.2163162)),["Distance"]=3.1665518283844,["Cframe"]=CFrame.new(840.338867,101.236496,2267.80371,0.0166504811,0.0941716284,-0.995416701,1.16415322e-10,0.995554805,0.0941846818,0.999861419,-0.00156822044,0.0165764652),["Hit"]=a.Character.Head},[4]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-393.353973,3.13988972,-72.5452042)),["Distance"]=3.3218522071838,["Cframe"]=CFrame.new(840.277222,101.285957,2267.9707,0.117109694,0.118740402,-0.985994935,-1.86264515e-09,0.992826641,0.119563118,0.993119001,-0.0140019981,0.116269611),["Hit"]=a.Character.Head},[5]={["RayObject"]=Ray.new(Vector3.new(845.555908,101.429337,2269.43945),Vector3.new(-390.73172,3.2097764,-85.5477524)),["Distance"]=3.222757101059,["Cframe"]=CFrame.new(840.317993,101.286423,2267.86035,0.0517584644,0.123365127,-0.991010666,0,0.992340803,0.123530701,0.99865967,-0.00639375951,0.0513620302),["Hit"]=a.Character.Head}}local c=game.Players.LocalPlayer.Backpack["Remington 870"]local d=game:GetService("ReplicatedStorage").ShootEvent;d:FireServer(b,c)d:FireServer(b,c)end;for e,f in pairs(game.Players:GetChildren())do if f.TeamColor==BrickColor.new("Bright blue")then kill(f)end end;wait(1)workspace.Remote.TeamEvent:FireServer("Bright orange")wait(1.5)end
        else
            _G.GuardKill = false
        end
    end)
    testingsection3:CreateToggle('Kill Aura','Kills everyone in inches from you.',function(bool)
        if bool == true then
            _G.killaura=true;mainRemotes=game.ReplicatedStorage;meleeRemote=mainRemotes['meleeEvent']while wait()do if _G.killaura then for a,b in pairs(game:GetService('Players'):GetChildren())do if b.Name~=game.Players.LocalPlayer.Name then meleeRemote:FireServer(b)end end end end
        else
            _G.killaura = false
        end
    end)

    local testingsection4 = testingtab:CreateSection('Player')
    testingsection4:CreateTextBox('Speed Value',function(text)
        Value = text
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end)
    testingsection4:CreateTextBox('Jump Value',function(text)
        Value = text
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end)
    local teams = testingsection4:CreateDropdown('Change Team')
    teams:AddButton('Inmute',function()
        Workspace.Remote.TeamEvent:FireServer("Bright orange")
    end)
    teams:AddButton('Guard',function()
        Workspace.Remote.TeamEvent:FireServer("Bright blue")
    end)
    teams:AddButton('Neutral',function()
        Workspace.Remote.TeamEvent:FireServer("Medium stone grey")
    end)
    teams:AddButton('Criminal',function()
        LCS=game.Workspace["Criminals Spawn"].SpawnLocation;LCS.CanCollide=false;LCS.Size=Vector3.new(51.05,24.12,54.76)LCS.CFrame=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;LCS.Transparency=1;wait(0.5)LCS.CFrame=CFrame.new(-920.510803,92.2271957,2138.27002,0,0,-1,0,1,0,1,0,0)LCS.Size=Vector3.new(6,0.2,6)LCS.Transparency=0
    end)
    testingsection4:CreateButton('Fast Respawn',function()
        saved=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;wait()local a="LocalPlayer"local b=game:GetService("Workspace").Remote.loadchar;b:InvokeServer(a)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=saved
    end)
    testingsection4:CreateToggle('No-Clip','that allows a player avatar to walk through any physical object',function(bool)
        if bool == true then
            _G.noclipthink=true;game:GetService('RunService').Stepped:connect(function()if _G.noclipthink then game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)end end)plr=game.Players.LocalPlayer;if _G.noclipthink==false then game.Players.LocalPlayer.Character.Humanoid:ChangeState(11)end
        else
            _G.noclipthink = false
        end
    end)
    testingsection4:CreateToggle('God Mode','Infinite Health. (Buggy)',function(bool)
        if bool == true then
            hu=game.Players.LocalPlayer.Character.Humanoid;local a=Instance.new("Humanoid")a.Parent=game.Players.LocalPlayer.Character;a.Name="Humanoid"wait(0.1)hu.Parent=game.Players.LocalPlayer;game.Workspace.CurrentCamera.CameraSubject=game.Players.LocalPlayer.Character;game.Players.LocalPlayer.Character.Animate.Disabled=true;wait(0.1)game.Players.LocalPlayer.Character.Animate.Disabled=false
        else
            saved=game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame;wait()local a="LocalPlayer"local b=game:GetService("Workspace").Remote.loadchar;b:InvokeServer(a)game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=saved
        end
    end)
    local testingsection5 = testingtab:CreateSection('Credits')
    testingsection5:CreateButton('Script: irfan#7830',function()
    end)
    testingsection5:CreateButton('Style & Library: Masterzz#0001',function()
    end)
    testingsection5:CreateButton('Ideas: bugged#8293',function()
    end)
    return library
end

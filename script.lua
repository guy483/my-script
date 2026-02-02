local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "anime hub",
   Icon = 0, -- Icon in Topbar. Can use Lucide Icons (string) or Roblox Image (number). 0 to use no icon (default).
   LoadingTitle = "anime",
   LoadingSubtitle = "by good_guy095",
   ShowText = "Rayfield", -- for mobile users to unhide rayfield, change if you'd like
   Theme = "Amethyst", -- Check https://[Log in to view URL]

   ToggleUIKeybind = "K", -- The keybind to toggle the UI visibility (string like "K" or Enum.KeyCode)

   DisableRayfieldPrompts = false,
   DisableBuildWarnings = false, -- Prevents Rayfield from warning when the script has a version mismatch with the interface

   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "anime Hub"
   },

   Discord = {
      Enabled = false, -- Prompt the user to join your Discord server if their executor supports it
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },

   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided", -- Use this to tell the user how to get a key
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏡home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")
Rayfield:Notify({
   Title = "you excuted the script successfuly",
   Content = "anime hub",
   Duration = 6.5,
   Image = 1488612299,
})

local Button = MainTab:CreateButton({
   Name = "infinite jump",
   Callback = function()
   local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui")
local button = Instance.new("TextButton")
local uiCorner = Instance.new("UICorner")
local uiGradient = Instance.new("UIGradient")

gui.Name = "InfiniteJumpGui"
gui.Parent = player:WaitForChild("PlayerGui")

button.Name = "InfiniteJumpButton"
button.Text = "Infinite Jump"
button.Size = UDim2.new(0.2, 0, 0.065, 0)
button.Position = UDim2.new(0.01, 0, 0.9, -50)
button.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
button.TextColor3 = Color3.fromRGB(255, 255, 255)
button.Font = Enum.Font.FredokaOne 
button.TextScaled = true 
button.Parent = gui

uiCorner.CornerRadius = UDim.new(0.8, 0)
uiCorner.Parent = button

-- Добавляем UIGradient для кнопки
uiGradient.Color = ColorSequence.new{
    ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 0, 255))
}
uiGradient.Parent = button

-- Переключение бесконечного прыжка
local infiniteJumpEnabled = false

button.MouseButton1Click:Connect(function()
    infiniteJumpEnabled = not infiniteJumpEnabled
    if infiniteJumpEnabled then
        button.Text = "Disable Infinite Jump"
    else
        button.Text = "Enable Infinite Jump"
    end
end)

-- Логика бесконечного прыжка
game:GetService("UserInputService").JumpRequest:Connect(function()
    if infiniteJumpEnabled then
        player.Character:FindFirstChildOfClass("Humanoid"):ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)-- The function that takes place when the button is pressed
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})

local Button = MainTab:CreateButton({
   Name = "click to tp | press ctrl+click to tp",
   Callback = function()
 loadstring(game:HttpGet("https://obj.wearedevs.net/2/scripts/Click%20Teleport.lua"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "copy a players avatar",
   Callback = function()
  loadstring(game:HttpGet("https://raw.githubusercontent.com/L4rdberk/l4rd/refs/heads/main/avchalf3nonotileak.txt"))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "inf yield",
   Callback = function()
  loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local Button = MainTab:CreateButton({
   Name = "SystemBroken Script",
   Callback = function()
loadstring(game:HttpGet('https://pastes.io/raw/ewrewe', true))()
   end,
})

local SusTab = Window:CreateTab("😏sussy stuff", nil) -- Title, Image
local SusSection = SusTab:CreateSection("sus")

local Button = SusTab:CreateButton({
   Name = "j@rk off tool | r15",
   Callback = function()
 loadstring(game:HttpGet("https://pastefy.app/YZoglOyJ/raw"))()
   end,
})

local Button = SusTab:CreateButton({
   Name = "j@rk off tool | r6",
   Callback = function()
 loadstring(game:HttpGet("https://pastefy.app/wa3v2Vgm/raw"))()
   end,
})

local Button = SusTab:CreateButton({
   Name = "sussy animation",
   Callback = function()

-- Feel free to modify, contact pystyt on discord if u want to show me the modifications you did to the script, thanks alot
-- Detect R6 or R15
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local isR6 = character:FindFirstChild("Torso") ~= nil

-- Notification Function
local function showNotification(message)
    local notificationGui = Instance.new("ScreenGui")
    notificationGui.Name = "NotificationGui"
    notificationGui.Parent = game.CoreGui

    local notificationFrame = Instance.new("Frame")
    notificationFrame.Size = UDim2.new(0, 300, 0, 50)
    notificationFrame.Position = UDim2.new(0.5, -150, 1, -60)
    notificationFrame.AnchorPoint = Vector2.new(0.5, 1)
    notificationFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    notificationFrame.BorderSizePixel = 0
    notificationFrame.Parent = notificationGui

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = notificationFrame

    local textLabel = Instance.new("TextLabel")
    textLabel.Size = UDim2.new(1, -20, 1, 0)
    textLabel.Position = UDim2.new(0, 10, 0, 0)
    textLabel.BackgroundTransparency = 1
    textLabel.Text = message .. " | by nikos_YT7"
    textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    textLabel.Font = Enum.Font.SourceSansSemibold
    textLabel.TextSize = 18
    textLabel.TextXAlignment = Enum.TextXAlignment.Left
    textLabel.Parent = notificationFrame

    notificationFrame.BackgroundTransparency = 1
    textLabel.TextTransparency = 1

    game:GetService("TweenService"):Create(
        notificationFrame,
        TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {BackgroundTransparency = 0}
    ):Play()

    game:GetService("TweenService"):Create(
        textLabel,
        TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out),
        {TextTransparency = 0}
    ):Play()

    task.delay(5, function()
        game:GetService("TweenService"):Create(
            notificationFrame,
            TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {BackgroundTransparency = 1}
        ):Play()

        game:GetService("TweenService"):Create(
            textLabel,
            TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.In),
            {TextTransparency = 1}
        ):Play()

        task.delay(0.5, function()
            notificationGui:Destroy()
        end)
    end)
end

-- Show notification based on rig type
if isR6 then
    showNotification("R6 detected")
else
    showNotification("R15 detected")
end

-- Create Screen GUI
local gui = Instance.new("ScreenGui")
gui.Name = "BangGui"
gui.Parent = game.CoreGui

-- Main Frame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 300, 0, 300)
mainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
mainFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
mainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mainFrame.BorderSizePixel = 0
mainFrame.Parent = gui

local uicorner = Instance.new("UICorner")
uicorner.CornerRadius = UDim.new(0, 20)
uicorner.Parent = mainFrame

-- Title
local title = Instance.new("TextLabel")
title.Size = UDim2.new(1, -60, 0, 30)
title.Position = UDim2.new(0, 10, 0, 0)
title.BackgroundTransparency = 1
title.Text = "Choose"
title.TextColor3 = Color3.fromRGB(255, 255, 255)
title.Font = Enum.Font.SourceSansSemibold
title.TextSize = 24
title.TextXAlignment = Enum.TextXAlignment.Left
title.Parent = mainFrame

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 30, 0, 30)
closeButton.Position = UDim2.new(1, -40, 0, 0)
closeButton.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
closeButton.Text = "X"
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 20
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Parent = mainFrame

local closeCorner = Instance.new("UICorner")
closeCorner.CornerRadius = UDim.new(0, 10)
closeCorner.Parent = closeButton

closeButton.MouseButton1Click:Connect(function()
    gui:Destroy()
end)

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 30, 0, 30)
minimizeButton.Position = UDim2.new(1, -80, 0, 0)
minimizeButton.BackgroundColor3 = Color3.fromRGB(255, 165, 0)
minimizeButton.Text = "-"
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 20
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Parent = mainFrame

local minimizeCorner = Instance.new("UICorner")
minimizeCorner.CornerRadius = UDim.new(0, 10)
minimizeCorner.Parent = minimizeButton

local minimized = false
minimizeButton.MouseButton1Click:Connect(function()
    minimized = not minimized
    if minimized then
        mainFrame:TweenSize(UDim2.new(0, 300, 0, 30), Enum.EasingDirection.In, Enum.EasingStyle.Quint, 0.5)
    else
        mainFrame:TweenSize(UDim2.new(0, 300, 0, 300), Enum.EasingDirection.Out, Enum.EasingStyle.Quint, 0.5)
    end
end)

-- Dragging Functionality
local dragging, dragStart, startPos
mainFrame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = mainFrame.Position
    end
end)

mainFrame.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart
        mainFrame.Position = UDim2.new(
            startPos.X.Scale,
            startPos.X.Offset + delta.X,
            startPos.Y.Scale,
            startPos.Y.Offset + delta.Y
        )
    end
end)

mainFrame.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

-- Scrolling Frame
local scrollingFrame = Instance.new("ScrollingFrame")
scrollingFrame.Size = UDim2.new(1, -20, 1, -50)
scrollingFrame.Position = UDim2.new(0, 10, 0, 40)
scrollingFrame.BackgroundTransparency = 1
scrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 300)
scrollingFrame.ScrollBarThickness = 6
scrollingFrame.Parent = mainFrame

local layout = Instance.new("UIListLayout")
layout.Padding = UDim.new(0, 10)
layout.HorizontalAlignment = Enum.HorizontalAlignment.Center
layout.Parent = scrollingFrame

-- Buttons Data
local buttons = {
    {name = "Bang 2", r6 = "https://[Log in to view URL]", r15 = "https://[Log in to view URL]"},
    {name = "Get Banged", r6 = "https://[Log in to view URL]", r15 = "https://[Log in to view URL]"},
    {name = "Suck", r6 = "https://[Log in to view URL]", r15 = "https://[Log in to view URL]"},
    {name = "Get Suck", r6 = "https://[Log in to view URL]", r15 = "https://[Log in to view URL]"},
    {name = "Jerk/Wank", r6 = "https://[Log in to view URL]", r15 = "https://[Log in to view URL]"}
}

for _, buttonData in pairs(buttons) do
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(0.8, 0, 0, 40)
    button.BackgroundColor3 = Color3.fromRGB(50, 150, 255)
    button.Text = buttonData.name
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 20
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    button.Parent = scrollingFrame

    local uicorner = Instance.new("UICorner")
    uicorner.CornerRadius = UDim.new(0, 10)
    uicorner.Parent = button

    button.MouseButton1Click:Connect(function()
        if isR6 then
            loadstring(game:HttpGet(buttonData.r6))()
        else
            loadstring(game:HttpGet(buttonData.r15))()
        end
    end)
end   -- The function that takes place when the button is pressed
   end,
})

local PvpTab = Window:CreateTab("⚔️pvp", nil) -- Title, Image
local PvpSection = PvpTab:CreateSection("pvp scripts")

local Button = PvpTab:CreateButton({
   Name = "Fling scripts *not by me*",
   Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/K1LAS1K/Ultimate-Fling-GUI/main/flingscript.lua"))()
   end,
})

local Button = PvpTab:CreateButton({
   Name = "AimLock *click Q to lock*",
   Callback = function()
game:GetService("StarterGui"):SetCore("SendNotification", {Title = "Loaded", Text = "press Q to auto aim"})

local UserInputService = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local Camera = workspace.CurrentCamera

-- Settings
local Settings = {
    BindKey = "Q" -- Custom Key
}

local isClicking = false

local function getClosestPlayer()
    local closestPlayer = nil
    local shortestDistance = math.huge

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer and player.Character and player.Character:FindFirstChild("HumanoidRootPart") then
            local distance = (player.Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).magnitude
            if distance < shortestDistance then
                closestPlayer = player
                shortestDistance = distance
            end
        end
    end

    return closestPlayer
end

local function aimAt(target)
    if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") then
        local targetPosition = target.Character.HumanoidRootPart.Position
        Camera.CFrame = CFrame.new(Camera.CFrame.Position, targetPosition)
        
        if not isClicking then
            isClicking = true
            mouse1click()
            isClicking = false
        end
    end
end

UserInputService.InputBegan:Connect(function(input, gameProcessed)
    if input.KeyCode == Enum.KeyCode[Settings.BindKey:upper()] and not gameProcessed then
        local closestPlayer = getClosestPlayer()
        aimAt(closestPlayer)
    end
end)
   end,
})

local Button = PvpTab:CreateButton({
   Name = "Anti Fling *breaks Walkspeed hack and makes you slow*",
   Callback = function()
   -- Anti-Fling Script (LocalScript)
-- Place in StarterPlayer > StarterPlayerScripts

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

-- Function to protect character from fling
local function protectCharacter(character)
    -- Wait for HumanoidRootPart
    local rootPart = character:WaitForChild("HumanoidRootPart", 5)
    if not rootPart then return end

    -- Prevent extreme velocities
    RunService.Heartbeat:Connect(function()
        -- Reset extreme velocity
        if rootPart.AssemblyLinearVelocity.Magnitude > 100 then
            rootPart.AssemblyLinearVelocity = Vector3.zero
        end
        if rootPart.AssemblyAngularVelocity.Magnitude > 100 then
            rootPart.AssemblyAngularVelocity = Vector3.zero
        end

        -- Ensure collisions are off for other players' parts
        for _, player in ipairs(Players:GetPlayers()) do
            if player ~= LocalPlayer and player.Character then
                for _, part in ipairs(player.Character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.CanCollide = false
                        part.Massless = true
                    end
                end
            end
        end
    end)
end

-- Run when character spawns
LocalPlayer.CharacterAdded:Connect(protectCharacter)

-- If already spawned
if LocalPlayer.Character then
    protectCharacter(LocalPlayer.Character)
end

   end,
})

local AnimationTab = Window:CreateTab("Animations", nil) -- Title, Image
local AnimationSection = AnimationTab:CreateSection("Animation")

local Button = AnimationTab:CreateButton({
   Name = "hand animations "really good",
   Callback = function()
   --[[

█░█ ▄▀█ █▄░█ █▀▄   █▀▄▀█ ▄▀█ █▀ ▀█▀ █▀▀ █▀█
█▀█ █▀█ █░▀█ █▄▀   █░▀░█ █▀█ ▄█ ░█░ ██▄ █▀▄

]]
-------------------  SETTINGS  ----------------------------

local KEY_MOVESET1 = Enum.KeyCode.Z
local KEY_MOVESET2 = Enum.KeyCode.X

local BUTTON1_IMAGE = "rbxassetid://72003920813541"
local BUTTON2_IMAGE = "rbxassetid://81473005801088"

local IdleAnimId = "rbxassetid://77423395801230"
local WalkAnimId = "rbxassetid://71439424797320"

local Move1AnimId = "rbxassetid://88992279344579"
local Move2AnimId = "rbxassetid://80401959620185"

local Move1Cooldown = 3
local Move2Cooldown = 5

------------------------------------------------------------

local Players = game:GetService("Players")
local UIS = game:GetService("UserInputService")

local player = Players.LocalPlayer

------------------------------------------------------------
--        FUNCTION THAT RUNS YOUR ORIGINAL SCRIPT
------------------------------------------------------------

local function Setup(char)

	local humanoid = char:WaitForChild("Humanoid")

	------------------------------------------------------------
	--      DISABLE DEFAULT ROBLOX ANIMATE SCRIPT
	------------------------------------------------------------
	task.wait(0.2)

	local animate = char:FindFirstChild("Animate")
	if animate then
		animate.Disabled = true
	end

	------------------------------------------------------------
	--             LOAD BASE ANIMATIONS (Idle / Walk)
	------------------------------------------------------------

	local idle = Instance.new("Animation")
	idle.AnimationId = IdleAnimId
	local idleTrack = humanoid:LoadAnimation(idle)
	idleTrack.Looped = true

	local walk = Instance.new("Animation")
	walk.AnimationId = WalkAnimId
	local walkTrack = humanoid:LoadAnimation(walk)
	walkTrack.Looped = true

	idleTrack:Play()

	humanoid.Running:Connect(function(speed)
		if humanoid:GetAttribute("UsingMove") then return end

		if speed > 1 then
			if not walkTrack.IsPlaying then
				idleTrack:Stop()
				walkTrack:Play()
			end
		else
			if not idleTrack.IsPlaying then
				walkTrack:Stop()
				idleTrack:Play()
			end
		end
	end)

	------------------------------------------------------------
	--              MOVESET (ABILITY) ANIMATIONS
	------------------------------------------------------------

	local move1 = Instance.new("Animation")
	move1.AnimationId = Move1AnimId
	local move1Track = humanoid:LoadAnimation(move1)
	move1Track.Looped = false

	local move2 = Instance.new("Animation")
	move2.AnimationId = Move2AnimId
	local move2Track = humanoid:LoadAnimation(move2)
	move2Track.Looped = false

	local isUsingMove = false
	local move1Ready = true
	local move2Ready = true

	local function StartAbility(animationTrack, cooldown)
		if isUsingMove then return end
		if animationTrack == move1Track and not move1Ready then return end
		if animationTrack == move2Track and not move2Ready then return end

		isUsingMove = true
		humanoid:SetAttribute("UsingMove", true)

		idleTrack:Stop()
		walkTrack:Stop()

		animationTrack:Play()

		if animationTrack == move1Track then
			move1Ready = false
			task.delay(cooldown, function() move1Ready = true end)
		end

		if animationTrack == move2Track then
			move2Ready = false
			task.delay(cooldown, function() move2Ready = true end)
		end

		animationTrack.Stopped:Wait()

		isUsingMove = false
		humanoid:SetAttribute("UsingMove", false)

		if humanoid.MoveDirection.Magnitude > 0 then
			walkTrack:Play()
		else
			idleTrack:Play()
		end
	end

	PlayMove1 = function()
		StartAbility(move1Track, Move1Cooldown)
	end

	PlayMove2 = function()
		StartAbility(move2Track, Move2Cooldown)
	end

	------------------------------------------------------------
	--                  PC KEYBOARD INPUT
	------------------------------------------------------------

	UIS.InputBegan:Connect(function(input, gameProcessed)
		if gameProcessed then return end

		if input.KeyCode == KEY_MOVESET1 then
			PlayMove1()
		elseif input.KeyCode == KEY_MOVESET2 then
			PlayMove2()
		end
	end)
end

------------------------------------------------------------
--       MOBILE BUTTONS (YOUR ORIGINAL CODE)
------------------------------------------------------------

local function CreateButton(imageId, position, callback)
	local gui = player.PlayerGui:FindFirstChild("ScreenGui")
	if not gui then
		gui = Instance.new("ScreenGui", player.PlayerGui)
		gui.ResetOnSpawn = false
	end

	local button = Instance.new("ImageButton")
	button.Size = UDim2.new(0, 90, 0, 90)
	button.Position = position
	button.Image = imageId
	button.BackgroundTransparency = 1
	button.Parent = gui
	button.MouseButton1Click:Connect(callback)
	return button
end

CreateButton(BUTTON1_IMAGE, UDim2.new(0.05, 0, 0.75, 0), function()
	if PlayMove1 then PlayMove1() end
end)

CreateButton(BUTTON2_IMAGE, UDim2.new(0.17, 0, 0.75, 0), function()
	if PlayMove2 then PlayMove2() end
end)

------------------------------------------------------------
--    RUN SCRIPT ON CURRENT CHARACTER + FUTURE RESPAWNS
------------------------------------------------------------

player.CharacterAdded:Connect(Setup)

if player.Character then
	Setup(player.Character)
end

--========================== END ==========================--
-- The function that takes place when the button is pressed
   end,
})

local Button = AnimationTab:CreateButton({
   Name = "Button Example",
   Callback = function()
   -- The function that takes place when the button is pressed
   end,
})

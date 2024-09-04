-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local EmoteButton = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.43415463, 0, 0.332644641, 0)
Frame.Size = UDim2.new(0, 229, 0, 139)

UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = Frame

EmoteButton.Name = "EmoteButton"
EmoteButton.Parent = Frame
EmoteButton.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
EmoteButton.BorderColor3 = Color3.fromRGB(255, 0, 0)
EmoteButton.BorderSizePixel = 0
EmoteButton.Position = UDim2.new(0.0611353703, 0, 0.316546768, 0)
EmoteButton.Size = UDim2.new(0, 200, 0, 50)
EmoteButton.Font = Enum.Font.SourceSans
EmoteButton.Text = "Play Emote"
EmoteButton.TextColor3 = Color3.fromRGB(0, 0, 0)
EmoteButton.TextScaled = true
EmoteButton.TextSize = 14.000
EmoteButton.TextWrapped = true
EmoteButton.MouseButton1Click:Connect(function()
        ReplicatedStorage.PlayEmote:Fire("zen")
    end)

UICorner_2.CornerRadius = UDim.new(0, 12)
UICorner_2.Parent = EmoteButton

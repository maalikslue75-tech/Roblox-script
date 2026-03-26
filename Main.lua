-- Ganz einfaches Menü ohne externe Library
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SpeedBtn = Instance.new("TextButton")
local JumpBtn = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui

Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.1, 0, 0.1, 0)
Frame.Size = UDim2.new(0, 200, 0, 150)
Frame.Active = true
Frame.Draggable = true

SpeedBtn.Parent = Frame
SpeedBtn.Text = "Super Speed (100)"
SpeedBtn.Size = UDim2.new(1, 0, 0.4, 0)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
SpeedBtn.TextColor3 = Color3.new(1, 1, 1)
SpeedBtn.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
end)

JumpBtn.Parent = Frame
JumpBtn.Text = "Mega Jump (150)"
JumpBtn.Position = UDim2.new(0, 0, 0.5, 0)
JumpBtn.Size = UDim2.new(1, 0, 0.4, 0)
JumpBtn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
JumpBtn.TextColor3 = Color3.new(1, 1, 1)
JumpBtn.MouseButton1Click:Connect(function()
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = 150
end)

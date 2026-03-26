local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local SpeedBtn = Instance.new("TextButton")
local JumpBtn = Instance.new("TextButton")

ScreenGui.Parent = game.CoreGui
Frame.Parent = ScreenGui
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.Position = UDim2.new(0.1, 0, 0.2, 0)
Frame.Size = UDim2.new(0, 180, 0, 120)
Frame.Active = true
Frame.Draggable = true

-- Variablen für den Loop
_G.SpeedVal = 16
_G.JumpVal = 50

-- Speed Button
SpeedBtn.Parent = Frame
SpeedBtn.Text = "Super Speed (100)"
SpeedBtn.Size = UDim2.new(0.9, 0, 0.4, 0)
SpeedBtn.Position = UDim2.new(0.05, 0, 0.05, 0)
SpeedBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
SpeedBtn.TextColor3 = Color3.new(1, 1, 1)
SpeedBtn.MouseButton1Click:Connect(function()
    _G.SpeedVal = 100
    print("Speed auf 100 gesetzt")
end)

-- Jump Button
JumpBtn.Parent = Frame
JumpBtn.Text = "Mega Jump (150)"
JumpBtn.Size = UDim2.new(0.9, 0, 0.4, 0)
JumpBtn.Position = UDim2.new(0.05, 0, 0.55, 0)
JumpBtn.BackgroundColor3 = Color3.fromRGB(0, 120, 215)
JumpBtn.TextColor3 = Color3.new(1, 1, 1)
JumpBtn.MouseButton1Click:Connect(function()
    _G.JumpVal = 150
    print("Jump auf 150 gesetzt")
end)

-- Der "Force Loop" (Erzwingt die Werte gegen das Anti-Cheat)
task.spawn(function()
    while task.wait(0.1) do
        local char = game.Players.LocalPlayer.Character
        if char and char:FindFirstChild("Humanoid") then
            char.Humanoid.WalkSpeed = _G.SpeedVal
            char.Humanoid.JumpPower = _G.JumpVal
            -- Falls das Spiel JumpPower ignoriert, nutzen wir JumpHeight
            char.Humanoid.JumpHeight = _G.JumpVal / 3 
        end
    end
end)

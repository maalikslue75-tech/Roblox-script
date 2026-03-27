local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library.CreateLib("Mobile Brainrot Hub", "Midnight")
local Main = Window:NewTab("Steal")
local Section = Main:NewSection("Auto Functions")

Section:NewToggle("Auto-Steal", "Sammelt alles ein", function(state)
    _G.Steal = state
    while _G.Steal do
        task.wait(0.2)
        for _, v in pairs(game:GetService("Workspace"):GetDescendants()) do
            if v:IsA("ProximityPrompt") then
                fireproximityprompt(v)
            end
        end
    end
end)

Section:NewSlider("Speed", "Tempo", 200, 16, function(s)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

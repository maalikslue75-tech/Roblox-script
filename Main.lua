local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Maali's Brainrot Hub 🚀",
   LoadingTitle = "Lade Brainrot Script...",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Main Cheats", 4483362458)

-- Speed Slider (Korrigiert!)
Tab:CreateSlider({
   Name = "Laufgeschwindigkeit",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
       local char = game.Players.LocalPlayer.Character
       if char and char:FindFirstChild("Humanoid") then
           char.Humanoid.WalkSpeed = Value
       end
   end,
})

-- Sprungkraft Slider
Tab:CreateSlider({
   Name = "Sprungkraft",
   Range = {50, 500},
   Increment = 1,
   CurrentValue = 50,
   Callback = function(Value)
       local char = game.Players.LocalPlayer.Character
       if char and char:FindFirstChild("Humanoid") then
           char.Humanoid.JumpPower = Value
       end
   end,
})

-- Button für eine kleine Nachricht
Tab:CreateButton({
   Name = "Script Info",
   Callback = function()
       Rayfield:Notify({Title = "Status", Content = "Script läuft einwandfrei!", Duration = 5})
   end,
})

Rayfield:Notify({Title = "Fertig!", Content = "Willkommen im Hub!", Duration = 5})

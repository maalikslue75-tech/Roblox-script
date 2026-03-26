local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Dein Brainrot Hub 🚀",
   LoadingTitle = "Lade Script ohne Key...",
   ConfigurationSaving = { Enabled = false }
})

local MainTab = Window:CreateTab("Haupt-Cheats", 4483362458)

-- 1. Speed Hack (Laufen wie der Blitz)
MainTab:CreateSlider({
   Name = "Laufgeschwindigkeit",
   Range = {16, 300},
   Increment = 1,
   CurrentValue = 16,
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
   end,
})

-- 2. Jump Power (Hoch springen)
MainTab:CreateSlider({
   Name = "Sprungkraft",
   Range = {50, 500},
   Increment = 1,
   CurrentValue = 50,
   Callback = function(Value)
       game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
   end,
})

-- 3. Infinite Jump (In der Luft laufen)
MainTab:CreateToggle({
   Name = "Unendlich Sprung",
   CurrentValue = false,
   Callback = function(Value)
       _G.InfJump = Value
       game:GetService("UserInputService").JumpRequest:Connect(function()
           if _G.InfJump then
               game.Players.LocalPlayer.Character:FindFirstChildOfClass('Humanoid'):ChangeState("Jumping")
           end
       end)
   end,
})

Rayfield:Notify({
   Title = "Fertig!",
   Content = "Hub geladen. Viel Spaß!",
   Duration = 5
})

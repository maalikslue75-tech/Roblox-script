local Lucid = loadstring(game:HttpGet("https://raw.githubusercontent.com"))()

local Window = Lucid:CreateWindow({
    Name = "Maali's Brainrot Hub 🚀",
    LoadingTitle = "Lade Script...",
    ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Main")

-- Speed Hack
Tab:CreateSlider({
    Name = "Laufgeschwindigkeit",
    Range = {16, 250},
    Increment = 1,
    CurrentValue = 16,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value
    end,
})

-- Jump Power
Tab:CreateSlider({
    Name = "Sprungkraft",
    Range = {50, 400},
    Increment = 1,
    CurrentValue = 50,
    Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value
    end,
})

Lucid:Notify({
    Title = "Fertig!",
    Content = "Hub erfolgreich geladen!",
    Duration = 5
})

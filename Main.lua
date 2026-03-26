local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Dein Brainrot Hub",
   LoadingTitle = "Lade Script...",
   ConfigurationSaving = { Enabled = false }
})

local Tab = Window:CreateTab("Main", 4483362458)

Tab:CreateInput({
   Name = "Key eingeben",
   PlaceholderText = "Hier Key eintragen...",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
       if Text == "DEIN_KEY_HIER" then -- Ändere "DEIN_KEY_HIER" in dein Passwort
           Rayfield:Notify({Title = "Erfolg", Content = "Key korrekt!"})
           -- Hier kannst du weitere Tabs/Funktionen freischalten
       else
           print("Falscher Key!")
       end
   end,
})

Tab:CreateButton({
   Name = "Speed Hack",
   Callback = function()
       game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
   end,
})

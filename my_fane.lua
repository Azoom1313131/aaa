local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Robojini/Tuturial_UI_Library/main/UI_Template_1"))()

local Window = Library.CreateLib("by.My_fane", "RJTheme3")

local Tab = Window:NewTab("Versus")

local Section = Tab:NewSection("Section Lobby TP")

Section:NewButton("Lobby Tp", "ButtonInfo", function()
    game:GetService("Workspace").game.humanoids.player.my_fane.HumanoidRootPart.CFrame = game:GetService("Workspace").game.Lobby.Map.Map.Spawn.CFrame
end)

local Section = Tab:NewSection("Section Rescue TP")

Section:NewButton("Tp", "ButtonInfo", function()
    game:GetService("Workspace").game.humanoids.player.my_fane.HumanoidRootPart.CFrame = game:GetService("Workspace").game.debris.other.Rescue.CFrame
end)

local Tab = Window:NewTab("Misc")

local Section = Tab:NewSection("Section Speed")

Section:NewSlider("Walk Speed", "Walk Speed", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s
end)

local Section = Tab:NewSection("Section Jump")

Section:NewSlider("Jump Power", "Jump Power", 500, 0, function(s) -- 500 (Макс. значение) | 0 (Мин. значение)
    game.Players.LocalPlayer.Character.Humanoid.JumpPower = s
end)

local Tab = Window:NewTab("Scripts")

local Section = Tab:NewSection("Section Scripts")

Section:NewButton("Infinity Yelid", "Infinity Yelid", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
end)

Section:NewButton("Aim Bot (AimWare)", "Aim Bot (AimWare)", function()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/discopro/34w45u983456y09i4e5tiofgnbm9uie5h698nrt896/main/cum.lua'))()
end)

Section:NewButton("Multi HUB", "Multi HUB", function()
   loadstring(game:HttpGet("https://pastebin.com/raw/ujazYyfG"))();
end)

Section:NewButton("Blade Ball (need key)", "Blade Ball", function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/PawsThePaw/Plutonium.AA/main/Plutonium.Loader.lua", true))()
end)

Section:NewButton("CTRL Click TP", "CTRL Click TP", function()
local UIS = game:GetService("UserInputService")

local Player = game.Players.LocalPlayer
local Mouse = Player:GetMouse()


function GetCharacter()
   return game.Players.LocalPlayer.Character
end

function Teleport(pos)
   local Char = GetCharacter()
   if Char then
       Char:MoveTo(pos)
   end
end


UIS.InputBegan:Connect(function(input)
   if input.UserInputType == Enum.UserInputType.MouseButton1 and UIS:IsKeyDown(Enum.KeyCode.LeftControl) then
       Teleport(Mouse.Hit.p)
   end
end)
end)

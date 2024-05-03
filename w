local DiscordLib = loadstring(game:HttpGet "https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/discord")()
local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()

getgenv().ff = DiscordLib
getgenv().sf = DiscordLib:Window("234536463we213")
local Window = OrionLib:MakeWindow({Name = "SuperHub", HidePremium = false, SaveConfig = true, ConfigFolder = "OrionTest"})

local win = getgenv().sf
--[[
Name = <string> - The name of the UI.
HidePremium = <bool> - Whether or not the user details shows Premium status or not.
SaveConfig = <bool> - Toggles the config saving in the UI.
ConfigFolder = <string> - The name of the folder where the configs are saved.
IntroEnabled = <bool> - Whether or not to show the intro animation.
IntroText = SuberHub - Text to show in the intro animation.
IntroIcon = <string> - URL to the image you want to use in the intro animation.
Icon = <string> - URL to the image you want displayed on the window.
CloseCallback = <function> - Function to execute when the window is closed.
]]

local blu = win:Server("Arsenal", "")
local main = blu:Channel("Main")
local misc = blu:Channel("Misc")
local Tab = Window:MakeTab({
	Name = "Everything",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

main:Button(
    "Aimbot",
    function ()
        local teamCheck = true
local fov = 150
local smoothing = 1
--[[
Name = <string> - The name of the tab.
Icon = <string> - The icon of the tab.
PremiumOnly = <bool> - Makes the tab accessible to Sirus Premium users only.
]]

local RunService = game:GetService("RunService")
local Section = Tab:AddSection({
	Name = "Section"
})

local FOVring = Drawing.new("Circle")
FOVring.Visible = true
FOVring.Thickness = 1.5
FOVring.Radius = fov
FOVring.Transparency = 1
FOVring.Color = Color3.fromRGB(255, 128, 128)
FOVring.Position = workspace.CurrentCamera.ViewportSize/2
--[[
Name = Aim - The name of the section.
]]

local function getClosest(cframe)
   local ray = Ray.new(cframe.Position, cframe.LookVector).Unit
Tab:AddButton({
	Name = "Button!",
	Callback = function()
            local teamCheck = true
            local fov = 150
            local smoothing = 1

            local RunService = game:GetService("RunService")

            local FOVring = Drawing.new("Circle")
            FOVring.Visible = true
            FOVring.Thickness = 1.5
            FOVring.Radius = fov
            FOVring.Transparency = 1
            FOVring.Color = Color3.fromRGB(255, 128, 128)
            FOVring.Position = workspace.CurrentCamera.ViewportSize/2

            local function getClosest(cframe)
               local ray = Ray.new(cframe.Position, cframe.LookVector).Unit

   local target = nil
   local mag = math.huge
               local target = nil
               local mag = math.huge

   for i,v in pairs(game.Players:GetPlayers()) do
       if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
           local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude
               for i,v in pairs(game.Players:GetPlayers()) do
                   if v.Character and v.Character:FindFirstChild("Head") and v.Character:FindFirstChild("Humanoid") and v.Character:FindFirstChild("HumanoidRootPart") and v ~= game.Players.LocalPlayer and (v.Team ~= game.Players.LocalPlayer.Team or (not teamCheck)) then
                       local magBuf = (v.Character.Head.Position - ray:ClosestPoint(v.Character.Head.Position)).Magnitude

           if magBuf < mag then
               mag = magBuf
               target = v
           end
       end
   end
                       if magBuf < mag then
                           mag = magBuf
                           target = v
                       end
                   end
               end

   return target
end

loop = RunService.RenderStepped:Connect(function()
   local UserInputService = game:GetService("UserInputService")
   local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) --Enum.UserInputType.MouseButton2
   local localPlay = game.Players.localPlayer.Character
   local cam = workspace.CurrentCamera
   local zz = workspace.CurrentCamera.ViewportSize/2
               return target
            end

            loop = RunService.RenderStepped:Connect(function()
               local UserInputService = game:GetService("UserInputService")
               local pressed = --[[UserInputService:IsKeyDown(Enum.KeyCode.E)]] UserInputService:IsMouseButtonPressed(Enum.UserInputType.MouseButton2) --Enum.UserInputType.MouseButton2
               local localPlay = game.Players.localPlayer.Character
               local cam = workspace.CurrentCamera
               local zz = workspace.CurrentCamera.ViewportSize/2

   if pressed then
       local Line = Drawing.new("Line")
       local curTar = getClosest(cam.CFrame)
       local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
       ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
       if (ssHeadPoint - zz).Magnitude < fov then
           workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
       end
   end
               if pressed then
                   local Line = Drawing.new("Line")
                   local curTar = getClosest(cam.CFrame)
                   local ssHeadPoint = cam:WorldToScreenPoint(curTar.Character.Head.Position)
                   ssHeadPoint = Vector2.new(ssHeadPoint.X, ssHeadPoint.Y)
                   if (ssHeadPoint - zz).Magnitude < fov then
                       workspace.CurrentCamera.CFrame = workspace.CurrentCamera.CFrame:Lerp(CFrame.new(cam.CFrame.Position, curTar.Character.Head.Position), smoothing)
                   end
               end

   if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
       loop:Disconnect()
       FOVring:Remove()
   end
end)
    end
)

main:Button(
    "Esp",
    function ()
    loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
  end
)
               if UserInputService:IsKeyDown(Enum.KeyCode.Delete) then
                   loop:Disconnect()
                   FOVring:Remove()
               end
            end)
      		print("button pressed")
  	end    
})

--[[
Name = Aimbot - The name of the button.
Callback = <function> - The function of the button.
]]

local Section = Tab:AddSection({
	Name = "Esp"
})

--[[
Name = esp - The name of the section.
]]

Tab:AddButton({
	Name = "ESP",
	Callback = function()
            loadstring(game:HttpGet('https://raw.githubusercontent.com/Lucasfin000/SpaceHub/main/UESP'))()
      		print("button pressed")
  	end    
})

--[[
Name = <string> - The name of the button.
Callback = <function> - The function of the button.
]]

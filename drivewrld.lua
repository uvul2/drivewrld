warn("Anti afk running")
game:GetService("Players").LocalPlayer.Idled:connect(function()
warn("Anti afk ran")
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
getfenv().grav = workspace.Gravity
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/ui%20libs2"))()
local example = library:CreateWindow({
  text = "Drive World"
})

example:AddToggle("Auto Kill", function(state)
    getfenv().kill = (state and true or false)
while getfenv().ill do
  game:GetService("ReplicatedStorage").Remotes.M1:FireServer(game:GetService("Players")["9037853282590723450S"].Character.Head, 5, false)
end)

example:AddToggle("Auto Farm [Drift]", function(state)
   getfenv().autodrift = (state and true or false)
while getfenv().autodrift do
   task.wait()
local plr = game.Players.LocalPlayer
local chr = plr.Character
local car = chr.Humanoid.SeatPart.Parent.Parent
local carp = car.PrimaryPart
if not workspace:FindFirstChild("carautopart") then
local new = Instance.new("Part",workspace)
new.Name = "carautopart"
new.Position = chr.HumanoidRootPart.Position+Vector3.new(0,5000,0)
new.Anchored = true
new.Size = Vector3.new(10000,10,10000)
end
   pcall(function()
   local text = game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Score.TotalScore.Text:split("$")
local text2 = text[2]:split("<")
local text3 = string.gsub(text2[1],",","")
local num = tonumber(text3)
if num > 60000 then
   game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
repeat wait()
   local text = game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Score.TotalScore.Text:split("$")
   local text2 = text[2]:split("<")
local text3 = string.gsub(text2[1],",","")
local num = tonumber(text3)
print(num)
until num == 0 or getfenv().autodrift == false
game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
end
   end)
if type(num) == "number" then
   val = num
end
car:PivotTo(workspace:FindFirstChild("carautopart").CFrame+Vector3.new(0,7,0))
workspace:FindFirstChild("carautopart").Velocity = chr.HumanoidRootPart.CFrame.LookVector*1500
task.wait(0.1)
end
end)
example:AddToggle("Auto Event Delivery", function(state)
   getfenv().test3 = (state and true or false)
   while getfenv().test3 do
   wait()
   if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
local ohString1 = "ChocolateDelivery"
local ohString2 = "EventLocation"

game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer(ohString1, ohString2)  
 repeat  wait()
   until game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:FindFirstChild("ChocolateDelivery") or getfenv().test3 == false
   local valen = 0
   repeat task.wait()
      game:GetService("ReplicatedStorage").Systems.Jobs.Modules.ChocolateDelivery.PowerUpHit:FireServer("Add")
      task.wait(1)
      valen =valen + 1
   until valen > 8 or getfenv().test3 == false
   elseif game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == true then
   for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
   if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
   repeat task.wait()
      pcall(function()
         v.Parent:PivotTo(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,0))
         end)
   until not v.Parent:FindFirstChild("ChocolateDelivery") or getfenv().test3 == false
   firesignal(game.Players.LocalPlayer.PlayerGui.JobComplete.Window.Content.Buttons.Close.MouseButton1Click)
   game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
   task.wait()
   end
   end
   end
   end
   end)
example:AddToggle("Auto Delivery[Cars]", function(state)
   getfenv().test = (state and true or false)
while getfenv().test do
   wait()
if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
    local num = math.random(1,9)
for i,v in pairs(game:GetService("Workspace").Jobs.TrailerDelivery.StartPoints:GetChildren()) do
   if i == num then
game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("TrailerDelivery", v.Name)
repeat  wait()
   print("waiting for trailer")
until game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:FindFirstChild("Trailer") or getfenv().test == false
pcall(function()
game.Players.LocalPlayer.Character.Head.PrimaryPart.Anchored = true
task.wait(1.5)
game.Players.LocalPlayer.Character.Head.PrimaryPart.Anchored = false
end)
end
end
local failnum = 0
repeat wait()
   failnum = failnum +1
   print("waiting for CompletionRegion")
if failnum > 100 then
game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
wait(1)
end
until game:GetService("Workspace"):FindFirstChild("CompletionRegion") or getfenv().test == false or failnum > 100
wait()
if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
   if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude < 1000 then
      game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
wait(1)
   end
end
if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude

if tonumber(dist/500) > 7 then
   print("Delivery Distance:"..tonumber(dist/3.571).." meters away")
print("Delivery ETA:"..tonumber(dist/500).." seconds")
task.wait(dist/500)
else
   print("Delivery Distance:"..tonumber(dist/3.571).." meters away")
print("Delivery ETA set to:"..tonumber(7).." seconds due to it being too low")
task.wait(7)
end
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == true then
for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
   if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
repeat task.wait()
   pcall(function()
   v.Parent:PivotTo(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,-20))
v.Parent.Trailer:PivotTo(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,0))
   end)
    until not v.Parent:FindFirstChild("Trailer") or getfenv().test == false
game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
task.wait()
end
end
end
end
end)
example:AddToggle("Auto Delivery[Full-E]", function(state)
getfenv().test2 = (state and true or false)
while getfenv().test2 do
   wait()
   if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
      local num = ("Gas")
  for i,v in pairs(game:GetService("Workspace").Jobs.TrailerDelivery.StartPoints:GetChildren()) do
     if i == num then
  game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer("Trucking", "Gas")
  repeat  wait()
     print("waiting for trailer")
  until game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:FindFirstChild("Trailer") or getfenv().test2 == false
  pcall(function()
  game.Players.LocalPlayer.Character.Head.PrimaryPart.Anchored = true
  task.wait(1.5)
  game.Players.LocalPlayer.Character.Head.PrimaryPart.Anchored = false
  end)
  end
  end
  local failnum = 0
  repeat wait()
     failnum = failnum +1
     print("waiting for CompletionRegion")
  if failnum > 100 then
   warn("attempt fix in motion")
  game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
  wait(1)
  end
  until game:GetService("Workspace"):FindFirstChild("CompletionRegion") or getfenv().test2 == false or failnum > 100
  wait()
  if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
   if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude < 1000 then
      game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
wait(1)
   end
end
  if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
  local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude

  if tonumber(dist/500) > 7 then
     print("Delivery Distance:"..tonumber(dist/3.571).." meters away")
  print("Delivery ETA:"..tonumber(dist/500).." seconds")
  task.wait(dist/500)
  else
     print("Delivery Distance:"..tonumber(dist/3.571).." meters away")
  print("Delivery ETA set to:"..tonumber(7).." seconds due to it being too low")
  task.wait(7)
  end
end
elseif game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == true then
for i,v in pairs(game:GetService("Workspace").Cars:GetDescendants()) do
   if v.Name == "Owner" and v.Value == game.Players.LocalPlayer and game.Players.LocalPlayer:DistanceFromCharacter(game:GetService("Workspace").CompletionRegion.Primary.Position) > 25 then
repeat task.wait()
   pcall(function()
   v.Parent:PivotTo(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,-30))
v.Parent.Trailer:PivotTo(game:GetService("Workspace").CompletionRegion.Primary.CFrame*CFrame.new(0,5,0))
   end)
    until not v.Parent:FindFirstChild("Trailer") or getfenv().test2 == false
firesignal(game.Players.LocalPlayer.PlayerGui.JobComplete.Window.Content.Buttons.Close.MouseButton1Click)
game:GetService("ReplicatedStorage").Systems.Jobs.CashBankedEarnings:FireServer()
task.wait()

end
end
end
end
end)

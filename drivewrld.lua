warn("Anti afk running")
game:GetService("Players").LocalPlayer.Idled:connect(function()
warn("Anti afk ran")
game:GetService("VirtualUser"):CaptureController()
game:GetService("VirtualUser"):ClickButton2(Vector2.new())
end)
local mt = getrawmetatable(game);
setreadonly(mt,false)
local namecall = mt.__namecall
mt.__namecall = newcclosure(function(self, ...)
	local Method = getnamecallmethod()
	local Args = {...}

	if Method == 'FireServer' and self.Name == "TrackOffroadTimer" then
return;
	end
	return namecall(self, ...) 
end)

getfenv().grav = workspace.Gravity
local library = loadstring(game:HttpGet("https://raw.githubusercontent.com/Marco8642/science/main/ui%20libs2"))()
local example = library:CreateWindow({
  text = "Drive World"
})
example:AddToggle("Auto Farm [Drive]", function(state)
   getfenv().drive = (state and true or false)
   while getfenv().drive do
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
         workspace:FindFirstChild("carautopart").Velocity = Vector3.new(0,0,0)
   local plr = game.Players.LocalPlayer
   local chr = plr.Character
   local car = chr.Humanoid.SeatPart.Parent.Parent
   local carp = car.PrimaryPart
   car:PivotTo(workspace:FindFirstChild("carautopart").CFrame+Vector3.new(0,5,0))
   task.wait(0.1)
   carp.Velocity = carp.CFrame.LookVector*600
   end
   end)
   example:AddToggle("Auto Farm [Air]", function(state)
      getfenv().air = (state and true or false)
      while getfenv().air do
         while getfenv().air do
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
               workspace:FindFirstChild("carautopart").Velocity = Vector3.new(0,0,0)
               local plr = game.Players.LocalPlayer
               local chr = plr.Character
               local car = chr.Humanoid.SeatPart.Parent.Parent
               local carp = car.PrimaryPart
               car:PivotTo(workspace:FindFirstChild("carautopart").CFrame*CFrame.new(0,15,500))
               carp.Velocity=carp.CFrame.LookVector*700
               carp.Velocity = carp.Velocity+Vector3.new(0,100,0)
               task.wait(2)
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
               end
           
      end
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
car:PivotTo(workspace:FindFirstChild("carautopart").CFrame+Vector3.new(0,5,0))
workspace:FindFirstChild("carautopart").Velocity = chr.HumanoidRootPart.CFrame.LookVector*1500
task.wait(0.1)
end
end)
local example = library:CreateWindow({
   text = "Delivery"
 })
 example:AddBox("Enter Minimum Distance", function(object, focus)
	if focus then
		getfenv().mdistance = tonumber(object.Text)
	end
end)
example:AddToggle("Auto Delivery[Trailer]", function(state)
   getfenv().test = (state and true or false)
while getfenv().test do
   wait()
if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
	local chosenone = nil
	local smaller = 0
	repeat wait()
	for i2,v2 in pairs(game:GetService("Workspace").Jobs.TrailerDelivery.StartPoints:GetChildren()) do
	  if chosenone == nil then
	  local p,call =	pcall(function()
	local payment = 0
	local data =game:GetService("ReplicatedStorage").Systems.Jobs.RequestJobStart:InvokeServer(v2.Parent.Parent, v2)
	local test = {data}
	warn(v2)
	for i,v in pairs(test) do
	if type(v) == "table" and chosenone == nil then
	   task.wait()
	   for a,b in pairs(v) do
		  if a == "DestinationPoint" and (v2:GetAttribute("LocationCFrame").Position-b:GetAttribute("LocationCFrame").Position).magnitude > getfenv().mdistance*3.571 then
			 print((v2:GetAttribute("LocationCFrame").Position-b:GetAttribute("LocationCFrame").Position).magnitude*3.571)
	warn(a,b:GetFullName())
	chosenone = v2
	break
	end
	end
  end
	end
	end)
	if p == false then
	warn(p,call)
	end
  end
	end
until chosenone ~= nil or getfenv().test == false
game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer(workspace.Jobs.TrailerDelivery, chosenone)
repeat  wait()
   print("waiting for trailer")
until game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:FindFirstChild("Trailer") or getfenv().test == false

local failnum = 0
repeat wait()
   failnum = failnum +1
   print("waiting for CompletionRegion")
if failnum > 100 then
game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
task.wait()
end
until game:GetService("Workspace"):FindFirstChild("CompletionRegion") or getfenv().test == false or failnum > 100
if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
   if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude < getfenv().mdistance*3.571 then
      game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
task.wait()
   end
end
pcall(function()
   game.Players.LocalPlayer.Character.Head.Anchored = true
   task.wait(1.5)
   game.Players.LocalPlayer.Character.Head.Anchored = false
   end)
wait()
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
example:AddToggle("Auto Delivery[Trucking]", function(state)
getfenv().test2 = (state and true or false)
while getfenv().test2 do
   if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Jobs.Visible == false then
      local num = math.random(1,#workspace.Jobs.Trucking.StartPoints:GetChildren())
	  local chosenone = nil
	  local smaller = 0
	  repeat wait()
	  for i2,v2 in pairs(game:GetService("Workspace").Jobs.Trucking.StartPoints:GetChildren()) do
		if chosenone == nil then
		local p,call =	pcall(function()
	  local payment = 0
	  local data =game:GetService("ReplicatedStorage").Systems.Jobs.RequestJobStart:InvokeServer(v2.Parent.Parent, v2)
	  local test = {data}
	  warn(v2)
	  for i,v in pairs(test) do
	  if type(v) == "table" and chosenone == nil then
		 task.wait()
		 for a,b in pairs(v) do
			if a == "DestinationPoint" and (v2:GetAttribute("LocationCFrame").Position-b:GetAttribute("LocationCFrame").Position).magnitude > getfenv().mdistance*3.571 then
			   print((v2:GetAttribute("LocationCFrame").Position-b:GetAttribute("LocationCFrame").Position).magnitude*3.571)
	  warn(a,b:GetFullName())
	  chosenone = v2
	  break
	  end
	  end
	end
	  end
	  end)
	  if p == false then
	  warn(p,call)
	  end
	end
	  end
	until chosenone ~= nil or getfenv().test2 == false
  game:GetService("ReplicatedStorage").Systems.Jobs.StartJob:InvokeServer(workspace.Jobs.Trucking, chosenone)
  repeat  wait()
     print("waiting for trailer")
  until game.Players.LocalPlayer.Character.Humanoid.SeatPart.Parent.Parent:FindFirstChild("Trailer") or getfenv().test2 == false
  task.wait()
  local failnum = 0
  repeat wait()
     failnum = failnum +1
     print("waiting for CompletionRegion")
  if failnum > 100 then
   warn("attempt fix in motion")
  game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
  wait(task.wait())
  end
  until game:GetService("Workspace"):FindFirstChild("CompletionRegion") or getfenv().test2 == false or failnum > 100
  wait()
  if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
   if (chosenone:GetAttribute("LocationCFrame").Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude < getfenv().mdistance*3.571 then
      game:GetService("ReplicatedStorage").Systems.Jobs.QuitJob:InvokeServer()
task.wait()
   end
end
pcall(function()
   game.Players.LocalPlayer.Character.Head.Anchored = true
   task.wait(1.5)
   game.Players.LocalPlayer.Character.Head.Anchored = false
   end)
  if game:GetService("Workspace"):FindFirstChild("CompletionRegion") then
  local dist = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-game:GetService("Workspace").CompletionRegion.Primary.Position).magnitude

  if tonumber(dist/500) > 9 then
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
local example = library:CreateWindow({
   text = "Race Stuff"
 })
 example:AddBox("Enter Race Time", function(object, focus)
	if focus then
   
		getfenv().speed = tonumber(object.Text)
	end
end)
 example:AddToggle("Auto Farm [Race XP]", function(state)
   getfenv().xprace = (state and true or false)
   while getfenv().xprace do
      wait()
   local time = getfenv().speed or 5
game:GetService("ReplicatedStorage").Systems.Races.StartTaskChallengeRace:FireServer("soloAroundTheWorld")  
 repeat wait()
   until game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Race.Visible == true or getfenv().xprace == false
   wait(time)
   for i,v in pairs(workspace.Races:GetDescendants()) do
   if v.ClassName == "Model" and v.Parent.Name == "Checkpoints" then
      v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
   end
   end
   repeat wait()
   until game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Race.Visible == false or getfenv().xprace == false
   end
end)
example:AddToggle("Auto Finish Race", function(state)
   getfenv().urace = (state and true or false)
   while getfenv().urace do
      wait()
      local time = getfenv().speed or 5
  if game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Race.Visible == true then
   wait(time)
   for i,v in pairs(workspace.Races:GetDescendants()) do
   if v.ClassName == "Model" and v.Parent.Name == "Checkpoints" then
      v:PivotTo(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
   end
   end
   repeat wait()
   until game:GetService("Players").LocalPlayer.PlayerGui.Score.Frame.Race.Visible == false or getfenv().urace == false
end
   end
end)

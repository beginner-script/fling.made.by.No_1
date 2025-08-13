local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local hrp = character:WaitForChild("HumanoidRootPart")

local spinSpeed = Vector3.new(0, 9999999, 0)

RunService.RenderStepped:Connect(function()
    hrp.AssemblyAngularVelocity = spinSpeed
end)

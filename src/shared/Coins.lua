local ReplicatedStorage = game:GetService("ReplicatedStorage")
local displayValues = ReplicatedStorage:WaitForChild("DisplayValues")
local coins = displayValues:WaitForChild("Coins")

local textLabel = script.Parent

local function updateCoins()
	textLabel.Text = coins.Value
end

coins.Changed:Connect(updateCoins)
updateCoins()

local Promise = require(game.ReplicatedStorage.Common.Promise)
local part = script.Parent;

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local displayValues = ReplicatedStorage:WaitForChild("DisplayValues")
local coins = displayValues:WaitForChild("Coins")

print("Player script on " .. part.Name);

Players.PlayerAdded:Connect(function(player)
    print(player.Name .. " joined the game!")
end)

Players.PlayerRemoving:Connect(function(player)
    print(player.Name .. " left the game!")
end)



function onTouched (otherPart)
    local otherParent = otherPart.Parent;

    -- if coin, then increment coins
    -- local coinCollectable = otherParent:FindFirstChildWhichIsA("Coin");

    if (coinCollectable) then
        print("Coin collected!");
        
        -- increment coins for the player, and destroy the coin
        coins.Value = coins.Value + 1;

        part:Destroy();
        script:Destroy();
    end
end

part.Touched:connect(onTouched); 
local Promise = require(game.ReplicatedStorage.Common.Promise)
local part = script.Parent;

print("Jump script on " .. part.Name);

function onTouched (otherPart)
    local otherParent = otherPart.Parent;
    local humanoid = otherParent:FindFirstChildWhichIsA("Humanoid");

    if (humanoid) then
        print("BOOST AQUIRED!");
        humanoid.JumpPower = humanoid.JumpPower * 2;
        part:Destroy();
        script:Destroy();

        Promise.delay(10):andThen(function ()
            humanoid.JumpPower = humanoid.JumpPower / 2;
        end)
    end
end

part.Touched:connect(onTouched); 
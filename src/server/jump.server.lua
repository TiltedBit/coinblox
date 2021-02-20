local part = script.Parent;
local ServerStorage = game:GetService("ServerStorage")

print("Jump script on " .. part.Name);

function onTouched (otherPart)
    local otherParent = otherPart.Parent;
    local humanoid = otherParent:FindFirstChildWhichIsA("Humanoid");

    if (humanoid) then
        print("BOOST AQUIRED!");
        humanoid.JumpPower = humanoid.JumpPower * 2;
        part:Destroy();
        script:Destroy();
    end
end

part.Touched:connect(onTouched)
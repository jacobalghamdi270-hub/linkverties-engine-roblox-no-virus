-- [[ LINKVERTIES | REAL UNIVERSAL FLY SCRIPT ]] --
-- [[ PRESS 'E' TO TOGGLE FLIGHT ]] --

local player = game.Players.LocalPlayer
local mouse = player:GetMouse()
local flying = false
local speed = 50

print("Linkverties Engine: Press 'E' to Fly!")

mouse.KeyDown:Connect(function(key)
    if key:lower() == "e" then
        flying = not flying
        local char = player.Character
        local root = char:WaitForChild("HumanoidRootPart")
        
        if flying then
            local bv = Instance.new("BodyVelocity", root)
            bv.MaxForce = Vector3.new(math.huge, math.huge, math.huge)
            bv.Velocity = Vector3.new(0, 0, 0)
            bv.Name = "FlightForce"
            print("Flight: ON")
        else
            if root:FindFirstChild("FlightForce") then
                root.FlightForce:Destroy()
            end
            print("Flight: OFF")
        end
    end
end)

Script.Load("lua/Server.lua")

local function OnClientConnect(client)
    local player = client:GetControllingPlayer()

    local locationId = -1
    
    if player.isRookie == true then
        ServerAdminPrint(client, "Rookie " .. player:GetName() .. " was kicked")
        client.disconnectreason = "Rookies are not allowed"
        Server.DisconnectClient(client)
    end  
end

Event.Hook("ClientConnect", OnClientConnect)
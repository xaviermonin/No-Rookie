Script.Load("lua/Client.lua")

local function LoadComplete()
	if Client.GetOptionBoolean("rookieMode", false) == true then
		Shared.Message('Rookies are not allowed')
        Client.Disconnect()
	end
end
Event.Hook( "LoadComplete", LoadComplete )
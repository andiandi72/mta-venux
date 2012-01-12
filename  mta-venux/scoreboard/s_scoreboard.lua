--[[
---			|\-/| Roleplay VX Version one |\-/|  ---
---				Original Script by ryden	     ---
---				Edited by: Lukkaz				 ---
--]]



local scoreboardDummy

--[[
* onResourceStart
Handles the resource start event to create a dummy entity with information about the server.
--]]
addEventHandler ( "onResourceStart", getResourceRootElement(getThisResource()), function ()
	scoreboardDummy = createElement ( "scoreboard" )
	setElementData ( scoreboardDummy, "serverName", "Roleplay VX" )
	setElementData ( scoreboardDummy, "maxPlayers", getMaxPlayers () )
	setElementData ( scoreboardDummy, "allow", true )
	
	--[[ Uncomment to test with dummies ]]--
	--[[
	for k=70,270 do
		local dummy = createElement ( "playerDummy" )
		setElementData ( dummy, "playerid", k )
		setElementData ( dummy, "name", "dummy" .. tostring(k) )
		setElementData ( dummy, "ping", math.random ( 1, 300 ) )
		setElementData ( dummy, "color", { math.random(0,255), math.random(0,255), math.random(0,255) } )
	end
	--]]
end, false )

--[[
* onResourceStop
Delete the dummy created on resource start.
--]]
addEventHandler ( "onResourceStop", getResourceRootElement(getThisResource()), function ()
	if scoreboardDummy then
		destroyElement ( scoreboardDummy )
	end
end, false )

Events.OnPlayerUpdate.Add(function(player, vehicle, args, part)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then

vehicle:getPartById("Engine"):setCondition(100)

end

end)

Events.OnPlayerUpdate.Add(function(player, vehicle, args, part)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTFuel" )) then

vehicle:getPartById("Engine"):setCondition(100)

end

end)

Events.OnPlayerUpdate.Add(function(player, vehicle, args, part)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTTractor" )) then

vehicle:getPartById("Engine"):setCondition(100)

end

end)


Events.OnPlayerUpdate.Add(function(player, vehicle, args, part)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then

vehicle:getPartById("Engine"):setCondition(100)

end

end)
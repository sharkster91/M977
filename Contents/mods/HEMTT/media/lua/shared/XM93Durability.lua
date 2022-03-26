Events.OnPlayerUpdate.Add(function(player, vehicle, args, part)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "XM93Woodland" )) then

vehicle:getPartById("DoorFrontLeft"):repair()
vehicle:getPartById("DoorFrontRight"):repair()
vehicle:getPartById("EngineDoor"):repair()
vehicle:getPartById("Engine"):repair()
vehicle:getPartById("GasTank"):setCondition(100)
vehicle:getPartById("Windshield"):repair()
vehicle:getPartById("TireFrontLeft"):repair()
vehicle:getPartById("TireFrontRight"):repair()
vehicle:getPartById("TireRearLeft"):repair()
vehicle:getPartById("TireRearRight"):repair()

end

end)

Events.OnPlayerUpdate.Add(function(player, vehicle, args, part)
    local vehicle = player.getVehicle and player:getVehicle() or nil
    if (vehicle and string.find( vehicle:getScriptName(), "XM93Desert" )) then

vehicle:getPartById("DoorFrontLeft"):repair()
vehicle:getPartById("DoorFrontRight"):repair()
vehicle:getPartById("EngineDoor"):repair()
vehicle:getPartById("Engine"):repair()
vehicle:getPartById("GasTank"):setCondition(100)
vehicle:getPartById("Windshield"):repair()
vehicle:getPartById("TireFrontLeft"):repair()
vehicle:getPartById("TireFrontRight"):repair()
vehicle:getPartById("TireRearLeft"):repair()
vehicle:getPartById("TireRearRight"):repair()

end

end)
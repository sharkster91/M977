---
--- Created by cytt0rak
---  WIP

function HEMTTLoadHandlingEngineDoor(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then

local part = vehicle:getPartById("EngineDoor")
        if (vehicle:getPartById("EngineDoor"):getCondition() < 70) and (vehicle:getPartById("EngineDoor"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 70 })

        end
        vehicle:transmitPartModData(EngineDoor)
    end


end

function HEMTTLoadHandlingGasTank(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then

        local part = vehicle:getPartById("GasTank")
        if (vehicle:getPartById("GasTank"):getCondition() < 70) and (vehicle:getPartById("GasTank"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 70 })

        end
        vehicle:transmitPartModData(GasTank)
    end


end


function HEMTTLoadHandlingTireFrontLeft(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then


        local part = vehicle:getPartById("TireFrontLeft")
        if (vehicle:getPartById("TireFrontLeft"):getCondition() < 25) and (vehicle:getPartById("TireFrontLeft"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireFrontLeft)
    end


end

function HEMTTLoadHandlingTireFrontRight(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then


        local part = vehicle:getPartById("TireFrontRight")
        if (vehicle:getPartById("TireFrontRight"):getCondition() < 25) and (vehicle:getPartById("TireFrontRight"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireFrontRight)
    end


end

function HEMTTLoadHandlingTireRearRight(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then


        local part = vehicle:getPartById("TireRearRight")
        if (vehicle:getPartById("TireRearRight"):getCondition() < 25) and (vehicle:getPartById("TireRearRight"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireRearRight)
    end


end

function HEMTTLoadHandlingTireRearLeft(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then


        local part = vehicle:getPartById("TireRearLeft")
        if (vehicle:getPartById("TireRearLeft"):getCondition() < 25) and (vehicle:getPartById("TireRearLeft"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireRearLeft)
    end


end

Events.OnPlayerUpdate.Add(HEMTTLoadHandlingGasTank);
Events.OnPlayerUpdate.Add(HEMTTLoadHandlingEngineDoor);
Events.OnPlayerUpdate.Add(HEMTTLoadHandlingTireFrontLeft);
Events.OnPlayerUpdate.Add(HEMTTLoadHandlingTireFrontRight);
Events.OnPlayerUpdate.Add(HEMTTLoadHandlingTireRearRight);
Events.OnPlayerUpdate.Add(HEMTTLoadHandlingTireRearLeft);

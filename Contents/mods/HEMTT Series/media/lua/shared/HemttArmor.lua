---
--- Created by cytt0rak
---  WIP

function HEMTTCargoEngineDoor(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then

local part = vehicle:getPartById("EngineDoor")
        if (vehicle:getPartById("EngineDoor"):getCondition() < 70) and (vehicle:getPartById("EngineDoor"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 70 })

        end
        vehicle:transmitPartModData(EngineDoor)
    end


end

function HEMTTCargoGasTank(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then

        local part = vehicle:getPartById("GasTank")
        if (vehicle:getPartById("GasTank"):getCondition() < 70) and (vehicle:getPartById("GasTank"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 70 })

        end
        vehicle:transmitPartModData(GasTank)
    end


end


function HEMTTCargoTireFrontLeft(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then


        local part = vehicle:getPartById("TireFrontLeft")
        if (vehicle:getPartById("TireFrontLeft"):getCondition() < 25) and (vehicle:getPartById("TireFrontLeft"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireFrontLeft)
    end


end

function HEMTTCargoTireFrontRight(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then


        local part = vehicle:getPartById("TireFrontRight")
        if (vehicle:getPartById("TireFrontRight"):getCondition() < 25) and (vehicle:getPartById("TireFrontRight"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireFrontRight)
    end


end

function HEMTTCargoTireRearRight(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then


        local part = vehicle:getPartById("TireRearRight")
        if (vehicle:getPartById("TireRearRight"):getCondition() < 25) and (vehicle:getPartById("TireRearRight"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireRearRight)
    end


end

function HEMTTCargoTireRearLeft(player, part, elapsedMinutes)
    local vehicle = player:getVehicle()
    if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then


        local part = vehicle:getPartById("TireRearLeft")
        if (vehicle:getPartById("TireRearLeft"):getCondition() < 25) and (vehicle:getPartById("TireRearLeft"):getInventoryItem()) then

            sendClientCommand(player, "vehicle", "setPartCondition", { vehicle = vehicle:getId(), part = part:getId(), condition = 35 })

        end
        vehicle:transmitPartModData(TireRearLeft)
    end


end

Events.OnPlayerUpdate.Add(HEMTTCargoGasTank);
Events.OnPlayerUpdate.Add(HEMTTCargoEngineDoor);
Events.OnPlayerUpdate.Add(HEMTTCargoTireFrontLeft);
Events.OnPlayerUpdate.Add(HEMTTCargoTireFrontRight);
Events.OnPlayerUpdate.Add(HEMTTCargoTireRearRight);
Events.OnPlayerUpdate.Add(HEMTTCargoTireRearLeft);

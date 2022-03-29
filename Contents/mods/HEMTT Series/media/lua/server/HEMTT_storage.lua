require "Vehicle/Vehicles"

-- TO DO: Learn not to just paste functions over and over

function Vehicles.ContainerAccess.XM93LabContainer(vehicle, part, chr)
    if chr:getVehicle() == vehicle then
        return true
    end
end

function Vehicles.ContainerAccess.XM93VehicleInterior(vehicle, part, chr)
    if chr:getVehicle() == vehicle then
        return true
    end
end

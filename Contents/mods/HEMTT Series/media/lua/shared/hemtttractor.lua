require "VehicleZoneDefinition"
VehicleZoneDistribution.hemtttractor= VehicleZoneDistribution.hemtttractor or {}
VehicleZoneDistribution.hemtttractor.vehicles = VehicleZoneDistribution.hemtttractor.vehicles or {}
VehicleZoneDistribution.hemtttractor.vehicles["Base.HEMTTTractor"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.hemtttractor.baseVehicleQuality = 1.1;
VehicleZoneDistribution.hemtttractor.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_hemtttractor_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("hemtttractor", "ParkingStall", 10325, 12621, 0, 3, 3, { Direction = "E" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_hemtttractor_Zones)


require "VehicleZoneDefinition"
VehicleZoneDistribution.hemttcargo = VehicleZoneDistribution.hemttcargo or {}
VehicleZoneDistribution.hemttcargo.vehicles = VehicleZoneDistribution.hemttcargo.vehicles or {}
VehicleZoneDistribution.hemttcargo.vehicles["Base.HEMTTCargo"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.hemttcargo.baseVehicleQuality = 1.1;
VehicleZoneDistribution.hemttcargo.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_hemttcargo_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("hemttcargo", "ParkingStall", 12519, 4175, 0, 3, 3, { Direction = "N" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_hemttcargo_Zones)


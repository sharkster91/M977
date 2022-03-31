require "VehicleZoneDefinition"
VehicleZoneDistribution.hemttloadhandling = VehicleZoneDistribution.hemttloadhandling or {}
VehicleZoneDistribution.hemttloadhandling.vehicles = VehicleZoneDistribution.hemttloadhandling.vehicles or {}
VehicleZoneDistribution.hemttloadhandling.vehicles["Base.HEMTTLoadHandling"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.hemttloadhandling.baseVehicleQuality = 1.1;
VehicleZoneDistribution.hemttloadhandling.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_hemttloadhandling_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("hemttloadhandling", "ParkingStall", 12715, 4438, 0, 3, 3, { Direction = "E" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_hemttloadhandling_Zones)


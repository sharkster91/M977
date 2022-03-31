require "VehicleZoneDefinition"
VehicleZoneDistribution.hemttfuel = VehicleZoneDistribution.hemttfuel or {}
VehicleZoneDistribution.hemttfuel.vehicles = VehicleZoneDistribution.hemttfuel.vehicles or {}
VehicleZoneDistribution.hemttfuel.vehicles["Base.HEMTTFuel"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.hemttfuel.baseVehicleQuality = 1.1;
VehicleZoneDistribution.hemttfuel.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_hemttfuel_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("hemttfuel", "ParkingStall", 12529, 4189, 0, 3, 3, { Direction = "E" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_hemttfuel_Zones)

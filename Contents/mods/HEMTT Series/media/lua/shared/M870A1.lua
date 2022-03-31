require "VehicleZoneDefinition"
VehicleZoneDistribution.m870a1 = VehicleZoneDistribution.m870a1 or {}
VehicleZoneDistribution.m870a1.vehicles = VehicleZoneDistribution.m870a1.vehicles or {}
VehicleZoneDistribution.m870a1.vehicles["Base.M870A1"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.m870a1.baseVehicleQuality = 1.1;
VehicleZoneDistribution.m870a1.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_m870a1_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("m870a1", "ParkingStall", 10356, 12341, 0, 3, 3, { Direction = "N" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_m870a1_Zones)


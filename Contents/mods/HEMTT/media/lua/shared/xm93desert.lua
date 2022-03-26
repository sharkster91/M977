require "VehicleZoneDefinition"
VehicleZoneDistribution.xm93desert = VehicleZoneDistribution.xm93desert or {}
VehicleZoneDistribution.xm93desert.vehicles = VehicleZoneDistribution.xm93desert.vehicles or {}
VehicleZoneDistribution.xm93desert.vehicles["Base.XM93Desert"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.xm93desert.baseVehicleQuality = 1.1;
VehicleZoneDistribution.xm93desert.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA2_xm93desert_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("xm93desert", "ParkingStall", 14541, 4025, 0, 3, 3, { Direction = "E" })
        end
    end
end

Events.OnLoadMapZones.Add(PA2_xm93desert_Zones)
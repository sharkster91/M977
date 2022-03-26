require "VehicleZoneDefinition"
VehicleZoneDistribution.xm93 = VehicleZoneDistribution.xm93 or {}
VehicleZoneDistribution.xm93.vehicles = VehicleZoneDistribution.xm93.vehicles or {}
VehicleZoneDistribution.xm93.vehicles["Base.XM93Desert"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.xm93.baseVehicleQuality = 1.1;
VehicleZoneDistribution.xm93.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_xm93_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("xm93Desert", "ParkingStall", 5527, 12492, 0, 3, 3, { Direction = "E" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_xm93_Zones)


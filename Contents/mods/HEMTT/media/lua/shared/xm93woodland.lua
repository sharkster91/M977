require "VehicleZoneDefinition"
VehicleZoneDistribution.xm93woodland = VehicleZoneDistribution.xm93woodland or {}
VehicleZoneDistribution.xm93woodland.vehicles = VehicleZoneDistribution.xm93woodland.vehicles or {}
VehicleZoneDistribution.xm93woodland.vehicles["Base.XM93Woodland"] = {index = -1, spawnChance = 50}
VehicleZoneDistribution.xm93woodland.baseVehicleQuality = 1.1;
VehicleZoneDistribution.xm93woodland.spawnRate = 20000; -- inflated spawn chance to force spawning for testing

function PA_xm93woodland_Zones()
    local dirs = getLotDirectories()
    for i=dirs:size(),1,-1 do
        local map = dirs:get(i-1)
        if map == "Muldraugh, KY" then
            getWorld():registerVehiclesZone("xm93woodland", "ParkingStall", 5527, 12492, 0, 3, 3, { Direction = "E" })
        end
    end
end

Events.OnLoadMapZones.Add(PA_xm93woodland_Zones)
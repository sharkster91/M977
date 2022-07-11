---
--- Created by cytt0rak
---  WIP
---

function HEMTTCargoWeightFix(player, part, elapsedMinutes)
	local vehicle = player:getVehicle()
	if (vehicle and string.find( vehicle:getScriptName(), "HEMTTCargo" )) then

		if vehicle:getMass() > 1820 then

			vehicle:setMass(1822)

		end

	end

end

function HEMTTLoadWeightFix(player, part, elapsedMinutes)
	local vehicle = player:getVehicle()
	if (vehicle and string.find( vehicle:getScriptName(), "HEMTTLoadHandling" )) then

		if vehicle:getMass() > 1820 then

			vehicle:setMass(1822)

		end

	end

end

function HEMTTFuelWeightFix(player, part, elapsedMinutes)
	local vehicle = player:getVehicle()
	if (vehicle and string.find( vehicle:getScriptName(), "HEMTTFuel" )) then

		if vehicle:getMass() > 1820 then

			vehicle:setMass(1822)

		end

	end

end

Events.OnPlayerUpdate.Add(HEMTTCargoWeightFix);
Events.OnPlayerUpdate.Add(HEMTTLoadWeightFix);
Events.OnPlayerUpdate.Add(HEMTTFuelWeightFix);
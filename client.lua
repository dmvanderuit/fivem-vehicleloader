--[[
Script made by Daniel R. (DMVDR on fivem forums)
Feel free to change and modify where you see fit.
Please do not reupload without asking me first.

To add your vehicles, add them in the vehicles array.
Don't forget to add a comma (,) to every entry but the last one.
--]]
local isVehiclesLoaded = false

local vehicles = {
"POLICE",
"POLICE2",
"POLICE3",
"POLICE4",
"POLICE5",
"POLICE6",
"POLICE7",
"POLICE8",
"POLICE9",
"POLICE10",
"POLICE11",
"POLICE12",
"POLICE13",
"POLICET",
"POLICEB",
"POLICEMUSTANG",
"POLICETAXI",
"POLMAV",
"RIOT"
}

Citizen.CreateThread(function()
  while true do
		Citizen.Wait(0)
			if not isVehiclesLoaded then
			for i, name in ipairs(vehicles) do
				targetVehicle = name

				if not IsModelInCdimage(targetVehicle) or not IsModelAVehicle(targetVehicle) then
					Citizen.Trace(targetVehicle .. " could not be found as a vehicle.")
					return
				end

				RequestModel(targetVehicle)
				

				while not HasModelLoaded(targetVehicle) do
                    Citizen.Trace("[VehicleLoader] Loading vehicle " ..targetVehicle)
					Citizen.Wait(500) 
				end

                if HasModelLoaded(targetVehicle) then
 
                end
				SetModelAsNoLongerNeeded(targetVehicle)
			end
			isVehiclesLoaded = true
		end

  end
end)

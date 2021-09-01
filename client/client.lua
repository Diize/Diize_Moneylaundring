ESX = nil

local location = vector3(-402.40, 1127.390, 325.850)

local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
  }
  


RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)


RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
  PlayerData.job = job
end)


function Draw3DText(x, y, z, text, scale)

    local onScreen, _x, _y = World3dToScreen2d(x, y, z)
    local pX, pY, pZ = table.unpack(GetGameplayCamCoords())
 
    SetTextScale(0.0, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextEntry("STRING")
    SetTextCentre(1)
    SetTextColour(255, 255, 255, 215)
 
    AddTextComponentString(text)
    DrawText(_x, _y)
 
    local factor = (string.len(text)) / 230
    -- DrawRect(_x, _y + 0.0250, 0.095 + factor, 0.06, 41, 11, 41, 100)
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(5)
  local coords = GetEntityCoords(GetPlayerPed(-1))
  local distance = GetDistanceBetweenCoords(coords, Config.Location, true)
  if distance < 5 then
    Draw3DText(Config.Location.x, Config.Location.y, Config.Location.z, "~w~[~g~E~w~] Wash Money", 0.80)
    if GetDistanceBetweenCoords(coords, Config.Location, true) < 0.5 then
    if ( IsControlJustPressed( 1, Config.MenuKey ) ) then
    TriggerEvent('triggermenu')
    
end
end
end
end
end)

RegisterNetEvent('triggermenu', function(data)
    TriggerEvent('nh-context:sendMenu', {
        {
            id = 1,
            header = "Wash 50%",
            txt = "",
            params = {
                event = "triggerserverside_fifty"
            }
        },
        {
            id = 2,
            header = "Wash 70%",
            txt = "",
            params = {
                event = "triggerserverside_seventie"
            }
        },
        {
            id = 2,
            header = "Wash 100%",
            txt = "",
            params = {
                event = "triggerserverside_hundred"
            }
        },

    })
end)

RegisterNetEvent('triggerserverside_fifty')
AddEventHandler('triggerserverside_fifty', function()
    TriggerServerEvent('checkcash_fifty')
end)

RegisterNetEvent('triggerserverside_seventie')
AddEventHandler('triggerserverside_seventie', function()
    TriggerServerEvent('checkcash_seventie')

end)
RegisterNetEvent('triggerserverside_hundred')
AddEventHandler('triggerserverside_hundred', function()
    TriggerServerEvent('checkcash_hundred')
end)



RegisterNetEvent('animationxd')
AddEventHandler('animationxd', function()
    TaskStartScenarioInPlace(PlayerPedId(), "PROP_HUMAN_BUM_SHOPPING_CART", 0, true)
    TriggerEvent("mythic_progbar:client:progress", {
        name = "unique_action_name",
        duration = Config.ProgressbarTime * 1000,
        label = "Washing money...",
        useWhileDead = false,
        canCancel = true,
        controlDisables = {
            disableMovement = false,
            disableCarMovement = false,
            disableMouse = false,
            disableCombat = false,
        }})
    Citizen.Wait(Config.ProgressbarTime * 1000)
    ClearPedTasks(PlayerPedId())
		
end)




















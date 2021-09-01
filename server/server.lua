ESX = nil
stressyo = true

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

RegisterNetEvent('checkcash_seventie')
AddEventHandler('checkcash_seventie', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local myBlackMoney = xPlayer.getAccount('black_money').money
	-- local myBlackMoney = xPlayer.getInventoryItem(Config.BlackMoney).count
	local washpercentage_undone = myBlackMoney * 0.70
	local washpercentage = round(washpercentage_undone)
	local cleancash = washpercentage * Config.Rate
	local finalreturn = round(cleancash)

	if myBlackMoney >= Config.MinimumBlackMoney then
		TriggerClientEvent('animationxd', _source)
		Wait(Config.ProgressbarTime * 1000)
		xPlayer.removeAccountMoney('black_money', washpercentage)
		xPlayer.addMoney(finalreturn)
		TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = Config.YouGot ..finalreturn.. Config.BackFrom ..washpercentage.. Config.DirtyCash, style = { ['background-color'] = '#ffffff', ['color'] = '#ffffff' } })

	else
		TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = Config.NotEnoughDirtyCash, style = { ['background-color'] = '#ffffff', ['color'] = '#ffffff' } })
end
end)

RegisterNetEvent('checkcash_fifty')
AddEventHandler('checkcash_fifty', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local myBlackMoney = xPlayer.getAccount('black_money').money
	-- local myBlackMoney = xPlayer.getInventoryItem(Config.BlackMoney).count
	local washpercentage_undone = myBlackMoney * 0.50
	local washpercentage = round(washpercentage_undone)
	local cleancash = washpercentage * Config.Rate
	local finalreturn = round(cleancash)

	if myBlackMoney >= Config.MinimumBlackMoney then
		TriggerClientEvent('animationxd', _source)
		Wait(Config.ProgressbarTime * 1000)
		xPlayer.removeAccountMoney('black_money', washpercentage)
		xPlayer.addMoney(finalreturn)
		TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = Config.YouGot ..finalreturn.. Config.BackFrom ..washpercentage..Config.DirtyCash, style = { ['background-color'] = '#3d66b4', ['color'] = '#ffffff' } })

	else
		TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = Config.NotEnoughDirtyCash, style = { ['background-color'] = '#3d66b4', ['color'] = '#ffffff' } })
end
end)

RegisterNetEvent('checkcash_hundred')
AddEventHandler('checkcash_hundred', function()
	local _source = source
	local xPlayer = ESX.GetPlayerFromId(_source)
	local myBlackMoney = xPlayer.getAccount('black_money').money
	-- local myBlackMoney = xPlayer.getInventoryItem(Config.BlackMoney).count
	local washpercentage_undone = myBlackMoney * 1
	local washpercentage = round(washpercentage_undone)
	local cleancash = washpercentage * Config.Rate
	local finalreturn = round(cleancash)

	if myBlackMoney >= Config.MinimumBlackMoney then
		TriggerClientEvent('animationxd', _source)
		Wait(Config.ProgressbarTime * 1000)
		xPlayer.removeAccountMoney('black_money', washpercentage)
		-- xPlayer.addInventoryItem('cash', finalreturn)
		xPlayer.addMoney(finalreturn)
		TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = Config.YouGot ..finalreturn.. Config.BackFrom ..washpercentage..Config.DirtyCash, style = { ['background-color'] = '#3d66b4', ['color'] = '#ffffff' } })


	else
		TriggerClientEvent('mythic_notify:client:SendAlert', _source, { type = 'inform', text = Config.NotEnoughDirtyCash, style = { ['background-color'] = '3d66b4', ['color'] = '#ffffff' } })
end
end)


function round(x)
	return x>=0 and math.floor(x+0.5) or math.ceil(x-0.5)
  end

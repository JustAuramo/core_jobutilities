Config = {

--BLIPS FOR JOB CENTERS
BlipCenterSprite = 498,
BlipCenterColor = 3,
BlipCenterText = 'Job Center',

MarkerSprite = 27,
MarkerColor = {66, 135, 245},
MarkerSize = 1.1,

LocationsJobCenters = { -- If you want you can setup locations to change jobs (Leave without entiries if you dont want locations) (ADDS 0.02 MS)
	-- {coords = vector3(-267.48895263672,-959.03033447266,31.22313308715), blip = true}
},

--Boss menu locations
BossMenuLocations = {

	{coords = vector3(463.23, -985.35, 30.73), job = "police", label = "POLICE"},
	{coords = vector3(-215, -1318.79, 30.89), job = "mechanic", label = "MECHANIC"},
	{coords = vector3(-30.10, -1652.86, 29.49), job = "carshowroom", label = "Car Dealer"},
	{coords = vector3(93.74, -1292.47, 29.26), job = "nightclub", label = "Unicorn"},
	{coords = vector3(97.05, -1288.39, 29.26), job = "hayes", label = "Hayes"},
	{coords = vector3(304.30, -600.52, 43.28), job = "ambulance", label = "Ensihoito"},

},



--Boss menu users by grade name and their permissions
BossMenuUsers = {

	['boss'] = {canWithdraw = true, canDeposit = true, canHire = true, canRank = true, canFire = true, canBonus = true},
	['recruit'] = {canWithdraw = false, canDeposit = true, canHire = false, canRank = false, canFire = false, canBonus = false}

},


DefaultJobsInJobCenter = { -- Jobs that can be added by going to the job center. For icons use https://fontawesome.com/
	
	{job = 'miner', label = "Miner", icon = "fas fa-gem", description = "You mine stuff and get materials you can sell"},
	{job = 'fisherman', label = "Fisherman", icon = "fas fa-fish", description = "Get fish and sell for profit."},
	{job = 'works', label = "Cityworks", icon = "fas fa-city", description = "Grab a truck and fix electronics around the city."},
	{job = 'lumberjack', label = "Lumberjack", icon = "fas fa-axe", description = "Grab an axe and go chop some trees down."},
	{job = 'technician', label = "Technician", icon = "fas fa-microchip", description = "Need some extra cash? Grab your tools & fix some broken circuits."},
	{job = 'taxi', label = "Taxi", icon = "fas fa-taxi", description = "Grab a taxi and give some people rides across the city."},
	{job = 'unemployed', label = "Unemployed", icon = "fas fa-user-times", description = "Get a job you lazy bum!"},
	{job = 'fueler', label = "Fueler", icon = "fas fa-gas-pump", description = "Grab a truck & tanker, go deliver fuel."},
	{job = 'tailor', label = "Tailor", icon = "fas fa-tshirt", description = "Get materials to make clothing and sell them to make money."},
	{job = 'butcher', label = "Butcher", icon = "fas fa-meat", description = "Go butcher some animals for meat, then sell it all to make some cash."}
},


Text = {

	['open_jobcenter_ui_hologram'] = '[~b~E~w~] Open Job Center',
	['promoted'] = 'You have been promoted',
	['promoted_other'] = 'You have been promoted in another job!',
	['fired'] = 'You have been fired',
	['fired_other'] = 'You have been fired',
	['hired'] = 'You have been hired',
	['bossmenu_hologram'] = '[~b~E~w~] Avaa Pomo Valikko',
	['action_success'] = 'Action successful',
	['action_unsuccessful'] = 'Action unsuccessful',
	['cant_access_bossmenu'] = 'You cant access boss menu',
	['insufficent_balance'] = 'Insufficent balance',
	['bonus_given'] = 'Bonus has been given!',
	['bonus_recieved'] = 'You recieved a bonus! +$'

}
	

}

-- Only change if you know what are you doing!
function SendTextMessage(msg)

		SetNotificationTextEntry('STRING')
		AddTextComponentString(msg)
		DrawNotification(0,1)

		--EXAMPLE USED IN VIDEO
		--exports['mythic_notify']:SendAlert('error', msg)

end

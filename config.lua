Config = {}




-----------------------
--DIIZE_MONEYLAUNDRING
-----------------------
-- Config.Location = { x = 1135.740, y = -988.170, z = 46.11 } --Where is the laund located?
Config.Location = vector3(1135.740, -988.170, 46.11)
Config.Rate = 0.80 -- How much money in percent should they get back from what they wash? 0.80 = 80%.... aka, the moneywash take a 20% cut.
Config.MinimumBlackMoney = 100 -- How much should a player have minimum in their inventory to be able to wash?
Config.MenuKey = 38 -- Change this if youd like, its E by default.



------------------------------------------------------------------------------
------------------------------LOCALES----------------------------------------
------------------------------------------------------------------------------
Config.YouGot = "You got $"
Config.BackFrom = " back from " --make sure you have the spaces like i do here.
Config.DirtyCash = " dirty cash"
Config.NotEnoughDirtyCash = "You dont have enough dirty cash to wash.."
Config.ProgressbarLabel = "Washing in progress.." --Label for the progressbar?
Config.ProgressbarTime = 15 -- in seconds, how long should the laundring take?
------------------------------------------------------------------------------
------------------------------------------------------------------------------

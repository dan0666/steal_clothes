
Config = {}

Config.UseNewESX = true                                        -- Set to true for new version, false for old version

Config.RenovationHours = 0                                     -- Number of hours for cooldown. Keep 0 if don't wanna hours
Config.RenovationMinutes = 10                                  -- Number of minutes for cooldown. Keep 0 if don't wanna minutes
Config.CooldownNotification = "You are still on cooldown. Please wait " -- You can change text
Config.CooldownNotification2 = " seconds."                     -- You can change text

Config.AllertChance = 15                                       -- 15% chance for sending allerts to dispatch 
Config.DispatchFile = ""                                       -- You can change this to any dispatch system you want to use for now only use (cd_dispatch)
Config.ClothesGpsBlocker = "clothes_gps_blocker"               -- If all jobs is off, and you want add item to ignore dispatch while player stealing clothes, player must have this item
Config.IgnoreDispatchJobs = {                                  -- If AllowedJobs is comment out, and you wanna still ignore dispatch for some jobs, please add here if not, leave empty
    -- "police",  -- Job name
    -- "ambulance" -- Job name 
    -- Add more jobs as needed
}

Config.SearchDuration = 20000                                  -- Search duration in milliseconds (20 seconds)
Config.KeyToInteract = 47                                      -- Default is 'G' key. (47)  https://docs.fivem.net/docs/game-references/controls/

-- Items and reward section
Config.Items = {
    {name = "old_clothes", displayName = "Old Clothes", chance = 0.25, sellPrice = 1},  -- 25% chance to receive this item, $1 per item when sold
    {name = "new_clothes", displayName = "New Clothes", chance = 0.25, sellPrice = 1},  -- 25% chance to receive this item, $1 per item when sold
    {name = "old_shoes", displayName = "Old Shoes", chance = 0.25, sellPrice = 1},      -- 25% chance to receive this item, $1 per item when sold
    {name = "new_shoes", displayName = "New Shoes", chance = 0.25, sellPrice = 1}       -- 25% chance to receive this item, $1 per item when sold
    -- If you add new items, you need to recount chances! 0.25 x 4 = 1 (100% chance filled)
}

Config.RewardMultiplierChance = 0.01                           -- By default 0.1% chance to receive double items (0.10/10% chance or 1.0/100% chance)

-- Sell market section
Config.SellingMarket = true                                    -- If set |true| Selling market is ON, if |false| selling market is OFF
-- If Config.SellingMarket = false | SKIP THIS all market section
Config.SellButtom = "Press ~INPUT_PICKUP~ to sell clothes" 
Config.SellingPoint = {
    Location = vector4(687.7305, -994.2951, 23.3904, 273.5019), -- Coordinates and heading
    Blip = {
        Sprite = 480, -- You can choose a sprite for the selling point | https://docs.fivem.net/docs/game-references/blips/
        Color = 5,    -- You can choose a color for the blip
        Scale = 1.0,  -- Size of the blip
        Name = "Selling Point" -- Name to display on the blip
    }
}

Config.EsxMenuTitle = "Sell Clothes market"    -- You can change market menu title here
Config.EsxMenuAligh = 'top-left'               -- You can change aligh menu, posible variants: top-left | top-right | bottom-left | bottom-right | center |
Config.EsxMenuSellTitle = "Amount to Sell"     -- You can change sell title
Config.EsxMenuInvalidAmount = "Invalid amount" -- You can change invalid amount text

-- Blip section
Config.JobBlip = true                                          -- If job allowed, blip visible?
Config.EveryoneBlip = true                                     -- Whether to display blips for everyone, regardless of job

-- Default blip settings for all locations
Config.BlipSettings = {
    sprite = 434,                                              -- Default blip sprite https://docs.fivem.net/docs/game-references/blips/
    colour = 1,                                                -- Default blip color
    scale = 0.8,                                               -- Default blip scale
    name = "Donation clothes banks"                            -- Default blip name
}

Config.MinReward = 1                                           -- Min posibility to get a reward
Config.MaxReward = 10                                          -- Max posibility to get a reward

Config.Prop = {                                                -- GTA V bin model name

    -14708062,

}

-- Job section
Config.TurnJob = true                                           -- Do you wanna turn on job? If yes |true| if not |false|
Config.AllowedJobs = {                                          -- If all jobs is comment out's, it means no job required, everyone can take it (Allowed jobs do not sends the alerts to dispatchs aswell)
   --  "clothes_picker",    -- Job name
    "unemployed"            -- Job name 
                            -- Add more jobs as needed
}
-- Job location and npc. Only change settings if Config.TurnJob = true
Config.NPC = {
    Location = vector4(707.2588, -966.9993, 30.4129, 167.5737), -- Example coordinates and heading
    Model = 'a_m_m_fatlatin_01',                                -- Example ped model | https://docs.fivem.net/docs/game-references/ped-models/
    Blip = {
        Sprite = 214,                                           -- Example sprite ID https://docs.fivem.net/docs/game-references/blips/
        Color = 3,                                              -- Example color ID
        Scale = 0.9,                                            -- Example scale
        Name = "Donation clothes job"                           -- Example name
    }
}

-- Job vehicle. Only change settings if Config.TurnJob = true
Config.Vehicle = {
    LockByDefault = true,                                       -- Set to true to lock vehicles by default
    LockUnlockKey = 182,                                        -- Default key (L-182) for locking/unlocking vehicles https://docs.fivem.net/docs/game-references/controls/
    UseCustomNumberPlate = true,                                -- Do you want use custom number plates? If yes set (true) if no, set (false)
    NumberPlate = "CLOTHS",                                     -- Your custom number plate text (ONLY ACCEPTS UP TO 6 SYMBOLS MAX, REST TWO DIGITS THE SYSTEM GENERATED AUTOMATICLY)
    Location = vector4(711.3273, -979.8489, 23.8531, 225.2488), -- Example coordinates and heading
    Model = 'speedo4',                                          -- Vehicle model to spawn
    Blip = {
        Sprite = 318,                                           -- Example sprite ID https://docs.fivem.net/docs/game-references/blips/
        Color = 3,                                              -- Example color ID
        Scale = 1.0,                                            -- Example scale
        Name = "Job vehicle"                                    -- Example name
    }
}

-- Job clothes. Only change settings if Config.TurnJob = true
Config.ChangeClothesOption = true -- Are you wanna on the clothes change option? If false, leave Wardrobe options like it is
Config.Wardrobe = {

    MaleClothes = {
        ['tshirt_1'] = 59, ['tshirt_2'] = 0,
        ['torso_1'] = 56, ['torso_2'] = 0,
        ['arms'] = 5, ['arms_2'] = 0,
        ['pants_1'] = 36, ['pants_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['shoes_1'] = 24, ['shoes_2'] = 0
    },
  
    FemaleClothes = {
        ['tshirt_1'] = 36, ['tshirt_2'] = 0,
        ['torso_1'] = 49, ['torso_2'] = 1,
        ['arms'] = 0, ['arms_2'] = 0,
        ['pants_1'] = 35, ['pants_2'] = 0,
        ['helmet_1'] = -1,  ['helmet_2'] = 0,
        ['shoes_1'] = 24, ['shoes_2'] = 0
    }
}
-- Marks vehicle parking area and spawn area. Only change settings if Config.TurnJob = true
Config.Vehicle.Marker = {
    Type = 24,                                                  -- Marker type ID (24 is for replay icon)
    Color = {255, 255, 255, 255},                               -- RGBA color
    --Radius = 10.0,                                              -- Marker radius
    Size = 1.0,                                                 -- Marker size (scale factor)
    Width = 1.0,                                                -- Width of the marker
    Height = 1.0,                                               -- Height of the marker
    ZOffset = -0.3,                                             -- Z-offset (vertical position adjustment)
    BounceSpeed = 4.0,                                          -- Speed of the bounce animation
    BounceHeight = 0.3                                          -- Height of the bounce animation
}

-- Notifications texts, key & radius settings
Config.NpcJobDistanceText = 1.0                                 -- How far shows distance from player to NPC to start a job?
Config.PressMe = "Press ~INPUT_PICKUP~ to start clothing job"
Config.VehicleSpawned = "Your job vehicle is ready outside!"
Config.VehicleFailedSpawn = "Failed spawn vehicle model, wrong model?"
Config.JobKeyToInteract = 38                                    -- Default is 'E' key. (38)  https://docs.fivem.net/docs/game-references/controls/
Config.ParkVehicleKey = 38                                      -- Default is 'E' key. (38)  https://docs.fivem.net/docs/game-references/controls/
Config.ParkingJobTextDistance = 1.0
Config.PressMeParkVehicle = "Press ~INPUT_CONTEXT~ to park vehicle"
Config.ParkedVehicle = "Your job vehicle is parked!"
Config.DespawnVehicleRadius = 10                                -- Radius around the spawn location where despawn is allowed
Config.ParkingMarkerVisabilityDistance = 15                     -- Distance of parking marker visiblity
-- Vehicle lock/unlock text
Config.VehicleLocked = "Your job vehicle is ~g~locked~s~"
Config.VehicleUnlocked = "Your job vehicle is ~g~unlocked~s~"
Config.ToFarvehicleUnlock = "You are too far from the vehicle to unlock it"
Config.ToFarvehicleLock = "You are too far from the vehicle to lock it"
-- Vehicle lights adjust value
Config.JobVehicleSpawned = "Your job vehicle is spawned"
-- Job text & radius setting
Config.PlayerLeavesJob = "You leave your job"                     -- You can change the text
Config.LeaveJobTextInterection = "Press ~INPUT_PICKUP~ to leave job" -- You can change the text
Config.VehicleLockUnlockRadius = 4                                -- Radius to allow vehicle lock/unlock
Config.GetItemNotification = "~g~You received "                   -- You can change the text
Config.SoldItemText = "~g~Sold "                                  -- You can change the text
Config.SoldItemTextFor = " for $"                                 -- You can change the text
Config.DontEnoughtItem = "~r~You do not have enough "             -- You can change the text
Config.NoPermissionNotification = "~r~You are not allowed to steal clothes.~s~" -- You can change the text
Config.Text = '~INPUT_DETONATE~ To steal from ~r~donation bank~s~' -- You can change the text
-- Clothes changing text
Config.YouChangeYourClothes = "You change clothes into job clothes!"-- You can change the text
Config.YouChangeYourClothesBack = "You change clothes into your clothes!"-- You can change the text

-- For cd_dispatch section
Config.CD_dispatchTitle = "Donation clothes bank robbery"       -- Only for cd_dispatch if active
Config.CD_dispatchMessage = "Person trying to steal clothes at "-- Only for cd_dispatch if active
Config.CD_dispatchMinniMessage = ""                             -- Only for cd_dispatch if active

-- Animation section
Config.JobAnimation = {
    Dictionary = "switch@franklin@getting_ready",
    Name = "002334_02_fras_v2_11_getting_dressed_exit",
    Duration = 5000,  -- Duration in milliseconds
    FreezeAnim = 1    -- 1 | Freezing player movements while animations is running. 48 - Gives player movement while animations is running
}

Config.VehLockAnimation = {
    Dictionary = "mp_common",
    Name = "givetake1_b",
    Duration = 1000,  -- Duration in milliseconds
    FreezeAnim = 48   -- 1 | Freezing player movements while animations is running. 48 - Gives player movement while animations is running
}

Config.InvalidAmountAnim = {
    Dictionary = "missheistdockssetup1ig_4@end_idle",
    Name = "floyd_fellpackage_endidle_dockworker3",
    Duration = 4000,  -- Duration in milliseconds
    FreezeAnim = 48   -- 1 | Freezing player movements while animations is running. 48 - Gives player movement while animations is running
}

Config.SellItemAnim = {
    Dictionary = "mini@triathlon",
    Name = "rummage_bag",
    Duration = 1500,  -- Duration in milliseconds
    FreezeAnim = 48   -- 1 | Freezing player movements while animations is running. 48 - Gives player movement while animations is running
}

--[[ READ NOTE

If server or this system restarts, the database of player_interectios clears automaticly to not restore the useless cooldown information

]]
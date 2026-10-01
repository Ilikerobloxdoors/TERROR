local Creator = loadstring(game:HttpGet("https://pastebin.com/raw/0fSnvfGt"))()

local entity = Creator.createEntity({
    CustomName = "Terror",

    Model = "https://raw.githubusercontent.com/Ilikerobloxdoors/TERROR/main/Terror.rbxm",

    Speed = 800,
    DelayTime = 5,

    HeightOffset = 0,
    CanKill = true,
    KillRange = 45,

    BreakLights = true,
    BackwardsMovement = false,

    FlickerLights = {
        true,
        2,
    },

    Cycles = {
        Min = 5,
        Max = 10,
        WaitTime = 0.5,
    },

    CamShake = {
        true,
        {5, 5, 0.1, 1},
        100,
    },

    Jumpscare = {
        true,
        {
            Image1 = "rbxassetid://11372489767",
            Image2 = "rbxassetid://11372489767",

            Shake = false,

            Sound1 = {
                139162107746216,
                {Volume = 1},
            },

            Sound2 = {
                139162107746216,
                {Volume = 1},
            },

            Flashing = {
                true,
                Color3.fromRGB(255, 0, 0),
            },

            Tease = {
                false,
                Min = 0,
                Max = 0,
            },
        },
    },

    CustomDialog = {
        "You died to Terror...",
    },
})

entity.Debug.OnEntitySpawned = function(entityTable)
    print("Terror spawned:", entityTable.Model)
end

entity.Debug.OnEntityDespawned = function(entityTable)
    print("Terror despawned:", entityTable.Model)
end

entity.Debug.OnEntityStartMoving = function(entityTable)
    print("Terror started moving:", entityTable.Model)
end

entity.Debug.OnEntityFinishedRebound = function(entityTable)
    print("Terror finished rebound:", entityTable.Model)
end

entity.Debug.OnEntityEnteredRoom = function(entityTable, room)
    print("Terror entered room:", room)
end

entity.Debug.OnLookAtEntity = function(entityTable)
    print("Player looked at Terror")
end

entity.Debug.OnDeath = function(entityTable)
    warn("Player died to Terror.")
end

Creator.runEntity(entity)

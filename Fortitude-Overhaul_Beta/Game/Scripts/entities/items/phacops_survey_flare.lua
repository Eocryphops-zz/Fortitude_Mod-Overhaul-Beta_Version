Phacops_Survey_Flare = {
    Properties = {
        velocity            = { x=0, y=0, z=0 },
        shooterId           = 0,
    },

    Defaults = {
        lifetime    = 300,
    },

    Distraction = {
        lifetime    = 3.0,
        radius      = 20,
    },

    gravity={x=0,y=0,z=0},

    Physics = {
        bRigidBodyActive = 0,
        bActivateOnDamage = 0,
        bResting = 0, -- If rigid body is originally in resting state.
        bCanBreakOthers = 0,

        bPhysicalize = 0, -- True if object should be physicalized at all.
        bRigidBody = 0, -- True if rigid body, False if static.
        bPushableByPlayers = 0,

        Density = 0,
        Mass = 0,

        Simulation =
        {
            max_time_step = 0.02,
            sleep_speed = 0.04,
            damping = 0,
            bFixedDamping = 0,
            bUseSimpleSolver = 0,
        },
        Buoyancy=
        {
            water_density = 1000,
            water_damping = 0,
            water_resistance = 1000,
        },
    },

    Explosion = {
        pressure            = 600,
        minRadius           = 5,
        maxRadius           = 10,
        minPhysRadius       = 2.2,
        maxPhysRadius       = 6,
        effect              = 'Class3Explosions.Grenade.explosion',
        effectScale         = 0.35,
        damage              = 500,
        decal               = 'materials/decals/explosions/explosion_metal.mtl',
        decalScale          = 0.2,
        decalLifetime       = 300,
        direction           = { x=0, y=0, z=-1 },
        holeSize            = 5,
        hitType             = 'frag',
        soundRadius         = 25,
        disturbanceVal      = 10,
    },

    ParticleProps = {
        bActive=1,  -- Activate on startup
        bPrime=1,   -- Starts in equilibrium state, as if activated in past
        Scale=1.0, -- Scale entire effect size.
        SpeedScale=1,   -- Scale particle emission speed
        CountScale=1,   -- Scale particle counts.
        bCountPerUnit=0,    -- Multiply count by attachment extent
        Strength=-1,        -- Custom param control
        esAttachType="",    -- BoundingBox, Physics, Render
        esAttachForm="",    -- Vertices, Edges, Surface, Volume
        PulsePeriod=0,          -- Restart continually at this period.
    },

    AudioCache = 'toy_flare',
    AudioCacheLifetime = 5.0,
}

-----------------------------------------------------
function Phacops_Survey_Flare:OnInit()
--    Sound.CacheAudioFile(self.AudioCache)
    self:PlaySoundEvent("Sounds/explosions:exp_toys:flare_light", g_Vectors.v000, g_Vectors.v010, SOUND_DEFAULT_3D, SOUND_SEMANTIC_PLAYER_FOLEY)
    self:OnReset()
end

-----------------------------------------------------
function Phacops_Survey_Flare:OnReset()

    self:KillTimer(0)
    self:SetTimer(0, self.Defaults.lifetime * 1000)

    self:SetViewDistRatio(255);

    self:LoadParticleEffect(3, 'Class3Explosions.Grenade.flare', self.ParticleProps)
    local translatePos = {x = 0, y = 0, z = -0.14}
    self:SetSlotPos(3, translatePos)
    local rotatePos = {x = -1, y = 0, z = 0}
    self:SetSlotAngles(3, rotatePos)
end

-----------------------------------------------------
function Phacops_Survey_Flare:OnPropertyChange()
    self:OnReset()
end

-----------------------------------------------------

-----------------------------------------------------

-----------------------------------------------------
function Phacops_Survey_Flare:OnTimer(timerId, msec)
    if timerId == 0 then
        self:Fade()
    elseif timerId == 1 then
        self:DeleteThis()
    end
end

-----------------------------------------------------
function Phacops_Survey_Flare:Fade()
    self:FreeSlot(3);
    self:SetTimer(1, 10000) -- delete timer
end

local usemouseover = false    -- Make this false or nil (or just delete the line altogether) to make your healing bars not change when you mouse over something.

function EventHorizon:InitializeClass()
  self.config.gcdSpellID = 768 -- Cat Form
  self.config.hastedSpellID = {50769,10} -- Revive
  self.config.past = -1.5 -- Number of seconds to show in the past. Default = -1.5
  self.config.future = 20 -- Number of seconds to show in the future. Default = 12
  self.config.width = 390

-- specializations
local balance = 1
local feral = 2
local guardian = 3
local restoration = 4

-- stances
local human = 0
local bear = 1
local cat = 2
local travel = 3
local moonkin = 4
local flying = 5

-- Feral bars

  -----------
  --NO CIRCLE
  -----------

  -- Rake
  self:newSpell({
    requiredTree = 2,
    requiredTalentUnselected = 400320,
    stance = {0, 1, 2, 4},
    requiredLevel = 10,
    debuff = {1822,3},
    hasted = true,
    refreshable = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {191/255, 040/255, 101/255, 0.5}
    },
  })

  -- Rip
  self:newSpell({
    requiredTree = 2,
    requiredTalentUnselected = 400320,
    stance = {0, 1, 2, 4},
    requiredLevel = 21,
    debuff = {1079,2},
    hasted = true,
    refreshable = true,
    pandemic = true,
    CPspellsource = {1079, 285381},
    CPvariabledur = {{4, 4}, {2, 2}}, --Needed for accurate Pandemic
    barcolors = {
      debuffmine  = {252/255, 000/255, 060/255, 0.5}
    },
  })

  -- Thrash
  self:newSpell({
    requiredTree = 2,
    requiredTalentUnselected = 400320,
    stance = {0, 1, 2, 4},
    requiredLevel = 11,
    debuff = {106830,3},
    refreshable = true,
    hasted = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {222/255, 010/255, 010/255, 0.5},
    },
  })


  -- Moonfire
  self:newSpell({
    requiredTree = 2,
    requiredTalentUnselected = 400320,
    stance = {0, 1, 2, 4},
    cooldown = 197626,
    pandemic = true,
    hasted = true,
    debuff = {164812,2},
    barcolors = {
      debuffmine  = {050/255, 100/255, 255/255, 0.5}
    },
  })
  
  -- Adaptive Swarm
  self:newSpell({
    requiredTree = 2,
    requiredTalentUnselected = 400320,
    stance = {0, 1, 2, 4},
    cooldown = 391888,
    debuff = {325748,2},
    hasted = true,
    barcolors = {
      debuffmine  = {050/255, 100/255, 255/255, 0.5}
    },
  })

  -----------
  --WITH CIRCLE
  -----------

  -- Rake
  self:newSpell({
    requiredTree = 2,
    requiredTalent = 400320,
    stance = {0, 1, 2, 4},
    requiredLevel = 10,
    debuff = {1822,2.4},
    hasted = true,
    refreshable = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {191/255, 040/255, 101/255, 0.5}
    },
  })

  -- Rip
  self:newSpell({
    requiredTree = 2,
    requiredTalent = 400320,
    stance = {0, 1, 2, 4},
    requiredLevel = 21,
    debuff = {1079,1.6},
    hasted = true,
    refreshable = true,
    pandemic = true,
    CPspellsource = {1079, 285381},
    CPvariabledur = {{3.2, 3.2}, {1.6, 1.6}}, --Needed for accurate Pandemic
    barcolors = {
      debuffmine  = {252/255, 000/255, 060/255, 0.5}
    },
  })

  -- Thrash
  self:newSpell({
    requiredTree = 2,
    requiredTalent = 400320,
    stance = {0, 1, 2, 4},
    requiredLevel = 11,
    debuff = {106830,2.4},
    refreshable = true,
    hasted = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {222/255, 010/255, 010/255, 0.5},
    },
  })


  -- Moonfire
  self:newSpell({
    requiredTree = 2,
    requiredTalent = 400320,
    stance = {0, 1, 2, 4},
    cooldown = 197626,
    pandemic = true,
    hasted = true,
    debuff = {164812,1.6},
    barcolors = {
      debuffmine  = {050/255, 100/255, 255/255, 0.5}
    },
  })

  -- Adaptive Swarm
  self:newSpell({
    requiredTree = 2,
    requiredTalent = 400320,
    stance = {0, 1, 2, 4},
    cooldown = 391888,
    debuff = {325748,1.6},
    hasted = true,
    barcolors = {
      debuffmine  = {050/255, 100/255, 255/255, 0.5}
    },
  })


  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -- Balance bars

  -- Moonfire
  self:newSpell({
    requiredTree = 1,
    --stance = {0, 1, 2, 3},
    pandemic = true,
    debuff = {164812,2},
    barcolors = {
      debuffmine  = {050/255, 100/255, 255/255, 0.5}
    },
  })

  -- Sunfire
  self:newSpell({
    requiredTree = 1,
    --stance = {0, 1, 2, 3},
    debuff = {164815,2},
    pandemic = true,
    icon = 164815,
    barcolors = {
      debuffmine  = {121/255, 010/255, 000/255, 0.6}
    },
  })

  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -------------------------------------------------------------------------------------------------
  -- Restoration bars
  -- Redisign to show only the offensive spells as this looks like it will be more important in Shadowlands and I'm not aware of any healer who isn't tracking their HoT's on their party/raid frames.
  -- Longer healing CD shown at the end in increasing duration order, CD > 90 seconds not shown by default.
  -- If you'd like to return to the old design please ask in the Discord server for help if you can't do it yourself.

  -- Note that there are two, or more, entries for the same spell for many of these bars, this is to have them show up in the correct stances with or without Balance Affinity taken. Additionally there will be a few players out there who prefer to be a treant, all this effort was for you.

  -- Feral Affinity
  -- Moonfire
  self:newSpell({
    requiredTree = 4,
    stance = {0, 2, 3},
    pandemic = true,
    debuff = {164812,2},
    barcolors = {
      debuffmine  = {050/255, 100/255, 255/255, 0.5}
    },
  })

  -- Sunfire
  self:newSpell({
    requiredTree = 4,
    stance = {0, 2, 3},
    debuff = {164815,2},
    pandemic = true,
    icon = 164815,
    barcolors = {
      debuffmine  = {121/255, 010/255, 000/255, 0.6}
    },
  })

  --[[ Adaptive Swarm RIP
  self:newSpell({
  requiredTree = 4,
  stance = {0, 2, 3},
  cooldown = 325727,
  debuff = {325748,2},
  barcolors = {
  debuffmine  = {050/255, 100/255, 255/255, 0.5}
  },
  }) ]]--

  -- Rake
  self:newSpell({
    requiredTree = 4,
    stance = {0, 2, 3},
    debuff = {1822,3},
    refreshable = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {191/255, 040/255, 101/255, 0.5}
    },
  })

  -- Rip 
  self:newSpell({
    requiredTree = 4,
    stance = {0, 2, 3},
    debuff = {1079,2},
    refreshable = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {252/255, 000/255, 060/255, 0.5}
    },
  })

  -- Thrash
  self:newSpell({
    requiredTree = 4,
    stance = {0, 2, 3},
    requiredLevel = 11,
    debuff = {106830,3},
    refreshable = true,
    pandemic = true,
    barcolors = {
      debuffmine  = {222/255, 010/255, 010/255, 0.5},
    },
  })

end

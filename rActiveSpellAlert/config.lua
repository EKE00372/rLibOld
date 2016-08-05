
  -- // rActiveSpellAlert
  -- // zork - 2013

  --get the addon namespace
  local addon, ns = ...

  -----------------------------
  -- VARIABLES
  -----------------------------

  local rASA = ns.rASA

  local playerName = UnitName("player")
  local _, playerClass = UnitClass("player")
  local spellConfig

  -----------------------------
  -- CONFIG
  -----------------------------

  rASA.debug = false --enable texture debugging mode, disable this when done with texture setup

  --zorks buff and debuff list
  if playerClass == "PALADIN" then

    -- buffs
    spellConfig = {
      spellid = 144595,    --神聖十字軍
      unit    = "player", --unit that spell should be tracked on
      caster  = nil,      --the unit that casted the spell
      useSpellIconAsTexture = false, --will override the texture setting and use the spell icon texture instead
      texture = "TEXTURES\\SPELLACTIVATIONOVERLAYS\\ART_OF_WAR", --the texture that you want to display
      anchor  = "RIGHT",    --texture anchor point
      scale   = 1.6,        --texture scale
      color   = { r=1, g=1, b=0.5, }, --texture vertex color
      vFLip   = true,    --texture vertical flip
      hFlip   = false,    --texture horizontal flip
    }
    --add the enrage spell to the addon db
    rASA:AddBuff(spellConfig)

    -- buffs
    spellConfig = {
      spellid = 90174,    --神聖意圖
      unit    = "player", --unit that spell should be tracked on
      caster  = nil,      --the unit that casted the spell
      useSpellIconAsTexture = false, --will override the texture setting and use the spell icon texture instead
      texture = "TEXTURES\\SPELLACTIVATIONOVERLAYS\\HAND_OF_LIGHT.BLP", --the texture that you want to display
      anchor  = "TOP",    --texture anchor point
      scale   = 1.6,        --texture scale
      color   = { r=1, g=1, b=0.5, }, --texture vertex color
      vFLip   = false,    --texture vertical flip
      hFlip   = false,    --texture horizontal flip
    }
    --add the enrage spell to the addon db
    rASA:AddBuff(spellConfig)
	
	    -- buffs
    spellConfig = {
      spellid = 165442,    --十字軍之怒
      unit    = "player", --unit that spell should be tracked on
      caster  = nil,      --the unit that casted the spell
      useSpellIconAsTexture = false, --will override the texture setting and use the spell icon texture instead
      texture = "TEXTURES\\SPELLACTIVATIONOVERLAYS\\ART_OF_WAR", --the texture that you want to display
      anchor  = "LEFT",    --texture anchor point
      scale   = 1.6,        --texture scale
      color   = { r=1, g=1, b=0.5, }, --texture vertex color
      vFLip   = false,    --texture vertical flip
      hFlip   = false,    --texture horizontal flip
    }
    --add the enrage spell to the addon db
    rASA:AddBuff(spellConfig)
  end
  
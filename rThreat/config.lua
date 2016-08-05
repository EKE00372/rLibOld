
  -- // rThreat
  -- // zork - 2012

  --get the addon namespace
  local addon, ns = ...

  --object container
  local cfg = CreateFrame("Frame")
  ns.cfg = cfg

  -----------------------------
  -- CONFIG
  -----------------------------

  -- general settings
  cfg.timespan      = 0.1    -- time that has to pass in seconds before a new table will be drawn to prevent spamming in raids
  cfg.scale         = 1       -- global scale
  cfg.hideOOC       = true   -- true/false hides frame out of combat/without target, otherwise it will be visible all the time
  cfg.partyOnly     = false    -- frame will only be available in party/raid (overrides hide setting)
  cfg.hideInPVP     = true    -- hide while being in arena / battleground

  -- frame position (you can move the frame ingame via "/rthreat")
  cfg.frame = {
    pos = { a1 = "CENTER", af = UIParent, a2 = "CENTER", x = -400, y = -270 },
    bg = {
      color = { r = 0, g = 0, b = 0, a = 0.7 },
    },
  }

  -- backdrop shadow settings
  cfg.shadow = {
    show            = false,
    bgFile          = nil,    -- "Interface\\AddOns\\rThreat\\background",
    bgColor         = { r = 0.15, g = 0.8, b = 1, a = 0.2 },
    edgeFile        = "Interface\\AddOns\\rLibOld\\rThreat\\media\\shadow",
    edgeColor       = { r = 0, g = 0, b = 0, a = 1 },
    tile            = false,
    tileSize        = 32,
    edgeSize        = 4,
    inset           = 4,
  }

  -- border settings
  cfg.border = {
    show            = false,
    bgFile          = nil,    -- "Interface\\AddOns\\rThreat\\background",
    bgColor         = { r = 0, g = 0, b = 0, a = 0.5 },
    edgeFile        = "Interface\\AddOns\\rLibOld\\rThreat\\media\\border",
    edgeColor       = { r = 1, g = 1, b = 1, a = 1 },
    tile            = false,
    tileSize        = 16,
    edgeSize        = 8,
    inset           = 2,
  }

  -- threat bar settings
  cfg.statusbar = {
    count           = 5,      -- how many statusbars should be created?
    width           = 160,
    height          = 18,
    gap             = 1,      -- gap between bars
    marker          = true,   -- true/false this will mark your statusbar in red color if active
    font = {
      family        = STANDARD_TEXT_FONT,
      size          = 14,
      color         = { r = 1, g = 1, b = 1, a = 1 },
      outline       = "OUTLINE",
    },
    texture         = "Interface\\AddOns\\rLibOld\\rThreat\\media\\statusbar",
    color = {
      bar           = { a = 1 },
      bg            = { multiplier = 0.5, a = 0.6 },
      inactive      = { r = 0.5, g = 0.5, b = 0.5, a = 0.1 },
    },
  }

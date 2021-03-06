local E, L, V, P, G = unpack(ElvUI)

-- Minimap
P.general.minimap.locationText = "MOUSEOVER"

-- Unitframes
P.unitframe.units.player.portrait.detachFromFrame = false
P.unitframe.units.player.portrait.detachedWidth = 54
P.unitframe.units.player.portrait.detachedHeight = 54

P.unitframe.units.target.portrait.detachFromFrame = false
P.unitframe.units.target.portrait.detachedWidth = 54
P.unitframe.units.target.portrait.detachedHeight = 54

P.unitframe.units.player.animatedLoss = {
	enable = false,
	duration = .75,
	startDelay = .2,
	pauseDelay = .05,
	postponeDelay = .05
}

-- Enhanced
P.enhanced = {
	general = {
		pvpAutoRelease = false,
		autoRepChange = false,
		merchant = false,
		merchantItemLevel = false,
		moverTransparancy = 1,
		showQuestLevel = false,
		questItemLevel = false,
		selectQuestReward = false,
		declineduel = false,
		declinepetduel = false,
		hideZoneText = false,
		originalCloseButton = false,
		trainAllButton = false,
		undressButton = false,
		alreadyKnown = false
	},
	actionbars = {
		equipped = false,
		equippedColor = {r = 0, g = 1.0, b = 0},
		transparentActionbars = {
			transparentBackdrops = false,
			transparentButtons = false
		},
		pet = {
			checkedBorder = false,
			checkedBorderColor = {r = 1, g = 0.56, b = 0},
			autoCastBorder = false,
			autoCastBorderColor = {r = 1, g = 0, b = 0}
		}
	},
	chat = {
		dpsLinks = false,
	},
	datatexts = {
		timeColorEnch = false,
		datatextColor = {
			enable = false,
			color = "CUSTOM",
			custom = {r = 1, g = 1, b = 1, a = 1}
		}
	},
	equipment = {
		durability = {
			enable = false,
			onlydamaged = true,
			position = "TOPLEFT",
			xOffset = 1,
			yOffset = 0,
			font = "Homespun",
			fontSize = 10,
			fontOutline = "MONOCHROMEOUTLINE"
		},
		itemlevel = {
			enable = false,
			qualityColor = true,
			position = "BOTTOMRIGHT",
			xOffset = 1,
			yOffset = 4,
			font = "Homespun",
			fontSize = 10,
			fontOutline = "MONOCHROMEOUTLINE"
		},
		equipmentSet = {
			enable = false,
			position = "CENTER",
			xOffset = 2,
			yOffset = 1,
			font = "Homespun",
			fontSize = 10,
			fontOutline = "MONOCHROMEOUTLINE"
		}
	},
	minimap = {
		location = false,
		locationdigits = 1,
		hideincombat = false,
		fadeindelay = 5
	},
	nameplates = {
		cacheUnitClass = false,
		smoothBars = {
			enable = false,
			smoothSpeed = 0.3
		}
	},
	tooltip = {
		itemQualityBorderColor = false,
		progressInfo  = false,
		tooltipIcon = {
			enable = false,
			tooltipIconSpells  = true,
			tooltipIconItems  = true,
			tooltipIconAchievements  = true
		}
	},
	unitframe = {
		units = {
			target = {
				classicon = {
					enable = false,
					size = 28,
					xOffset = -58,
					yOffset = -22
				}
			}
		}
	},
	watchframe = {
		enable = false,
		city = "COLLAPSED",
		pvp = "HIDDEN",
		arena = "HIDDEN",
		party = "COLLAPSED",
		raid = "COLLAPSED"
	},
	raidmarkerbar = {
		["enable"] = false,
		["backdrop"] = true,
		["transparentButtons"] = false,
		["transparentBackdrop"] = false,
		["buttonSize"] = 22,
		["spacing"] = 1,
		["orientation"] = "HORIZONTAL",
		["reverse"] = false,
		["visibility"] = "DEFAULT",
		["customVisibility"] = "[noexists, nogroup] hide;show"
	}
}
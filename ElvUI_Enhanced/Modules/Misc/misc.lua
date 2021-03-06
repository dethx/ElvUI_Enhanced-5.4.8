local E, L, V, P, G = unpack(ElvUI)
local M = E:NewModule("Enhanced_Misc", "AceHook-3.0", "AceEvent-3.0")

E.Enhanced_Misc = M

local CancelDuel = CancelDuel
local IsInInstance = IsInInstance
local RepopMe = RepopMe

function M:PLAYER_DEAD()
	local inInstance, instanceType = IsInInstance()
	if inInstance and (instanceType == "pvp") then
		local soulstone = GetSpellInfo(20707)
		if E.myclass ~= "SHAMAN" and not (soulstone and UnitBuff("player", soulstone)) then
			RepopMe()
		end
	end
end

function M:AutoRelease()
	if E.db.enhanced.general.pvpAutoRelease then
		self:RegisterEvent("PLAYER_DEAD")
	else
		self:UnregisterEvent("PLAYER_DEAD")
	end
end

function M:DUEL_REQUESTED(_, name)
	StaticPopup_Hide("DUEL_REQUESTED")
	CancelDuel()
	E:Print(L["Declined duel request from "]..name..".")
end

function M:DeclineDuel()
	if E.db.enhanced.general.declineduel then
		self:RegisterEvent("DUEL_REQUESTED")
	else
		self:UnregisterEvent("DUEL_REQUESTED")
	end
end

function M:PET_BATTLE_PVP_DUEL_REQUESTED(_, name)
	StaticPopup_Hide("PET_BATTLE_PVP_DUEL_REQUESTED")
	C_PetBattles.CancelPVPDuel()
	E:Print(L["Declined pet duel request from "]..name..".")
end

function M:DeclinePetDuel()
	if E.db.enhanced.general.declinepetduel then
		self:RegisterEvent("PET_BATTLE_PVP_DUEL_REQUESTED")
	else
		self:UnregisterEvent("PET_BATTLE_PVP_DUEL_REQUESTED")
	end
end

function M:HideZone()
	if E.db.enhanced.general.hideZoneText then
		ZoneTextFrame:UnregisterAllEvents()
	else
		ZoneTextFrame:RegisterEvent("ZONE_CHANGED_NEW_AREA")
		ZoneTextFrame:RegisterEvent("ZONE_CHANGED_INDOORS")
		ZoneTextFrame:RegisterEvent("ZONE_CHANGED")
	end
end

function M:Initialize()
	self:AutoRelease()
	self:HideZone()
	self:DeclineDuel()
	self:DeclinePetDuel()
	self:QuestItemLevel()
	self:LoadQuestReward()
	self:WatchedFaction()
	self:LoadMoverTransparancy()
	self:QuestLevelToggle()
	self:BuyStackToggle()
	self:MerchantItemLevel()
end

local function InitializeCallback()
	M:Initialize()
end

E:RegisterModule(M:GetName(), InitializeCallback)
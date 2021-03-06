local E, L, V, P, G = unpack(ElvUI)
local AB = E:GetModule("ActionBars")

local _G = _G
local unpack = unpack

local GetPetActionInfo = GetPetActionInfo
local PetHasActionBar = PetHasActionBar
local hooksecurefunc = hooksecurefunc

local function UpdatePet(event, unit)
	if ((event == "UNIT_FLAGS" or event == "UNIT_AURA") and unit ~= "pet") then return end
	if (event == "UNIT_PET" and unit ~= "player") then return end

	for i = 1, NUM_PET_ACTION_SLOTS do
		local buttonName = "PetActionButton"..i
		local button = _G[buttonName]
		local shine = _G[buttonName.."Shine"]
		local _, _, texture, _, isActive, _, autoCastEnabled = GetPetActionInfo(i)

		local color
		if isActive then
			if E.db.enhanced.actionbars.pet.checkedBorder then
				color = E.db.enhanced.actionbars.pet.checkedBorderColor
				button.backdrop:SetBackdropBorderColor(color.r, color.g, color.b)
				button:SetChecked(false)
			else
				button.backdrop:SetBackdropBorderColor(unpack(E.media.bordercolor))
				button:SetChecked(true)
			end
		elseif autoCastEnabled then
			if E.db.enhanced.actionbars.pet.autoCastBorder then
				color = E.db.enhanced.actionbars.pet.autoCastBorderColor
				button.backdrop:SetBackdropBorderColor(color.r, color.g, color.b)
				shine:Hide()
			else
				button.backdrop:SetBackdropBorderColor(unpack(E.media.bordercolor))
				shine:Show()
			end
		else
			button.backdrop:SetBackdropBorderColor(unpack(E.media.bordercolor))
		end

		if not PetHasActionBar() and texture then
			button.backdrop:SetBackdropBorderColor(unpack(E.media.bordercolor))
		end
	end
end
hooksecurefunc(AB, "UpdatePet", UpdatePet)
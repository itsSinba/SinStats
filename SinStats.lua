-----------------------------------
-- SinStats [BCC] by Sinba-Pagle --
-----------------------------------
local AddName, AddonTable = ...
local L = AddonTable.L
local addVer = GetAddOnMetadata(AddName, "Version")

------------------------------
-- Initializing Multi stats --
------------------------------
--mage
local firepowerMod = 0
local apFire = 0
local pierceMod = 0
local apFrost = 0
local combustionCount = 0
local arcaneMod = 0
local aiMod = 0
local arcanePower = 0
local playFire = 0
local arcticWind = 0
local maxmana = 0
local impSorch = 0
local wintersChill = 0
local arcaneFocus = ""
local arcanePotencyTalent = 0
-- paladin
local bowisdom = 0
local judgeCrusader = 0
local crusaderTalent = 0
local crusader
--local wisTalent = 0
local sancAura = 0
local vengStacks = 0
local vengeance = 0
local vengBuff = 0
-- shaman
local emberstorm = 0
local totemMana = 0
local stormStrike = 0
local tidalMastery = 0
local callofThunder = ""
--local tideTotem = 0
local spiritualHealing = 0
local springTotem = 0
local purification = 0
local natGuidance = 0
local elePrecision = 0
local unrStorm = 0
local natBlessing = 0
local eleMastery = 0
local totemWrath = 0
local manaTide = 0
local totemTalent = 0
-- warlock
local felEnergy = 0 
local dsImp = 0
local dsSuc = 0
local shadowMastery = 0
local silithyst = 0
local shadowDmg = 0
local curseElements = 0
local Suppression = ""
local devastation = 0
-- warrior
local bloodFrenzy = 0
-- rogue
local hemoDmg = 0
-- priest
local shadowFormDmg = 0
local DarkNessTalent = 0
local epiphany = 0
local innerFocus = 0
local misery = 0
-- druid
local balancePower = 0
local DreamState = 0
local giftNature = 0
local innervate
local insectSwarm = 0
local survFittest = 0
-- hunter
local pouchCounter = 0
local huntersMark = 0
local scorpidSting = 0
local hmIncrements = 0
--local hmCap = 0
local savedHM = 0
local hmInc = 0
-- other
local className, classFilename, classId = UnitClass("player") 
local playerLevel = UnitLevel("player")
local _, raceFile, _ = UnitRace("player")
local headerHeight = 15
local weaponTag = "Weapon"
local headerLoc = "Weapon Skills"
local defenseLoc = DEFENSE		
local spellSuccess = false
local regenBase = 0
local warchief = 0
local regenCasting = 0
local adjustedRegen = 0
local tempRegen = 0
local manaUsed = 0
local oldMana = 0
local ManaUpdate = false
local speedColor = ""
local hitMod = 0
local mp5 = 0
local notcasting = 0
local zoneBuff = 0
local aspectViper = 0
local secondWind = 0   
local hasteMeleeMod = 0
local hasteRangedMod = 0
local hasteSpellMod = 0
local meleeHaste = 100	
local rangedHaste = 100
local castHaste = 100
local hasteHead = 0
local hasteLegs = 0
local hasteHands = 0
local serpentSwift = 0
local inspiSpellHit = 0
local tierPieces = 0
local zgPieces = 0
local inspiringPresence = 0
local heroicPresence = 0
local dwarfRacial = 0
local defenseRating = 0
local shadowVuln = 0
local targetGUID = 0
local huntersMark = 0
local debuffCount = 0
local baseDefense = 0
local playerGUID = UnitGUID("player")


if (GetLocale() == "frFR") then
	headerLoc = "Compétences d’armes"
	weaponTag = "Arme"
	defenseLoc = DEFENSE	
elseif (GetLocale() == "esES") then
	weaponTag = "Arma"
	headerLoc = "Habilidades con armas"
	defenseLoc = DEFENSE	
elseif (GetLocale() == "deDE") then
	weaponTag = "Waffe"
	headerLoc = "Waffenfertigkeiten"
	defenseLoc = DEFENSE		
elseif (GetLocale() == "itIT") then
	weaponTag = "Arma"
	headerLoc = "Abilità con le armi"
	defenseLoc = DEFENSE		
elseif (GetLocale() == "ruRU") then
	weaponTag = "Oружие"
	headerLoc = "Оружейные навыки"
	defenseLoc = DEFENSE		
elseif (GetLocale() == "ptBR") then
	weaponTag = "Arma"
	headerLoc = "Weapon Skills"
	defenseLoc = DEFENSE	
elseif (GetLocale() == "zhCN") then
	headerLoc = "武器技能"
	defenseLoc = DEFENSE	
elseif (GetLocale() == "koKR") then
	headerLoc = "무기 기술"
	defenseLoc = "방어"	
elseif (GetLocale() == "zhTW") then
	headerLoc = "武器技能"
	defenseLoc = DEFENSE		
else 
	weaponTag = "Weapon"
	headerLoc = "Weapon Skills"
	defenseLoc = DEFENSE	
end

--------------------------
-- Draenei racial check --
--------------------------
if (raceFile == "Draenei" and classFilename == "MAGE") or (raceFile == "Draenei" and classFilename == "PRIEST") or (raceFile == "Draenei" and classFilename == "SHAMAN") then
	inspiSpellHit = 1
end

------------------------
-- Dwarf racial check --
------------------------
if (raceFile == "Dwarf") then
	dwarfRacial = true
end


AddonTable.DisplayOrder = {
	{ hud="AP", init=true, grp=1, text=L["APLong"], textShort=L["APShort"], spell=29834, },	
	{ hud="RAP", init=false, grp=3, text=L["RAPLong"], textShort=L["RAPShort"], spell=34497, },	
	{ hud="DMG", init=false, grp=1, text=L["DMGLong"], textShort=L["DMGShort"], spell=29801, },
	{ hud="mDPS", init=false, grp=1, text=L["DPSLong"], textShort=L["DPSShort"], spell=29623, },	
	{ hud="RDMG", init=false, grp=3, text=L["rDMGLong"], textShort=L["rDMGShort"], spell=34482, },
	{ hud="rDPS", init=true, grp=3, text=L["rDPSLong"], textShort=L["rDPSShort"], spell=36554, },	
	{ hud="Fire", init=false, grp=4, text=L["FireLong"], textShort=L["FireShort"], spell=34293, },	
	{ hud="Frost", init=true, grp=4, text=L["FrostLong"], textShort=L["FrostShort"], spell=31674, },	
	{ hud="Arcane", init=false, grp=4, text=L["ArcaneLong"], textShort=L["ArcaneShort"], spell=31571, },
	{ hud="Shadow", init=true, grp=4, text=L["ShadowLong"], textShort=L["ShadowShort"], spell=30293, },		
	{ hud="Nature", init=false, grp=4, text=L["NatureLong"], textShort=L["NatureShort"], spell=16578, },
	{ hud="Healing", init=true, grp=4, text=L["HealingLong"], textShort=L["HealingShort"], spell=26022, },
	{ hud="Holy", init=false, grp=4, text=L["HolyLong"], textShort=L["HolyShort"], spell=31837, },			
	{ hud="Crit", init=false, grp=1, text=L["CritLong"], textShort=L["CritShort"], spell=29859, }, 
	{ hud="CritBoss", init=false, grp=1, text=L["CritBossLong"], textShort=L["CritBossShort"], spell=27140, }, 	
	{ hud="CritCap", init=true, grp=1, text=L["CritCapLong"], textShort=L["CritCapShort"], spell=30819, }, 	
	{ hud="RangedCrit", init=false, grp=3, text=L["rCritLong"], textShort=L["rCritShort"], spell=34506, },
	{ hud="RangedCritBoss", init=true, grp=3, text=L["rCritBossLong"], textShort=L["rCritBossShort"], spell=33851, },
	{ hud="SpellCrit", init=true, grp=4, text=L["SpellCritLong"], textShort=L["SpellCritShort"], spell=30288, },
	{ hud="SpellCritBoss", init=false, grp=4, text=L["sCritBossLong"], textShort=L["sCritBossShort"], spell=17917, },	
	{ hud="Hit", init=true, grp=1, text=L["HitLong"], textShort=L["HitShort"], spell=31241, },
	{ hud="RangedHit", init=false, grp=3, text=L["rHitLong"], textShort=L["rHitShort"], spell=34485, },
	{ hud="SpellHit", init=false, grp=4, text=L["sHitLong"], textShort=L["sHitShort"], spell=34935, },	
	{ hud="HasteMelee", init=true, grp=1, text=L["HasteLong"], textShort=L["HasteShort"], spell=31244, },
	{ hud="weaponSpeed", init=false, grp=1, text=L["AsLong"], textShort=L["AsShort"], spell=30664, },
	{ hud="HasteRanged", init=false, grp=3, text=L["rHasteLong"], textShort=L["rHASShort"], spell=23989, },	
	{ hud="rangedSpeed", init=false, grp=3, text=L["rAtkSpeedLong"], textShort=L["rAtkSpeedShort"], spell=34948, },	
	{ hud="HasteCaster", init=false, grp=4, text=L["SpellHasteLong"], textShort=L["SpellHasteShort"], spell=30060, },	
	{ hud="ArmorPenetration", init=true, grp=1, text=L["ArmPenLong"], textShort=L["ArmPenShort"], spell=26866, },	
	{ hud="Expertise", init=true, grp=1, text=L["ExpLong"], textShort=L["ExpShort"], spell=30920, },			
	{ hud="MeleeMiss", init=false, grp=1, text=L["MissLong"], textShort=L["MissShort"], spell=31858, },
	{ hud="MeleeBoss", init=false, grp=1, text=L["BossMissLong"], textShort=L["BossMissShort"], spell=1329, },
	{ hud="Avoidance", init=true, grp=2, text=L["AvoidLong"], textShort=L["AvoidShort"], spell=31223, },	
	{ hud="Crushing", init=false, grp=2, text=L["CrushLong"], textShort=L["CrushShort"], spell=32175, },
	{ hud="CritReceived", init=false, grp=2, text=L["GetCritLong"], textShort="CRIT-: ", spell=33856, },	
	{ hud="RangedMiss", init=false, grp=3, text=L["rMissLong"], textShort=L["rMissShort"], spell=34460, },
	{ hud="RangedBoss", init=false, grp=3, text=L["rMissBossLong"], textShort=L["rMissBossShort"], spell=34491, },
	{ hud="SpellMiss", init=false, grp=4, text=L["SpellMissLong"], textShort=L["SpellMissShort"], spell=30108, },
	{ hud="SpellBoss", init=false, grp=4, text=L["SpellBossMissLong"], textShort=L["SpellBossMissShort"], spell=30706, },	
	{ hud="ManaRegen", init=false, grp=4, text=L["MP2Long"], textShort=L["MP2Short"], spell=31833, },
	{ hud="CastingRegen", init=false, grp=4, text=L["MP2CastingLong"], textShort=L["MP2CastingShort"], spell=34861, },
	{ hud="MP5", init=true, grp=4, text=L["MP5Long"], textShort=L["MP5Short"], spell=29064, },
	{ hud="MP5Casting", init=true, grp=4, text=L["MP5CastingLong"], textShort=L["MP5CastingShort"], spell=15017, },	
	{ hud="Resilience", init=false, grp=2, text=L["ResilLong"], textShort=L["ResilShort"], spell=29623, },		
	{ hud="Armor", init=false, grp=2, text=L["ArmorLong"], textShort=L["ArmorShort"], spell=29140, },	
	{ hud="DMGReduc", init=false, grp=2, text=L["MitigationLong"], textShort=L["MitigationShort"], spell=871, },
	{ hud="Defense", init=false, grp=2, text=L["DefenseLong"], textShort=L["DefenseShort"], spell=32700, },
	{ hud="Dodge", init=false, grp=2, text=L["DodgeLong"], textShort=L["DodgeShort"], spell=13981, },
	{ hud="Parry", init=false, grp=2, text=L["ParryLong"], textShort=L["ParryShort"], spell=3127, },
	{ hud="Block", init=false, grp=2, text=L["BlockLong"], textShort=L["BlockShort"], spell=2565, },
	{ hud="FireResist", init=false, grp=5, text=L["FireResLong"], textShort=L["FireResShort"], spell=18459, },
	{ hud="FrostResist", init=false, grp=5, text=L["FrostResLong"], textShort=L["FrostResShort"], spell=31667, },
	{ hud="ShadowResist", init=false, grp=5, text=L["ShadowResLong"], textShort=L["ShadowResShort"], spell=30283, },
    { hud="ArcaneResist", init=false, grp=5, text=L["ArcaneResLong"], textShort=L["ArcaneResShort"], spell=16850, },	
	{ hud="NatureResist", init=false, grp=5, text=L["NatureResLong"], textShort=L["NatureResShort"], spell=30675, },  	
	{ hud="Speed", init=true, grp=6, text=L["SpeedLong"], textShort=L["SpeedShort"], spell=31641, },
	{ hud="Durability", init=true, grp=6, text=L["DurabilityLong"], textShort=L["DurabilityShort"], spell=3100, },
	{ hud="BuffCounter", init=false, grp=6, text=L["BuffsLong"], textShort=L["BuffsShort"], spell=22888, },	
	{ hud="DebuffCounter", init=false, grp=6, text=L["DebuffsLong"], textShort=L["DebuffsShort"], spell=23154, },	
	{ hud="Lag", init=false, grp=6, text=L["PingLong"], textShort=L["PingShort"], spell=33592, },
	{ hud="FPS", init=false, grp=6, text=L["FPSLong"], textShort=L["FPSShort"], spell=19498, },	
	{ hud="Money", init=false, grp=6, text="", textShort="", spell=921, },	
	
}

----------------------
-- Initialize Icons --
----------------------
for i=1, #AddonTable.DisplayOrder do
	AddonTable.DisplayOrder[i].icon = "|T"..select(3, GetSpellInfo(AddonTable.DisplayOrder[i].spell))..":0|t"
end

--------------------------------
-- Event Update Function
--------------------------------
function AddonTable:RunAllEvents()
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UPDATE_INVENTORY_DURABILITY")
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_RESISTANCES")   
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_ATTACK_POWER")
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_RANGED_ATTACK_POWER")
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_DAMAGE")  
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_RANGEDDAMAGE")   
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_DEFENSE")  
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_STATS")       
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "UNIT_AURA") 
	SinStatsFrame:GetScript("OnEvent")(SinStatsFrame, "CHARACTER_POINTS_CHANGED")
end

----------------------------------
-- SavedVariable Initialisation --
----------------------------------
local function initSinStatsDB()
	if not SinStatsDB then
		SinStatsDB = {
			SinLockVar = false,
			SinHideVar = false,
			IconVar = true,
			StatFontSize = 15,
			OutlineKey = 1,
			OutlineText = "OUTLINE",
			TextIdentKey = 1,
			SinMinimap = false,
			SinAbrev = false,
			StyleKey = 1,
			GroupOrder = false,
			OrderKey = 1,			
			StatFonts = "Fonts/ARIALN.ttf",
			FontName = "Arial Narrow",
			Stats = {},
		}
	end	
	for i=1, #AddonTable.DisplayOrder do
		if SinStatsDB.Stats[AddonTable.DisplayOrder[i].hud] == nil then
			SinStatsDB.Stats[AddonTable.DisplayOrder[i].hud] = AddonTable.DisplayOrder[i].init
		end
	end
	if not SinStatsDB.StatFontSize then
		SinStatsDB.StatFontSize = 15
	end
	if not SinStatsDB.OutlineText then
		SinStatsDB.OutlineText = "OUTLINE"
	end
	if not SinStatsDB.StatFonts then
		SinStatsDB.StatFonts = "Fonts/ARIALN.ttf"
	end
	if not SinStatsDB.OutlineKey then
		SinStatsDB.OutlineKey = 1
	end
	if not SinStatsDB.TextIdentKey then
		SinStatsDB.TextIdentKey = 1
	end
	if not SinStatsDB.FontName then
		SinStatsDB.FontName = "Arial Narrow"
	end	
	if not SinStatsDB.SinAbrev then
		SinStatsDB.SinAbrev = false
	end			
	if not SinStatsDB.StyleKey then
		SinStatsDB.StyleKey = 1
	end		
	if not SinStatsDB.GroupOrder then
		SinStatsDB.GroupOrder = false
	end			
	if not SinStatsDB.OrderKey then
		SinStatsDB.OrderKey = 1
	end			
	if not SinStatsDB.minimap then
        SinStatsDB.minimap = {
            hide = false,
        }	
	end	

--------------------
-- Minimap Button --
--------------------	
local DBObject = LibStub("LibDataBroker-1.1"):NewDataObject("SinStats", {
	type = "data source",
	text = "SinStats",
	icon = "Interface\\Icons\\Ability_rogue_shadowstrikes",
	
	OnTooltipShow = function(tooltip)
		tooltip:SetText("|cff00f26dSinStats|r")
		tooltip:AddLine(L["MimimapTooltipLine1"], 1, 1, 1)
		tooltip:AddLine(L["MimimapTooltipLine2"], 1, 1, 1)
		tooltip:AddLine(L["MimimapTooltipLine3"], 1, 1, 1)
		tooltip:Show()
	end,
	
	OnClick = function(self, button, down) 
		if button == "LeftButton" then
			AddonTable:ToggleConfig()
		elseif button == "RightButton" then
			if IsShiftKeyDown() then
				AddonTable:ToggleLock()
			else
				AddonTable:ToggleEnable()
			end
		end			
		
	end,
})
AddonTable.sshMiniButton = LibStub("LibDBIcon-1.0")		
AddonTable.sshMiniButton:Register("SinStats", DBObject, SinStatsDB.minimap)	
 end

----------------------------
-- Local Helper Functions --
----------------------------
local function druidFormChk()
	if (classFilename == "DRUID") then
		local index = GetShapeshiftForm()
		if (index == 1) or (index == 3) then
			return true
		else
			return false
		end
	end
end

---------------------------
-- Stat update functions --
---------------------------
local StatsFontSize = 15
local function SetFont(self)
		self:SetFont("Fonts\\ARIALN.ttf", 16, SinStatsDB.OutlineText)
		self:SetFont(SinStatsDB.StatFonts, SinStatsDB.StatFontSize, SinStatsDB.OutlineText)
end
AddonTable.SetFont = SetFont

local function CreateStatDisplay(parent, name, id)
	local f = parent:CreateFontString("$parent"..name, "OVERLAY", "GameFontNormal")
	f:SetPoint("LEFT")
	f.ID = id
	SetFont(f)
	f:SetTextColor(1,1,1,1)
	parent.Stats[name] = f
	f:SetShown(SinStatsDB.Stats[name])
end

------------------------------
-- Creating the Stats Frame --
------------------------------
local f = CreateFrame("frame", "SinStatsFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
f:SetBackdrop({
    bgFile="Interface\\DialogFrame\\UI-DialogBox-Background",
    tile=1, tileSize=0, edgeSize=0,
})
f:SetBackdropColor(1,1,1,1)
f:SetWidth(200)
f:SetHeight(headerHeight)
f:SetPoint("CENTER",UIParent)
f:SetMovable(true)
f:SetUserPlaced(true)
f:SetClampedToScreen(false)
f:RegisterForDrag("LeftButton")
f:SetScript("OnDragStart", function(self) self:StartMoving() end)
f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
f:SetFrameStrata("BACKGROUND")
f.DragText = f:CreateFontString(nil, "OVERLAY");
f.DragText:SetFontObject("GameFontHighlight");
f.DragText:SetTextColor(1, 1, 1)
f.DragText:SetText("SinStats")
f.DragText:SetPoint("CENTER")

f.Stats = {}
function f:ResizeStats()
	StatsFontSize = SinStatsDB.StatFontSize
	for k, v in pairs(self.Stats) do
		SetFont(v)
	end
end

local function AnchorStat(stat, horizontal, first, last)
	stat:ClearAllPoints()
	if not first then
		if SinStatsDB.TextIdentKey == 1 then
			stat:SetPoint("TOPLEFT", 0, -headerHeight)
		elseif SinStatsDB.TextIdentKey == 2 then
			stat:SetPoint("TOPRIGHT", 0, -headerHeight)	
		end
	else
		if horizontal then
			stat:SetPoint("LEFT", last, "RIGHT", 7, 0)
		else
			if SinStatsDB.TextIdentKey == 1 then
				stat:SetPoint("TOPLEFT", last, "BOTTOMLEFT")
			elseif SinStatsDB.TextIdentKey == 2 then
				stat:SetPoint("TOPRIGHT", last, "BOTTOMRIGHT")
			end
		end				
	end
	return true, stat
end

local rowList = {}
function f:RedrawStats()
    local first, last
    local horizontal = SinStatsDB.SinDirection
    local rows = SinStatsDB.StatRows or 1
    table.wipe(rowList)
    if not SinStatsDB.GroupOrder then
        for i=1, #AddonTable.DisplayOrder do
            local k = AddonTable.DisplayOrder[i].hud
            local v = self.Stats[k]
            if v:IsShown() then
                if not horizontal or rows == 1 then
                    first, last = AnchorStat(v, horizontal, first, last)
                else        
                    tinsert(rowList, v)
                end
            end
        end
    else
        for i=1, #AddonTable.Groups do
            for n=1, #AddonTable.DisplayOrder do
                if AddonTable.DisplayOrder[n].grp == i then
                    local k = AddonTable.DisplayOrder[n].hud
                    local v = self.Stats[k]
                    if v:IsShown() then
                        if not horizontal or rows == 1 then
                            first, last = AnchorStat(v, horizontal, first, last)
                        else        
                            tinsert(rowList, v)
                        end
                    end
                end
            end
        end
    end
    if horizontal and rows > 1 then
        local totalRows = #rowList
        local maxOnRow = math.floor(totalRows / rows)
        local first, last
        for i=1, totalRows do
            if not first then
                AnchorStat(rowList[i], horizontal, first, last)
                first = rowList[i]
                last = first
            else
                rowList[i]:ClearAllPoints()
                if horizontal then 
                    rowList[i]:SetPoint("LEFT", last, "RIGHT", 7, 0)
                else
                    rowList[i]:SetPoint("TOPLEFT", last, "BOTTOMLEFT", 0, -3)
                end
--              AnchorStat(rowList[i], horizontal, first, last)
                last = rowList[i]
                horizontal = true
            end
            if mod(i, maxOnRow) == 0 then
                last = first
                first = rowList[i+1]
                horizontal = nil
            end
        end
    end
end

------------------
-- Live updates --
------------------
local updatespeed = 1.0
local TimeToNextUpdate = updatespeed

local function SetText(self, parent, text)
	local Icon = parent.AddIcons and AddonTable.DisplayOrder[self.ID].icon or ""
	if SinStatsDB.SinAbrev then
		if SinStatsDB.TextIdentKey == 1 then
			self:SetText(Icon..AddonTable.DisplayOrder[self.ID].textShort..text) 
		elseif SinStatsDB.TextIdentKey == 2 then
			self:SetText(AddonTable.DisplayOrder[self.ID].textShort..text..Icon) 
		end
		
	else 
		if SinStatsDB.TextIdentKey == 1 then
		self:SetText(Icon..AddonTable.DisplayOrder[self.ID].text..text)
		elseif SinStatsDB.TextIdentKey == 2 then
		self:SetText(AddonTable.DisplayOrder[self.ID].text..text..Icon)
		end
	end
end

--------------------------------------
------- Simple Stats Processing ------
--------------------------------------

local function ProcessSimpleStats(self)

local mhID = GetInventoryItemID("player", 16);	
local ohID = GetInventoryItemID("player", 17);  

-----------------Haste---------------
hasteMeleeMod = GetCombatRatingBonus(CR_HASTE_MELEE)
SetText(self.Stats.HasteMelee, self, meleeHaste + hasteHands + serpentSwift + ("%.1f"):format(hasteMeleeMod) .. "%")  
-------------------------------------

----------Armor Penetration----------
local armorPen = GetArmorPenetration()
SetText(self.Stats.ArmorPenetration, self, armorPen .. "%")
-------------------------------------

-------------Expertise---------------
local expertisePercent, offhandExpertisePercent = GetExpertisePercent()
if ohID and offhandExpertisePercent > 0 then
	offhandExpertisePercent = "/" .. offhandExpertisePercent
else 
	offhandExpertisePercent = ""
end
SetText(self.Stats.Expertise, self, expertisePercent .. offhandExpertisePercent .. "%")
-------------------------------------

-------------Resilience--------------
local Resilience = GetCombatRatingBonus(15)
local resiDamage = GetCombatRatingBonus(16)	
resiDamage = resiDamage + Resilience
SetText(self.Stats.Resilience, self, ("%.1f"):format(Resilience) .. "/" .. ("%.1f"):format(resiDamage) .. "%")
-------------------------------------

-------------Armor------------------
local base, effectiveArmor, armor, posBuff, negBuff = UnitArmor("player");
if negBuff < 0 then
	SetText(self.Stats.Armor, self, "|cffC41E3A" .. effectiveArmor .. "|r"); 
else
	SetText(self.Stats.Armor, self, effectiveArmor);
end
------------------------------------

-----------Mitigation---------------
local armorReduction = effectiveArmor/((85 * playerLevel) + 400);
armorReduction = 100 * (armorReduction/(armorReduction + 1));
if negBuff < 0 then
	SetText(self.Stats.DMGReduc, self, "|cffC41E3A" .. ("%.0f"):format(armorReduction) .. "%" .. "|r")  
else
	SetText(self.Stats.DMGReduc, self, ("%.0f"):format(armorReduction) .. "%")
end
------------------------------------   

-----------------Ranged Haste------------------------
hasteRangedMod = GetCombatRatingBonus(CR_HASTE_RANGED)
SetText(self.Stats.HasteRanged, self, rangedHaste + pouchCounter + hasteHands + serpentSwift + ("%.1f"):format(hasteRangedMod) .. "%") 
-----------------------------------------------------

--------------Ranged Attack Speed--------------------	
local speed, lowDmg, hiDmg, _, negBuff = UnitRangedDamage("player");
SetText(self.Stats.rangedSpeed, self,  ("%.1f"):format(speed)); 
------------------------------------------------------ 

------------------Ranged Damage---------------------------
hiDmg = hiDmg + (hiDmg * bloodFrenzy) + hemoDmg
if negBuff < 0 then
	SetText(self.Stats.RDMG, self, "|cffC41E3A" .. ("%.0f"):format(hiDmg) .. "|r");    
else
	SetText(self.Stats.RDMG, self,  ("%.0f"):format(hiDmg));
end
----------------------------------------------------------

-------------------------DPS--------------------------
local rangedDPS = ((lowDmg + hiDmg) / 2) / speed
if rangedDPS < 0 then
	rangedDPS = 0
end
if negBuff < 0 then		
	SetText(self.Stats.rDPS, self, "|cffC41E3A" .. ("%.1f"):format(rangedDPS) .. "|r");
else
	SetText(self.Stats.rDPS, self, ("%.1f"):format(rangedDPS));	
end
------------------------------------------------------

end

--------------------------------------
------- Melee Stats Processing -------
--------------------------------------
local function ProcessMeleeStats(self)

local targetLevel = playerLevel + 3
local targetLvlBase = playerLevel

if UnitCanAttack("player", "target") then
targetLevel = UnitLevel("target")
if targetLevel <= 0 then
	targetLevel = playerLevel + 3
end

targetLvlBase = UnitLevel("target")
if targetLvlBase == -1 then
	targetLvlBase = playerLevel + 3
elseif targetLvlBase == 0 then
	targetLvlLive = playerLevel
end	
end

local mhID = GetInventoryItemID("player", 16);	
local ohID = GetInventoryItemID("player", 17);  

-----------Attack Speed--------------
local mainSpeed, offSpeed = UnitAttackSpeed("player")
if offSpeed == nil then
	offSpeed = ""
else
	offSpeed = " / " .. ("%.1f"):format(offSpeed)
end
SetText(self.Stats.weaponSpeed, self, ("%.1f"):format(mainSpeed) .. offSpeed)
-------------------------------------

------------Melee Damage------------
local lowDmg, hiDmg, offlowDmg, offhiDmg, posBuff, negBuff, percentmod = UnitDamage("player");
local dmgeffect = hiDmg
dmgeffect = dmgeffect + (dmgeffect * bloodFrenzy) + hemoDmg

if negBuff < 0 then		
	SetText(self.Stats.DMG, self, "|cffC41E3A" .. ("%.0f"):format(dmgeffect) .. "|r");
else
	SetText(self.Stats.DMG, self, ("%.0f"):format(dmgeffect));	
end
------------------------------------

----------------DPS-----------------
--local lowDmg, hiDmg, _, _, _, negBuff, _ = UnitDamage("player");
local meleeDPS = ((lowDmg + dmgeffect) / 2) / mainSpeed
if negBuff < 0 then		
	SetText(self.Stats.mDPS, self, "|cffC41E3A" .. ("%.1f"):format(meleeDPS) .. "|r");
else
	SetText(self.Stats.mDPS, self, ("%.1f"):format(meleeDPS));	
end
------------------------------------

-------Melee Critical Strike--------
local critChance = GetCritChance("player")
if crusader then
	critChance = critChance + crusaderTalent
end
SetText(self.Stats.Crit, self, ("%.2f"):format(critChance) .. "%")

local levelDifference = 0
local critAura = 1.84

levelDifference = targetLevel - playerLevel
if levelDifference <= 0 then
	levelDifference = 0
	critAura = 0
end
critChance = critChance - levelDifference - critAura
if critChance < 0 then
	critChance = 0
end

SetText(self.Stats.CritBoss, self, ("%.2f"):format(critChance) .. "%")
------------------------------------

----------Melee Hit Chance----------
local hitRating = GetCombatRatingBonus(CR_HIT_MELEE)
if hitRating == nil then
	hitRating = 0
end
local hitChance = GetHitModifier("player")
if hitChance == nil then
	hitChance = 0
end

hitChance = hitChance + hitRating + heroicPresence
SetText(self.Stats.Hit, self, ("%.2f"):format(hitChance) .. "%")
-------------------------------------

---------Melee Miss Chance-----------
local meleeSameLevel = 0
local meleeBossLevel = 0
local mainBase, mainMod, offBase, offMod = UnitAttackBothHands("player")
local levelDefense = playerLevel * 5
local levelDiffDef = 0
levelDiffDef = targetLevel - playerLevel
local liveDefense = playerLevel * 5
local bossDefense = (playerLevel + levelDiffDef) * 5
local mWeaponSkill = (mainBase + mainMod)
	
-- local mWepSkill = mWeaponSkill
-- if mWeaponSkill < 350 then 
	-- mWepSkill = 350
-- end				

local meleeSkillDiff = liveDefense - mWeaponSkill
local bossSkillDiff = bossDefense - mWeaponSkill
local bossSkillMod = bossDefense - mWeaponSkill
local missMod = 0
local missModboss = 0	

missModboss = meleeBossLevel

if ohID then 
	_,_,_,_,_,itemType = GetItemInfo(ohID) 
end    

if (mhID and (ohID and itemType == weaponTag)) or (not mhID and (itemType == weaponTag)) then
	if (classFilename == "WARRIOR") or (classFilename == "ROGUE") or (classFilename == "HUNTER") then
		if meleeSkillDiff > 10 then
			meleeSameLevel = (26 + ((meleeSkillDiff - 10) * 0.4))
			meleeSameLevel = meleeSameLevel - hitChance
		elseif meleeSkillDiff <= 10 then
			meleeSameLevel = (24 + ((meleeSkillDiff) * 0.1))
			meleeSameLevel = meleeSameLevel - hitChance		
		end
		
		if bossSkillDiff > 10 then
			meleeBossLevel = (26 + ((bossSkillDiff - 10) * 0.4))
			meleeBossLevel = meleeBossLevel - hitChance
			missMod = (26 + ((bossSkillMod - 10) * 0.4))
			missMod = missMod - hitChance
		elseif bossSkillDiff <= 10 then
			meleeBossLevel = (24 + ((bossSkillDiff) * 0.1))
			meleeBossLevel = meleeBossLevel - hitChance   	
			missMod = (26 + ((bossSkillMod - 10) * 0.4))
			missMod = missMod - hitChance				
		end
	end	
		
elseif (mhID and (ohID and itemType ~= weaponTag)) or (not mhID and (itemType ~= weaponTag)) or (mhID and not ohID) or (not mhID and not ohID) then
	if druidFormChk() then
		meleeSameLevel = 5 - hitChance
		meleeBossLevel = 9 - hitChance
	else
		if meleeSkillDiff > 10 then
			meleeSameLevel = (7 + ((meleeSkillDiff - 10) * 0.4))
			meleeSameLevel = meleeSameLevel - hitChance
		elseif meleeSkillDiff <= 10 then
			meleeSameLevel = (5 + ((meleeSkillDiff) * 0.1))
			meleeSameLevel = meleeSameLevel - hitChance		
		end

		if bossSkillDiff > 10 then
			meleeBossLevel = (7 + ((bossSkillDiff - 10) * 0.4))
			meleeBossLevel = meleeBossLevel - hitChance  
			missMod = (7 + ((bossSkillMod - 10) * 0.4))
			missMod = missMod - hitChance					
		elseif bossSkillDiff <= 10 then
			meleeBossLevel = (5 + ((bossSkillDiff) * 0.1))
			meleeBossLevel = meleeBossLevel - hitChance   	
			missMod = (5 + ((bossSkillMod - 10) * 0.1))
			missMod = missMod - hitChance					
		end		
	end	
	
end

if meleeSameLevel < 0 then
	meleeSameLevel = 0
elseif meleeSameLevel > 100 then
	meleeSameLevel = 100
end
if meleeBossLevel < 0 then
	meleeBossLevel = 0
elseif meleeBossLevel > 100 then
	meleeBossLevel = 100
end
SetText(self.Stats.MeleeMiss, self, ("%.1f"):format(meleeSameLevel) .. "%");
SetText(self.Stats.MeleeBoss, self, ("%.1f"):format(meleeBossLevel) .. "%");
-------------------------------------

---------Melee Critical Cap----------
local mWepSkill = mWeaponSkill
-- if mWepSkill < 350 then 
	-- mWepSkill = 350
-- end	

if ohID and itemType == weaponTag then 
	mWeaponSkill = math.min((mainBase + mainMod), (offBase + offMod)) 
	
end	

local skillDiff = 365 - mWeaponSkill
local critSupp = 4.8	
local dodgeBoss = 5 + (skillDiff * 0.1)
local glancingBoss = 40	
local extraWeaponSkill = mWeaponSkill - (playerLevel * 5)
local mcritCap = 100 - missMod - dodgeBoss - glancingBoss + critSupp + (extraWeaponSkill * 0.04)

if critChance > mcritCap then
	critCapColor = "|cffC41E3A"
elseif critChance == mcritCap then
	critCapColor = "|cffFF7C0A"
else
	critCapColor = "|cff00f26d"
end

if mcritCap > 100 then
	mcritCap = 100
end

SetText(self.Stats.CritCap, self, critCapColor .. ("%.1f"):format(mcritCap) .. "%" .. "|r")	
-------------------------------------

---------------Dodge-----------------
local dodgeChance = GetDodgeChance("player")
SetText(self.Stats.Dodge, self, ("%.2f"):format(dodgeChance) .. "%")
-------------------------------------     

--------------Parry------------------
local parryChance = GetParryChance("player")
SetText(self.Stats.Parry, self, ("%.2f"):format(parryChance) .. "%")
-------------------------------------

--------------Block------------------
local blockChance = GetBlockChance("player")
local blockValue = GetCombatRatingBonus(CR_BLOCK)
blockChance = blockChance + blockValue
SetText(self.Stats.Block, self, ("%.2f"):format(blockChance) .. "%")
-------------------------------------

------------ Avoidance --------------
local avoidColor = ""
local crushColor = ""
local DiffLevel = playerLevel - targetLevel
local defAdjust = (5 + (defenseRating - (playerLevel * 5)) * 0.04)
dodgeChance = dodgeChance
parryChance = parryChance
blockChance = blockChance
local avoid = (defAdjust + dodgeChance + parryChance + blockChance)
avoid = avoid - scorpidSting - insectSwarm

-- if targetLevel < playerLevel then
	-- avoid = avoid + 2.4 + (0.8 * DiffLevel)
-- elseif targetLevel == playerLevel then
	-- avoid = avoid + 2.4
-- elseif targetLevel == (playerLevel + 1) then
	-- avoid = avoid + 1.6
-- elseif targetLevel == (playerLevel + 2) then
	-- avoid = avoid + 0.8
-- elseif targetLevel > (playerLevel + 3) then
	-- avoid = avoid + 2.4 - (0.8 * math.abs(DiffLevel))
-- end

local crush = 102.4 - avoid

if avoid >= 102.4 then
	avoidColor = "|cff00f26d+"
else 
	avoidColor = ""
end
if crush <= 0 then
	crushColor = "|cff00f26d+"
else 
	crushColor = ""
end

SetText(self.Stats.Avoidance, self, avoidColor .. ("%.2f"):format(avoid) .. "%" .. "|r");
SetText(self.Stats.Crushing, self, ("%.2f"):format(crush) .. "%");
-------------------------------------

-------- Chance to be Crit ----------
local chanceGetCrit = 5
local getCritLevel = (targetLevel - playerLevel) * 0.2
local getCritDefense = (defenseRating - baseDefense) * 0.04
local getCritColor = ""
chanceGetCrit = chanceGetCrit + getCritLevel - getCritDefense - survFittest
if chanceGetCrit < 0 then
chanceGetCrit = 0
getCritColor = "|cff00f26d"
elseif chanceGetCrit < 1 then
getCritColor = "|cff00f26d"
elseif chanceGetCrit <= 1.5 then
getCritColor = "|cffFF7C0A"
else
getCritColor = "|cffC41E3A"
end
-- if chanceGetCrit < 0 and getCritLevel < 0 then
-- chanceGetCrit = 5
-- getCritColor = "|cffC41E3A"
-- end

SetText(self.Stats.CritReceived, self, getCritColor .. ("%.2f"):format(chanceGetCrit) .. "%" .. "|r");
-------------------------------------

end


---------------------------------------
------- Ranged Stats Processing -------
---------------------------------------
local function ProcessRangedStats(self)

local targetLevel = playerLevel + 3
local targetLvlBase = playerLevel
local savedGUID = UnitGUID("target")

if UnitCanAttack("player", "target") then
targetLevel = UnitLevel("target")
if targetLevel <= 0 then
	targetLevel = playerLevel + 3
end

targetLvlBase = UnitLevel("target")
if targetLvlBase == -1 then
	targetLvlBase = playerLevel + 3
elseif targetLvlBase == 0 then
	targetLvlBase = playerLevel
end	
end

----------------Ranged Attack Power----------------------
local base, posBuff, negBuff = UnitRangedAttackPower("player");
local targetLvl = UnitLevel("target")
local effectiveRanged = 0
local hmBuffColor = ""
effectiveRanged = base + posBuff + negBuff

if targetGUID == savedGUID then
	effectiveRanged = base + posBuff + negBuff + huntersMark + hmIncrements
end

if negBuff < 0 then	
	SetText(self.Stats.RAP, self, "|cffC41E3A" .. effectiveRanged .. "|r");
else
if (huntersMark > 0) and (targetGUID == savedGUID) then
	hmBuffColor = "|cff00f26d"
end
	SetText(self.Stats.RAP, self, hmBuffColor .. effectiveRanged .. "|r");		
end
----------------------------------------------------------

-------------Ranged Critical Chance----------------
local critRangedChance = GetRangedCritChance("player")
local gunEquipped = IsEquippedItemType("Guns")
if gunEquipped and dwarfRacial then
critRangedChance = critRangedChance + 1
end
SetText(self.Stats.RangedCrit, self, ("%.2f"):format(critRangedChance) .. "%")

local levelDifference = 0
local critAura = 1.84

levelDifference = targetLevel - playerLevel
if levelDifference <= 0 then
	levelDifference = 0
	critAura = 0
end
critRangedChance = critRangedChance - levelDifference - critAura
if critRangedChance < 0 then
	critRangedChance = 0
end
SetText(self.Stats.RangedCritBoss, self, ("%.2f"):format(critRangedChance) .. "%")
---------------------------------------------------

--------------Ranged Hit Chance---------------------------
local hitRangedRating = GetCombatRatingBonus(CR_HIT_RANGED)
if hitRangedRating == nil then
	hitRangedRating = 0
end
local hitRangedChance = GetHitModifier()
if hitRangedChance == nil then
	hitRangedChance = 0
end	
hitRangedChance = hitRangedChance + hitRangedRating + heroicPresence
SetText(self.Stats.RangedHit, self, ("%.2f"):format(hitRangedChance) .. "%"); 
-----------------------------------------------------------

------------------Ranged Miss Chance-----------------------
local rangedMissLevel = 0
local rangedMissBoss = 0
local rangedAttackBase, rangedAttackMod = UnitRangedAttack("player")
local levelDiffDef = targetLevel - playerLevel
local levelDefense = playerLevel * 5
local bossDefense = (playerLevel + levelDiffDef) * 5
local rWeaponSkill = (rangedAttackBase + rangedAttackMod)
local rangedSkillDiff = levelDefense - rWeaponSkill
local rbossSkillDiff = bossDefense - rWeaponSkill


if rangedSkillDiff > 10 then	
	rangedMissLevel = (7 + ((rangedSkillDiff - 10) * 0.4))
	rangedMissLevel = rangedMissLevel - hitRangedChance	
elseif rangedSkillDiff <= 10 then	
	rangedMissLevel = (5 + ((rangedSkillDiff) * 0.1))
	rangedMissLevel = rangedMissLevel - hitRangedChance
end

if rbossSkillDiff > 10 then
	rangedMissBoss = (7 + ((rbossSkillDiff - 10) * 0.4))
	rangedMissBoss = rangedMissBoss - hitRangedChance	
elseif rbossSkillDiff <= 10 then
	rangedMissBoss = (5 + ((rbossSkillDiff) * 0.1))
	rangedMissBoss = rangedMissBoss - hitRangedChance	
end 

if rangedMissLevel < 0 then
	rangedMissLevel = 0
elseif rangedMissLevel > 100 then
	rangedMissLevel = 100
end
SetText(self.Stats.RangedMiss, self, ("%.1f"):format(rangedMissLevel) .. "%");	

if rangedMissBoss < 0 then
	rangedMissBoss = 0
elseif rangedMissBoss > 100 then
	rangedMissBoss = 100
end
SetText(self.Stats.RangedBoss, self, ("%.1f"):format(rangedMissBoss) .. "%|r");	
------------------------------------------------------------

end


--------------------------------------
------- Spell Stats Processing -------
--------------------------------------
local function ProcessSpellStats(self)

local _, stat, _, _ = UnitStat("player", 4);	
local targetLevel = playerLevel + 3

if UnitCanAttack("player", "target") then
targetLevel = UnitLevel("target")
if targetLevel <= 0 then
	targetLevel = playerLevel + 3
end
end

local deBuffColor = ""

-----------Spell Critical Chance------------------
local critSpellChance = 0
local holySchool = GetSpellCritChance(2)
local fireSchool = GetSpellCritChance(3)
local natureSchool = GetSpellCritChance(4)
local frostSchool = GetSpellCritChance(5)
local shadowSchool = GetSpellCritChance(6)
local arcaneSchool = GetSpellCritChance(7)
local wintersChillEffect = ""

spellCritTable = {holySchool, fireSchool, natureSchool, frostSchool, shadowSchool, arcaneSchool}
table.sort(spellCritTable)
critSpellChance = spellCritTable[#spellCritTable]	
critSpellChance = critSpellChance + combustionCount + arcaneMod + eleMastery + tidalMastery + devastation + arcanePotency
if (wintersChill > 0) then
	if wintersChill ~= 0 then 
		wintersChillEffect = "|cff3FC7EB +" .. wintersChill .. "|r"
	end
end
if crusader then
	critSpellChance = critSpellChance + crusaderTalent
end
SetText(self.Stats.SpellCrit, self, ("%.2f"):format(critSpellChance) .. "%" .. callofThunder .. wintersChillEffect)

local levelDifference = 0
local critAura = 1.84

levelDifference = targetLevel - playerLevel
if levelDifference <= 0 then
	levelDifference = 0
	critAura = 0
end
critSpellChance = critSpellChance - levelDifference - critAura
if critSpellChance < 0 then
	critSpellChance = 0
end
SetText(self.Stats.SpellCritBoss, self, ("%.2f"):format(critSpellChance) .. "%" .. callofThunder .. wintersChillEffect)
--------------------------------------------------

-----------------Haste-------------------------------
hasteSpellMod = GetCombatRatingBonus(CR_HASTE_SPELL)
SetText(self.Stats.HasteCaster, self, castHaste + ("%.1f"):format(hasteSpellMod) .. "%") 
-----------------------------------------------------

------------------Mana Regen-------------------------
notcasting = notcasting
tempRegen = 0
local regenBase, regenCasting = GetManaRegen()
local tierBonus = 0
local zgBonus = 0 

regenBase = regenBase * 2
regenCasting = (regenCasting * 2)

if regenBase == regenCasting then
	if notcasting then
		regenBase = notcasting
	end
else
	notcasting = regenBase
end

if tierPieces >= 3 then
	tierBonus = 8
end
if zgPieces >= 2 then
	zgBonus = 1.6
end

tempRegen = ((stat * DreamState) * 0.4) + felEnergy + springTotem + (epiphany * 0.4) + aspectViper + secondWind + manaTide + tierBonus + zgBonus + warchief

if innervate then
	regenCasting = regenBase
	regenBase = (regenBase * 4)
end		

regenCasting = regenCasting + tempRegen + (stat * (unrStorm/100) * 0.4)
regenBase = regenBase + (stat * (unrStorm/100) * 0.4) + springTotem + felEnergy + ((stat * DreamState) * 0.4) + evoc + (epiphany * 0.4) + aspectViper + secondWind + manaTide + tierPieces + zgBonus + warchief

SetText(self.Stats.ManaRegen, self, ("%.1f"):format(regenBase))
SetText(self.Stats.CastingRegen, self, ("%.1f"):format(regenCasting))
SetText(self.Stats.MP5, self, format("%.1f", (regenBase / 2) * 5))
SetText(self.Stats.MP5Casting, self, format("%.1f", (regenCasting / 2) * 5))
--------------------------------------------------------

--------------------Spell Hit Chance--------------------
local hitSpellChance = GetCombatRatingBonus(CR_HIT_SPELL)

if hitSpellChance == nil then
	hitSpellChance = 0
end
hitSpellChance = hitSpellChance + hitMod + elePrecision + natGuidance + balancePower + totemWrath + inspiSpellHit + inspiringPresence
SetText(self.Stats.SpellHit, self, ("%.2f"):format(hitSpellChance) .. "%" .. Suppression .. arcaneFocus);  
---------------------------------------------------------

-------------------Spell Miss Chance---------------------
local spellSameLevel = 3
local spellBossLevel = 16
spellSameLevel = (spellSameLevel - hitSpellChance)
spellBossLevel = (spellBossLevel - hitSpellChance)
if spellSameLevel < 0 then
	spellSameLevel = 0
elseif spellSameLevel > 100 then
	spellSameLevel = 100
end
if spellBossLevel < 0 then
	spellBossLevel = 0
elseif spellBossLevel > 100 then
	spellBossLevel = 100
end
SetText(self.Stats.SpellMiss, self, ("%.1f"):format(spellSameLevel) .. "%");
SetText(self.Stats.SpellBoss, self, ("%.1f"):format(spellBossLevel) .. "%");
---------------------------------------------------------

end

local function ProcessSpellPower(self)

local _, stat, _, _ = UnitStat("player", 4);	
local targetLevel = playerLevel + 3
if UnitCanAttack("player", "target") then
targetLevel = UnitLevel("target")
if targetLevel <= 0 then
	targetLevel = playerLevel + 3
end
end

local deBuffColor = ""

------------------Healing Spell Power----------------
local SinHealSpell = GetSpellBonusHealing();
stat = stat * natBlessing
SinHealSpell = (SinHealSpell + (SinHealSpell * spiritualHealing) + (SinHealSpell * giftNature) + (SinHealSpell * purification) + stat)
SetText(self.Stats.Healing, self, ("%.0f"):format(SinHealSpell));  
-----------------------------------------------------

-------------------Holy Spell Power------------------
local SinHolySpell = GetSpellBonusDamage(2);
SinHolySpell = (SinHolySpell + (SinHolySpell * sancAura) + (SinHolySpell * vengBuff) + (SinHolySpell * zoneBuff))
--SetText(self.Stats.Holy, self, ("%.0f"):format(SinHolySpell + (SinHolySpell * vengeance))); 
SinHolySpell = SinHolySpell + (SinHolySpell * misery) + judgeCrusader
SetText(self.Stats.Holy, self, ("%.0f"):format(SinHolySpell)); 
-----------------------------------------------------

-------------------Nature Spell Power----------------
local SinNatureSpell = GetSpellBonusDamage(4);
SinNatureSpell =  (SinNatureSpell + stat) + (SinNatureSpell * zoneBuff)
SinNatureSpell = SinNatureSpell + (SinNatureSpell * misery) + (SinNatureSpell * stormStrike)
SetText(self.Stats.Nature, self, ("%.0f"):format(SinNatureSpell)); 
-----------------------------------------------------

-------------------Shadow Spell Power-----------------
local SinShadowSpell = GetSpellBonusDamage(6);
SinShadowSpell = (SinShadowSpell + (SinShadowSpell * shadowMastery) + (SinShadowSpell * DarkNessTalent) + (SinShadowSpell * dsSuc) + (SinShadowSpell * zoneBuff))
SinShadowSpell = (SinShadowSpell + (SinShadowSpell * shadowFormDmg))
SinShadowSpell = SinShadowSpell + (SinShadowSpell * misery) + (SinShadowSpell * shadowVuln) + (SinShadowSpell * shadowDmg) + (SinShadowSpell * curseElements)
SetText(self.Stats.Shadow, self, deBuffColor .. ("%.0f"):format(SinShadowSpell)); 
------------------------------------------------------       

--------------------Fire Spell Power-------------------
local SinFireSpell = GetSpellBonusDamage(3);    
SinFireSpell = (SinFireSpell + (SinFireSpell * firepowerMod) + (SinFireSpell * aiMod) + (SinFireSpell * zoneBuff) + (SinFireSpell * emberstorm) + (SinFireSpell * dsImp) + (SinFireSpell * playFire) + stat)
SinFireSpell = SinFireSpell + (SinFireSpell * arcanePower)
SinFireSpell = SinFireSpell + (SinFireSpell * misery) + (SinFireSpell * curseElements) + (SinFireSpell * impSorch)
SetText(self.Stats.Fire, self, ("%.0f"):format(SinFireSpell));  
-------------------------------------------------------    

--------------------Frost Spell Power-------------------
local SinFrostSpell = GetSpellBonusDamage(5);               
SinFrostSpell = (SinFrostSpell + (SinFrostSpell * pierceMod) + (SinFrostSpell * aiMod) + (SinFrostSpell * zoneBuff) + (SinFrostSpell * playFire) + (SinFrostSpell * arcticWind) + stat)         
SinFrostSpell = (SinFrostSpell + (SinFrostSpell * arcanePower))
SinFrostSpell = SinFrostSpell + (SinFrostSpell * misery) + (SinFrostSpell * curseElements)
SetText(self.Stats.Frost, self, ("%.0f"):format(SinFrostSpell));   
--------------------------------------------------------

---------------------Arcane Spell Power---------------------
local SinArcaneSpell = GetSpellBonusDamage(7);
SinArcaneSpell = (SinArcaneSpell + (SinArcaneSpell * aiMod) + (SinArcaneSpell * arcanePower) + (SinArcaneSpell * playFire) + (SinArcaneSpell * zoneBuff))
SinArcaneSpell = SinArcaneSpell + (SinArcaneSpell * misery) + (SinArcaneSpell * curseElements)
SetText(self.Stats.Arcane, self, ("%.0f"):format(SinArcaneSpell));  
------------------------------------------------------------ 

end



--------------------------------------
------- Other Stats Processing -------
--------------------------------------
local function ProcessOtherStats(self)

-----------------------Speed-------------------------------
local fullSpeed = GetUnitSpeed("player") / 7 * 100
if fullSpeed == 0 or fullSpeed == 100 then
	speedColor = ""
elseif fullSpeed < 100 then
	speedColor = "|cffC41E3A"
elseif fullSpeed > 100 then
	speedColor = "|cff00f26d"
end

SetText(self.Stats.Speed, self, speedColor .. string.format("%d%%", ("%.0f"):format(fullSpeed)))
-----------------------------------------------------------

-----------------------FPS----------------------------------
local framerate = GetFramerate()
if framerate <= 30 then
	SetText(self.Stats.FPS, self, "|cffC41E3A" .. floor(framerate) .. "|r")
elseif framerate > 30 and framerate < 50 then
	SetText(self.Stats.FPS, self, "|cffFF7C0A" .. floor(framerate) .. "|r")
elseif framerate >= 50 then
	SetText(self.Stats.FPS, self, "|cff00f26d" .. floor(framerate) .. "|r")
end
------------------------------------------------------------

------------------------Latency-----------------------------
local _, _, _, lagWorld = GetNetStats();
if lagWorld <= 90 then
	SetText(self.Stats.Lag, self, "|cff00f26d" .. lagWorld .. " ms|r")
elseif lagWorld >= 90 and lagWorld < 200 then
	SetText(self.Stats.Lag, self, "|cffFF7C0A" .. lagWorld .. " ms|r")
elseif lagWorld >= 200 then
	SetText(self.Stats.Lag, self, "|cffC41E3A" .. lagWorld .. " ms|r")
end	
------------------------------------------------------------

------------------------Gold-----------------------------
local money = GetMoney()
local formattedMoney = (GetCoinTextureString(money))
SetText(self.Stats.Money, self, formattedMoney)
------------------------------------------------------------

SetText(self.Stats.DebuffCounter, self, (debuffCount)) 

end

local function OnUpdate(self, elapsed)
TimeToNextUpdate = TimeToNextUpdate - elapsed
if TimeToNextUpdate > 0 then return end
TimeToNextUpdate = updatespeed

ProcessSimpleStats(self)
ProcessMeleeStats(self)
ProcessRangedStats(self)
ProcessSpellStats(self)
ProcessSpellPower(self)
ProcessOtherStats(self)	
	
end

--------------------
-- Talent Scanner --
--------------------
local function talentScan()
	local className, classFilename, classId = UnitClass("player")
	if (classFilename == "MAGE") then   
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 17)
			arcaneMod = points * 1
			aiMod = ((points * 1)/100)
		
	-- local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 12) 
		-- talentRegen = 0--((points * 10)/100)
		
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 3)
		hitMod = points

	local _, _, _, _, points, _, _, _ = GetTalentInfo(2, 13)
			playFire = (points * 1) / 100	
			
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 20)
		arcticWind = (points * 1) / 100
			
	local _, _, _, _, points, _, _, _ = GetTalentInfo(2, 17)      
		firepowerMod = ((points * 2)/100)
 
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 8)
		pierceMod = ((points * 2) / 100)
	
	-- local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 18)
		-- arcanePotencyTalent = (points * 10)
		
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 2)
		arcaneFocus = (points * 2)
		if arcaneFocus > 0 then
			arcaneFocus = "|cff8788EE +" .. (points * 2) .. "|r"
		else
			arcaneFocus = ""
		end		
		
	elseif (classFilename == "PRIEST") then

	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 5)
		hitMod = points * 2

	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 17)
		DarkNessTalent = ((points * 2) / 100)
   		
	local _, _, _, _, points, _, _, _ = GetTalentInfo(2, 16)   
		spiritualHealing = ((points * 2) / 100)
   
	-- local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 9) 
			-- talentRegen = 0 --((points * 10) / 100)

	elseif (classFilename == "PALADIN") then
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 4)
		crusaderTalent = (points * 1)

	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 16)
		vengeance = (points * 1)		

	elseif (classFilename == "WARLOCK") then
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 16)
		shadowMastery = ((points * 2)/100)
       
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 16)
		emberstorm = ((points * 2)/100)  
		
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 1)
		Suppression = (points * 2)
		if Suppression > 0 then
			Suppression = "|cff8788EE +" .. (points * 2) .. "|r"
		else
			Suppression = ""
		end
		
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 7)	
		devastation = (points * 1)
		
	elseif (classFilename == "HUNTER") then
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 20)
		serpentSwift = (points * 4)		

	elseif (classFilename == "SHAMAN") then
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 15)  
			purification = ((points * 2)/100)
   
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 6)  
			natGuidance = (points)
 
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 15)  
			elePrecision = (points * 2)

	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 14)  
			unrStorm = (points * 2)
 		
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 18)  
			natBlessing = ((points * 10) / 100)
 
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 10)
			totemTalent = ((points * 5) / 100)	
			
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 11)
			tidalMastery = (points * 1)
			
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 8)
			callofThunder = (points * 1)
		if callofThunder > 0 then
			callofThunder = "|cff0070DD +" .. (points * 1) .. "|r"
		else
			callofThunder = ""
		end			
		
	elseif (classFilename == "DRUID") then
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 16)  
			balancePower = (points * 2)
	
	local _, _, _, _, points, _, _, _ = GetTalentInfo(3, 12)  
			giftNature = ((points * 2) / 100)		

	local _, _, _, _, points, _, _, _ = GetTalentInfo(2, 16)  
			survFittest = (points * 1)				
			
	local _, _, _, _, points, _, _, _ = GetTalentInfo(1, 17)  
	    if points == 1 then
			DreamState = 0.04
		elseif points == 2 then
			DreamState = 0.07
		elseif points == 3 then
			DreamState = 0.1
	    end 			
	end 
end	
-------------------------------------------------------

local function SinLive(self)

	misery = 0
	huntersMark = 0
	scorpidSting = 0
	insectSwarm = 0
	shadowVuln = 0
	shadowDmg = 0
	curseElements = 0
	bloodFrenzy = 0
	judgeCrusader = 0
	crusader = false
	stormStrike = 0
	hemoDmg = 0
	impSorch = 0
	wintersChill = 0
	debuffCount = 0
	
	for i = 1, 40 do
	local _, _, dcount, _, _, _, _, _, _, debuffId = UnitDebuff("target", i)
		if not debuffId then break end
		
		targetGUID = UnitGUID("target") 
		
		if debuffId then
			debuffCount = i
		end
		
		debuffCount = debuffCount	
		
		if debuffId == 1130 then
			huntersMark = 20
		elseif debuffId == 14323 then
			huntersMark = 45
		elseif debuffId == 14324 then
			huntersMark = 75
		elseif debuffId == 14325 then
			huntersMark = 110
		end
		
		if debuffId == 3043 then
			scorpidSting = 5
		end
		
		if debuffId == 5570 or 
		debuffId == 24974 or 
		debuffId == 24975 or 
		debuffId == 24976 or 
		debuffId == 24977 then
			insectSwarm = 2
		end
		
		if debuffId == 33196 then
			misery = 0.01
		elseif debuffId == 33197 then
			misery = 0.02
		elseif debuffId == 33198 then
			misery = 0.03
		elseif debuffId == 33199 then
			misery = 0.04		
		elseif debuffId == 33200 then
			misery = 0.05
		end
		
		if debuffId == 15258 then
			shadowVuln = dcount
			shadowVuln = (shadowVuln * 2) / 100
		end	
		
		if debuffId == 17794 then
			shadowDmg = 0.04
		elseif debuffId == 17798 then
			shadowDmg = 0.08
		elseif debuffId == 17797 then
			shadowDmg = 0.12
		elseif debuffId == 17800 then
			shadowDmg = 0.2
		end
		
		if debuffId == 1490 then
			curseElements = 0.06
		elseif debuffId == 11721 then
			curseElements = 0.08
		elseif debuffId == 11722 or debuffId == 27228 then 
			curseElements = 0.10
		end
		
		if debuffId == 30069 then
			bloodFrenzy = 0.02
		elseif debuffId == 30070 then
			bloodFrenzy = 0.04
		end
		
		if debuffId == 27159 then
			judgeCrusader = 219
			if crusaderTalent > 0 then
				crusader = true
			end
		end
		
		if debuffId == 17364 then
			stormStrike = 0.2
		end
		
		if debuffId == 16511 then
			hemoDmg = 13
		elseif debuffId == 17347 then
			hemoDmg = 21
		elseif debuffId == 17348 then
			hemoDmg = 29
		elseif debuffId == 26864 then
			hemoDmg = 42
		end
		
		if debuffId == 22959 then
			if dcount == 1 then
				impSorch = 0.03
			elseif dcount == 2 then
				impSorch = 0.06
			elseif dcount == 3 then
				impSorch = 0.09
			elseif dcount == 4 then
				impSorch = 0.12
			elseif dcount == 5 then
				impSorch = 0.15
			end
		end
		
		if debuffId == 12579 then
			if dcount == 1 then
				wintersChill = 2
			elseif dcount == 2 then
				wintersChill = 4
			elseif dcount == 3 then
				wintersChill = 6
			elseif dcount == 4 then
				wintersChill = 8
			elseif dcount == 5 then
				wintersChill = 10
			end
		end			
	end
end

local function PouchHasteClassSet(self)

	pouchCounter = 0
	if (classFilename ~= "WARRIOR") and (classFilename ~= "ROGUE") then
		for i=1,23 do
			local itemLink = GetInventoryItemLink("player", i)
			if itemLink then
				if (classFilename == "PRIEST") or (classFilename == "DRUID") or (classFilename == "PALADIN") or (classFilename == "SHAMAN") then
					local itemName = C_Item.GetItemNameByID(GetInventoryItemLink("player", i))
					if itemName then
						if classId == 5 then 
							if string.sub(itemName, -13) == "Transcendence" then
								tierPieces = tierPieces + 1
							end
						elseif classId == 11 then 
							if string.sub(itemName, 1, 9) == "Stormrage" then
								tierPieces = tierPieces + 1
							end
							if (string.sub(itemName, 10, 17) == "Haruspex") or 
								(string.sub(itemName, -15) == "South Seas Kelp") or
								(string.sub(itemName, 1, 9) == "Wushoolay") then
									zgPieces = zgPieces + 1
							end
						elseif classId == 2 then 
							if (string.sub(itemName, 10, 20) == "Freethinker") or 
								(string.sub(itemName, 1, 7) == "Gri'lek") or
								(string.sub(itemName, 1, 12) == "Hero's Brand") then
									zgPieces = zgPieces + 1
							end
						elseif classId == 7 then 
							if (string.sub(itemName, 1, 5) == "Augur") or 
								(string.sub(itemName, 1, 8) == "Unmarred") or
								(string.sub(itemName, 1, 9) == "Wushoolay") then
									zgPieces = zgPieces + 1
							end
						end
					end
				end
				if (classFilename == "HUNTER") then
					local itemName = C_Item.GetItemNameByID(GetInventoryItemLink("player", i))
					if itemName then
						if (string.sub(itemName, 1, 10) == "Ammo Pouch") or
							(string.sub(itemName, 1, 10) == "Small Shot") or
							(string.sub(itemName, -9) == "Ammo Sack") or
							(string.sub(itemName, -6) == "Quiver") then
								pouchCounter = 10
						elseif (string.sub(itemName, 1, 9) == "Bandolier") or
							(string.sub(itemName, -11) == "Night Watch") then
								pouchCounter = 11
						elseif (string.sub(itemName, 1, 13) == "Heavy Leather") or
							(string.sub(itemName, 1, 12) == "Heavy Quiver") then
								pouchCounter = 12
						elseif (string.sub(itemName, 1, 13) == "Thick Leather") or
							(string.sub(itemName, 1, 9) == "Quickdraw") then
								pouchCounter = 13
						elseif (string.sub(itemName, 1, 8) == "Ribbly's") then
							pouchCounter = 14
						elseif (string.sub(itemName, 1, 10) == "Gnoll Skin") or 
							(string.sub(itemName, 1, 10) == "Harpy Hide") or
							(string.sub(itemName, -6) == "Lamina") or
							(string.sub(itemName, 1, 9) == "Clefthoof") or
							(string.sub(itemName, 1, 9) == "Worg Hide") or
							(string.sub(itemName, 1, 15) == "Smuggler's Ammo") then
								pouchCounter = 15								
						end		        
					end				
				end										
			end
		end
	end  
end

---------------------Events----------------------------- 
f:SetScript("OnEvent", function (self, event, ...)
	
local spirit, effectiveSpirit, posBuffSpirit, negBuffSpirit = UnitStat("player", 5)
	
if event == "PLAYER_LOGIN" then
	--print("|cff00f26dSinStats : |cffF0851ABurning Crusade|r " .. addVer .. "|r - |cff00f26d/sinstats|r or |cff00f26d/ss|r to setup your stats")
	initSinStatsDB()
	self.AddIcons = SinStatsDB.IconVar
	talentScan()
	StatsFontSize = SinStatsDB.StatFontSize
	for i=1, #AddonTable.DisplayOrder do
		local Settings = AddonTable.DisplayOrder[i]
		if SinStatsDB and SinStatsDB.Stats[Settings.hud] == nil then
			print("|cffff0000SinsStats:|r Missing Saved Variable:|cff00ff00", Settings.hud)
		else
			CreateStatDisplay(self, Settings.hud, i)
		end
	end
	self:ResizeStats()
	self:RedrawStats()
	
	
	
	StaticPopupDialogs["SINSTATS_HUD_RESET"] = {
		text = L["ResetPositionPopup"],
		button1 = "Yes",
		button2 = "No",
		timeout = 0,
		whileDead = true,
		hideOnEscape = false,		
		OnAccept = function(self) 
			SinStatsFrame:SetUserPlaced(false)
			SinStatsFrame:ClearAllPoints()
			SinStatsFrame:SetPoint("CENTER", 0, 0)
			SinStatsFrame:SetUserPlaced(true)
		end,
		OnCancel = function(self) end, 
	}
	self:RegisterEvent("UNIT_STATS", "player")
	--self:RegisterUnitEvent("UNIT_AURA", "player")
	self:RegisterUnitEvent("UNIT_AURA", "player", "target")	
	self:RegisterEvent("CHARACTER_POINTS_CHANGED")
	self:RegisterEvent("BIND_ENCHANT")
	self:RegisterEvent("REPLACE_ENCHANT")
	self:RegisterEvent("UPDATE_INVENTORY_DURABILITY")
	self:RegisterUnitEvent("UNIT_RESISTANCES", "player")
	self:RegisterEvent("UNIT_DAMAGE")
	self:RegisterEvent("UNIT_RANGEDDAMAGE")
	self:RegisterEvent("UNIT_ATTACK_POWER")
	self:RegisterEvent("UNIT_RANGED_ATTACK_POWER")
	self:RegisterEvent("UNIT_DEFENSE", "player")
	self:RegisterEvent("PLAYER_LEVEL_UP")
	self:RegisterEvent("BAG_CLOSED")
	self:RegisterEvent("COMBAT_LOG_EVENT_UNFILTERED")
	self:RegisterUnitEvent("UNIT_INVENTORY_CHANGED", "player")
	self:RegisterEvent("PLAYER_TARGET_CHANGED")

	AddonTable:RunAllEvents()
	AddonTable:UpdateStatus()
	self:SetScript("OnUpdate", OnUpdate)	
	
elseif event == "UNIT_RESISTANCES" then
	local base, bonus, total = UnitResistance("player",2)
	local effectiveFR = bonus
	SetText(self.Stats.FireResist, self, effectiveFR)

	local base, bonus, total = UnitResistance("player",5)
	local effectiveSR = bonus
	SetText(self.Stats.ShadowResist, self, effectiveSR)

	local base, bonus, total = UnitResistance("player",4)
	local effectiveFrR = bonus
	SetText(self.Stats.FrostResist, self, effectiveFrR)
	
	local base, bonus, total = UnitResistance("player",6)
	local effectiveAR = bonus
	SetText(self.Stats.ArcaneResist, self, effectiveAR)  		

	local base, bonus, total = UnitResistance("player",3)
	local effectiveNR = bonus
	SetText(self.Stats.NatureResist, self, effectiveNR)   

elseif event == "UPDATE_INVENTORY_DURABILITY" then
	local Durability, Current, Full, Percent
	local LowestCurrent, LowestFull, t1, t2, t3 = 500, 0, 0, 0, 100
	for i=1,19 do
		Current, Full = GetInventoryItemDurability(i)
		if Current and Full then
			Percent = floor(100*Current/Full + 0.5)
			if (Percent < t3) then
				t3 = Percent
			end
			if (Current < LowestCurrent) then
				LowestCurrent = Current
				LowestFull = Full
			end
			t1 = t1 + Current
			t2 = t2 + Full
		end
	end
	if t2 == 0 then
		Durability = "N/A"
	else
		Durability = floor(t1 * 100 / t2)
	end
	local Text = ""
	if type(Durability) == "number" then
		if Durability > 50 then
			Text = string.format("|cff%2xff00", ((Durability > 50) and (255 - 2.55*Durability) or (2.55*Durability)), Durability) .. Text
		else
			Text = string.format("|cffff%2x00", (2.55*Durability), Durability) .. Text
		end
		Text = Text..Durability.."%"
	end
	SetText(self.Stats.Durability, self, Text)         

elseif event == "UNIT_ATTACK_POWER" then
	local base, posBuff, negBuff = UnitAttackPower("player");
	local effectiveAP = base + posBuff + negBuff;
	if negBuff < 0 then
		SetText(self.Stats.AP, self, "|cffC41E3A" .. effectiveAP .. "|r"); 
	else
		SetText(self.Stats.AP, self, effectiveAP);
	end
	
elseif event == "CHARACTER_POINTS_CHANGED" then
	talentScan()
	self:RedrawStats()

elseif event == "PLAYER_LEVEL_UP" then
	playerLevel = UnitLevel("player")
	
elseif event == "PLAYER_TARGET_CHANGED" then
	local exists = UnitExists("target")
	if UnitCanAttack("player", "target") then--or exists == false then
		SinLive(self)
	end
	
elseif event == "COMBAT_LOG_EVENT_UNFILTERED" then

local event, subevent, _, _, _, _, _, destGUID, _, _, _, spellId, spellName = CombatLogGetCurrentEventInfo()

local huntersMarkRanks = {
	[1130] = true,
    [14323] = true,
    [14324] = true,
    [14325] = true,
}

local hunterSpells = {
    [GetSpellInfo(2643)] = true,
    [GetSpellInfo(14287)] = true,
    [GetSpellInfo(19434)] = true,
    [GetSpellInfo(34120)] = true,
}

local manaTideCheck = {
	[16190] = true,
	[39609] = true,
}

local storedGUID = UnitGUID("target")
-- local storedGUID

manaTide = 0
		
	if (subevent == "SPELL_AURA_APPLIED" or subevent == "SPELL_AURA_REFRESH") and (huntersMarkRanks[spellId]) then
		
		savedHM = spellId
		hmIncrements = 0
		--storedGUID = UnitGUID("target")

	elseif subevent == "RANGE_DAMAGE" or (subevent == "SPELL_DAMAGE" and hunterSpells[spellName]) then	
		
		if (destGUID == storedGUID) then
		
		
			if savedHM == 1130 then
				hmInc = 2
				if hmIncrements <= 58 then
					hmIncrements = hmIncrements + hmInc
				end
			elseif savedHM == 14323 then
				hmInc = 5
				if hmIncrements <= 130 then
					hmIncrements = hmIncrements + hmInc
				end
			elseif savedHM == 14324 then
				hmInc = 8
				if hmIncrements <= 217 then
					hmIncrements = hmIncrements + hmInc
				end
			elseif savedHM == 14325 then
				hmInc = 11
				if hmIncrements <= 319 then
					hmIncrements = hmIncrements + hmInc
				end
			end
		end
		
    elseif subevent == "SPELL_AURA_REMOVED" and huntersMarkRanks[spellId] and (destGUID == storedGUID) then
		hmIncrements = 0
		huntersMark = 0
		hmInc = 0
    end

	if (manaTideCheck[spellId]) and (destGUID == playerGUID) then
		local TideMana = UnitPowerMax("player", Enum.PowerType.Mana)
		manaTide = ((TideMana * 0.06) / 3) * 2
		manaTide = manaTide
	end
		
else -- Other Events


	local unit = ...
	if unit == "target" then
		SinLive(self)
	return
	end

	baseDefense = 0
	local bonusDefense = 0
	local DefGearIndex = 0		
	defenseRating = 0
	local DefGear = GetNumSkillLines()
	local DefHeader = nil
	
	for i = 1, DefGear do
		local DefName = select(1, GetSkillLineInfo(i))
		local headerCheck = select(2, GetSkillLineInfo(i))
		
		if headerCheck ~= nil and headerCheck then
			DefHeader = DefName;
		else
			if (DefHeader == headerLoc or (not headerCheck)) and (DefName == defenseLoc) then
				DefGearIndex = i
				break
			end
		end	
	end
	
	if (DefGearIndex > 0) then
		baseDefense = select(4, GetSkillLineInfo(DefGearIndex))
		bonusDefense = select(6, GetSkillLineInfo(DefGearIndex))
	end
	
	
	defenseRating = GetCombatRatingBonus(CR_DEFENSE_SKILL) + baseDefense + bonusDefense
	defenseRating = defenseRating
	
	SetText(self.Stats.Defense, self, format("%.2f", (defenseRating)))   

	PouchHasteClassSet(self)

	local _, Intellect, _, _ = UnitStat("player", 4)
	local _, Spirit, _, _ = UnitStat("player", 5)    

	evoc = 0  
	felEnergy = 0   
	innervate = false
	bowisdom = 0
	springTotem = 0	
	dsSuc = 0
	dsImp = 0
	--tideTotem = 0
	secondWind = 0   
	warchief = 0
	meleeHaste = 100	
	rangedHaste = 100
	castHaste = 100
	local mightyResto = 0
	local gemRegen = 0
	aspectViper = 0
	epiphany = 0
	arcanePower = 0
	sancAura = 0
	combustionCount = 0
	shadowFormDmg = 0	
	maxmana = 0
	vengStacks = 0
	vengBuff = 0
	totemMana = 0
	zoneBuff = 0
	totemWrath = 0
	innerFocus = 0
	totemTalent = 0
	inspiringPresence = 0
	heroicPresence = 0
	local buffCount = 0
	arcanePotency = 0
	
if (classFilename ~= "WARRIOR") and (classFilename ~= "ROGUE") then 
		
		for i = 1, 40 do
		
		local _, _, count, _, _, _, _, _, _, spellId = UnitBuff("player",i, "HELPFUL")
		if not spellId  then break end
			
		if spellId then
			buffCount = i
		end

		buffCount = buffCount					

		if spellId == 29166 then 
			innervate = true
		end
		
		if spellId == 28878 then
			if (raceFile ~= "Draenei" and classFilename ~= "MAGE") or (raceFile ~= "Draenei" and classFilename ~= "PRIEST") or (raceFile ~= "Draenei" and classFilename ~= "SHAMAN") then
				inspiringPresence = 1 
			end
		end
	
		if spellId == 6562 then
			if (raceFile ~= "Draenei" and classFilename ~= "HUNTER") or (raceFile ~= "Draenei" and classFilename ~= "WARRIOR") or (raceFile ~= "Draenei" and classFilename ~= "PALADIN") then
				heroicPresence = 1
			end
		end			
	
		if spellId == 32071 or spellId == 32049 or spellId == 33779 or spellId == 33377 or spellId == 33795 then
			zoneBuff = 0.05
		end	
		
		if spellId == 30708 then
			totemWrath = 3
		end
		
		if spellId == 15167 then -- windsor frenzy
			meleeHaste = (meleeHaste + 65)
		end			
		
		if spellId == 32182 then
			rangedHaste = (rangedHaste + 30)
			meleeHaste = (meleeHaste + 30)
			castHaste = (castHaste + 30)
		end
		
		if spellId == 28093 then
			meleeHaste = (meleeHaste + 2)
		end	
		
		if spellId == 26635 then
			local health = UnitHealth("player")
			local max_health = UnitHealthMax("player")
			local percenthealth = ((health/max_health) * 100)
			if percenthealth > 40 then	
				rangedHaste = (rangedHaste + 10)
				meleeHaste = (meleeHaste + 10)
				castHaste = (castHaste + 10)
			else 
				rangedHaste = (rangedHaste + 30)
				meleeHaste = (meleeHaste + 30)		
				castHaste = (castHaste + 30)			
			end	
		end
		
		-- totems
		if spellId == 5677 then 
				springTotem = 6 + (6 * totemTalent)
				
		elseif spellId == 10491 then 
				springtotem = 9 + (9 * totemTalent)
				
		elseif spellId == 10493 then 
				springtotem = 13 + (13 * totemTalent)
			
		elseif spellId == 10494 then 
				springTotem = 17 + (17 * totemTalent)
			
		elseif spellId == 25569 then   
			springTotem = 20 + (20 * totemTalent)	
		 end
	
		if spellId == 15604 then 
			secondWind = 60
		end 
	
	if (classFilename == "MAGE") then  

			if spellId == 28682 then
				combustionCount = count
				combustionCount = combustionCount * 10
			end
				
			if spellId == 12051 then
				maxmana = UnitPowerMax("player", Enum.PowerType.Mana)
				evoc = ((maxmana * 0.6) / 8) * 2
			end	
			
			if spellId == 12042 then
				arcanePower = 0.3
			end					
			
			if spellId == 12472 then
				castHaste = castHaste + 20
			end		
	end
		
	if (classFilename == "WARLOCK") then
			local maxpower = UnitPowerMax("player" , mana);
			if spellId == 18792 then 
				felEnergy = ((maxpower * 0.03) / 2)
			end  

			if spellId == 18791 then
				dsSuc = 0.15
			elseif spellId == 18789 then
				dsImp = 0.15
			end		

			-- if debuffId == 15258 then
				-- shadowVuln = dcount
				-- shadowVuln = shadowVuln * 2
			-- end
			
		end 
		
		if (classFilename == "DRUID") then
			if druidFormChk() then	
				if spellId == 13494 then 
					meleeHaste = (meleeHaste + 50)
				end
			end
	end
		
	if (classFilename == "HUNTER") then
			if spellId == 3045 then 
				rangedHaste = (rangedHaste + 40)
			end		
					
			if spellId == 6150 then 
				rangedHaste = (rangedHaste + 30)
			end	
			
			if spellId == 34074 then
				local _, currIntellect, _, _ = UnitStat("player", 4);
				local playerMana = UnitPower("player", Enum.PowerType.Mana)	
				local playerMaxMana = UnitPowerMax("player", Enum.PowerType.Mana)	
				playerMana = (playerMana / playerMaxMana) * 100
				
				if playerMana >= 90 then
					aspectViper = ((currIntellect * 0.11) + (playerLevel * 0.35)) * 0.4
				elseif playerMana >= 70 and playerMana < 90 then
					aspectViper = ((currIntellect * 0.24) + (playerLevel * 0.35)) * 0.4
				elseif playerMana >= 50 and playerMana < 70 then
					aspectViper = ((currIntellect * 0.37) + (playerLevel * 0.35)) * 0.4
				elseif playerMana > 20 and playerMana < 50 then
					aspectViper = ((currIntellect * 0.50) + (playerLevel * 0.35)) * 0.4
				elseif playerMana <= 20 then
					aspectViper = ((currIntellect * 0.55) + (playerLevel * 0.35)) * 0.4
				end
			end
	end
		
	if (classFilename == "PALADIN") then
		if spellId == 20055 then
			vengStacks = count
			if vengeance == 5 and vengStacks > 0 then
				vengBuff = (vengStacks * vengeance) / 100
			elseif vengeance == 4 and vengStacks > 0 then
				vengBuff = (vengStacks * vengeance) / 100					
			elseif vengeance == 3 and vengStacks > 0 then
				vengBuff = (vengStacks * vengeance) / 100				
			elseif vengeance == 2 and vengStacks > 0 then
				vengBuff = (vengStacks * vengeance) / 100					
			elseif vengeance == 1 and vengStacks > 0 then
				vengBuff = (vengStacks * vengeance) / 100					
			end
		end				
			
		if spellId == 23733 then 
			meleeHaste = (meleeHaste + 25)
			castHaste = (castHaste + 33)
		end		
		if spellId == 20218 then	
			sancAura = 0.1
		end					
	end
		
		if (classFilename == "PRIEST") then
			if spellId == 28804 then
				epiphany = 24 
			end
			if spellId == 20218 then	
				sancAura = 0.1
			end		
			if spellId == 15473 then
				shadowFormDmg = 0.15
			end
			if spellId == 14751 then
				innerFocus = 25
			end			
		end	
		
		if (classFilename == "SHAMAN") then
			if spellId == 16166 then
				eleMastery = 100
			else
				eleMastery = 0	
			end				
		end	
	end
end

if (classFilename == "WARRIOR") then
	for i = 1, 40 do
		local _, _, _, _, _, _, _, _, _, spellId = UnitBuff("player",i, "HELPFUL")
		if not spellId then break end   
		
		if spellId == 12966 then 
			meleeHaste = (meleeHaste + 5)
		elseif spellId == 12967 then 
			meleeHaste = (meleeHaste + 10)
		elseif spellId == 12968 then 
			meleeHaste = (meleeHaste + 15)
		elseif spellId == 12969 then 
			meleeHaste = (meleeHaste + 20)	
		elseif spellId == 12970 then 
			meleeHaste = (meleeHaste + 25)
		end


		if spellId == 355366 then 
			if playerLevel < 63 then
				meleeHaste = (meleeHaste + 15)
			end
		end 

		if spellId == 32182 then
			rangedHaste = (rangedHaste + 30)
			meleeHaste = (meleeHaste + 30)
		end	
		
		if spellId == 28093 then
			meleeHaste = (meleeHaste + 2)
		end			
		
		if spellId == 26635 then 
			local health = UnitHealth("player")
			local max_health = UnitHealthMax("player")
			local percenthealth = ((health/max_health) * 100)
			if percenthealth > 40 then	
				rangedHaste = (rangedHaste + 10)
				meleeHaste = (meleeHaste + 10)
				castHaste = (castHaste + 10)		
			else 
				rangedHaste = (rangedHaste + 30)
				meleeHaste = (meleeHaste + 30)	
				castHaste = (castHaste + 30)		
			end
		end	
	end

elseif (classFilename == "ROGUE") then
for i = 1, 40 do
	local _, _, _, _, _, _, _, _, _, spellId = UnitBuff("player",i, "HELPFUL")
	if not spellId then break end  
	
		if spellId == 5171 then 
			meleeHaste = (meleeHaste + 20)
		elseif spellId == 6774 then 
			meleeHaste = (meleeHaste + 30)
		end
				
		if spellId == 13877 then 
			meleeHaste = (meleeHaste + 20)
		end

		if spellId == 355366 then 
			if playerLevel < 63 then
				meleeHaste = (meleeHaste + 15)
			end
		end 	

		if spellId == 15167 then 
			meleeHaste = (meleeHaste + 65)
		end	

		if spellId == 32182 then
			rangedHaste = (rangedHaste + 30)
			meleeHaste = (meleeHaste + 30)
		end	
		
		if spellId == 28093 then
			meleeHaste = (meleeHaste + 2)
		end		
		
		if spellId == 26635 then
			local health = UnitHealth("player")
			local max_health = UnitHealthMax("player")
			local percenthealth = ((health/max_health) * 100)
			if percenthealth > 40 then	
				rangedHaste = (rangedHaste + 10)
				meleeHaste = (meleeHaste + 10)
				castHaste = (castHaste + 10)		
			else 
				rangedHaste = (rangedHaste + 30)
				meleeHaste = (meleeHaste + 30)	
				castHaste = (castHaste + 30)		
			end
		end	
	end
end

	hasteHead = 0
	hasteLegs = 0
	hasteHands = 0

	local link = GetInventoryItemLink("player", 10)
	if link then
		local itemId, enchantId = link:match("item:(%d+):(%d+)")	
		if enchantId then
			enchantId = tonumber(enchantId)
			if enchantId == 931 then
				hasteHands = hasteHands + 1
			end
		end
	end
	
	local slotId = GetInventorySlotInfo("HeadSlot")
	local link = GetInventoryItemLink("player", slotId)
	if link then
		local itemId, enchantId = link:match("item:(%d+):(%d+)")
		if enchantId then
			enchantId = tonumber(enchantId)
			if enchantId == 2543 then
				hasteHands = hasteHands + 1
			end
		end
	end	
	
	local link = GetInventoryItemLink("player", 7)
	if link then
		local itemId, enchantId = link:match("item:(%d+):(%d+)")
		if enchantId then
			enchantId = tonumber(enchantId)
			if enchantId == 2543 then
				hasteHands = hasteHands + 1
			end
		end
	end	   

		SetText(self.Stats.BuffCounter, self, (buffCount)) 
	end        
end)
f:RegisterEvent("PLAYER_LOGIN")

-------------------------------------------
-- Slash command to open the Settings frame
-------------------------------------------
SLASH_SINSTATS1 = "/sinstats"
SLASH_SS1 = "/ss"
function SlashCmdList.SINSTATS()
	AddonTable:ToggleConfig()
end
function SlashCmdList.SS()
	AddonTable:ToggleConfig()
end
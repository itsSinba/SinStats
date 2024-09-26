-----------------------------------
-- SinStats [BCC] by Sinba-Pagle --
-----------------------------------
local AddName, AddonTable = ...
local L = AddonTable.L
local addVer = GetAddOnMetadata(AddName, "Version")
local byPass
local AceGUI = LibStub("AceGUI-3.0")
local LSM = LibStub("LibSharedMedia-3.0")


LSM:Register("font", "Accidental Presidency", [[Interface\Addons\SinStats\fonts\Accidental Presidency.ttf]])
LSM:Register("font", "Oswald", [[Interface\Addons\SinStats\fonts\Oswald-Regular.otf]])
LSM:Register("font", "Nueva Std Cond", [[Interface\Addons\SinStats\fonts\NuevaStd-Cond.otf]])
LSM:Register("font", "TrashHand", [[Interface\Addons\SinStats\fonts\TrashHand.TTF]])
LSM:Register("font", "Harry P", [[Interface\Addons\SinStats\fonts\HARRYP__.TTF]])
LSM:Register("font", "FORCED SQUARE", [[Interface\Addons\SinStats\fonts\FORCED SQUARE.ttf]])
LSM:Register("font", "Bazooka", [[Interface\Addons\SinStats\fonts\Bazooka.ttf]])
LSM:Register("font", "DorisPP", [[Interface\Addons\SinStats\fonts\DORISPP.ttf]])
LSM:Register("font", "Enigmatic", [[Interface\Addons\SinStats\fonts\Enigma__2.ttf]])
LSM:Register("font", "Liberation Sans (U)", [[Interface\Addons\SinStats\fonts\LiberationSans-Regular.ttf]])
LSM:Register("font", "Fira Mono", [[Interface\Addons\SinStats\fonts\FiraMono-Regular.ttf]])
LSM:Register("font", "Crystal", [[Interface\Addons\SinStats\fonts\CRYSRG__.ttf]])
LSM:Register("font", "White Rabbit", [[Interface\Addons\SinStats\fonts\WHITRABT.ttf]])
LSM:Register("font", "Monofonto", [[Interface\Addons\SinStats\fonts\MONOFONT.ttf]])
LSM:Register("font", "FSEX300 (U)", [[Interface\Addons\SinStats\fonts\FSEX300.ttf]])
LSM:Register("font", "DejaVu (U)", [[Interface\Addons\SinStats\fonts\DejaVuSansMono.ttf]])
LSM:Register("font", "Anonymous Pro Bold (U)", [[Interface\Addons\SinStats\fonts\AnonymousPro-Bold.ttf]])


AddonTable.Groups = { L["MeleeTab"], L["DefenseTab"], L["RangedTab"], L["SpellTab"], L["ResistanceTab"], L["MiscTab"] }

OutlineStyle = {"OUTLINE", "THICKOUTLINE", "MONOCHROME", "OUTLINE, MONOCHROME", "THICKOUTLINE, MONOCHROME", ""}

function AddonTable:UpdateStatus()
	SinStatsFrame:SetShown(not SinStatsDB.SinHideVar)
	local locked = SinStatsDB.SinLockVar
	SinStatsFrame:SetBackdropColor(1, 1, 1, locked and 0 or 1)
	SinStatsFrame:EnableMouse(not locked)
	SinStatsFrame.DragText:SetShown(not locked)
end

function AddonTable:ToggleEnable()
    if SinStatsConfigFrameTab1Enable then
        SinStatsConfigFrameTab1Enable:Click()
    else
        SinStatsDB.SinHideVar = not SinStatsDB.SinHideVar
        AddonTable:UpdateStatus()
    end
end

function AddonTable:ToggleLock()
    if SinStatsConfigFrameTab1Locked then
        SinStatsConfigFrameTab1Locked:Click()
    else
        SinStatsDB.SinLockVar = not SinStatsDB.SinLockVar
        AddonTable:UpdateStatus()
    end
end

local SinStatsConfig = CreateFrame("frame","SinStatsConfigFrame", UIParent, BackdropTemplateMixin and "BackdropTemplate")
SinStatsConfig:SetMovable(true)
SinStatsConfig:SetClampedToScreen(true)
SinStatsConfig:SetUserPlaced(true)
SinStatsConfig:Hide()

function AddonTable:ToggleConfig()
	local Configs = {
		AP = { label= L["AttackPower"], tooltip=L["AttackPowerTooltip"], },	
		RAP = { label= L["RangedAttackPower"], tooltip=L["RangedAttackPowerTooltip"], },			
		DMG = { label=L["Damage"], tooltip=L["DamageTooltip"], },
		mDPS = { label=L["DamagePerSecond"], tooltip=L["DamagePerSecondTooltip"], },
		RDMG = { label=L["RangeDamage"], tooltip=L["RangeDamageTooltip"], },
		rDPS = { label=L["RangeDamagePerSecond"], tooltip=L["RangeDamagePerSecondTooltip"], },
		Fire = { label=L["FirePower"], tooltip=L["FirePowerTooltip"], },		
		Frost = { label=L["FrostPower"], tooltip=L["FrostPowerTooltip"], },		
		Arcane = { label=L["ArcanePower"], tooltip=L["ArcanePowerTooltip"], },
		Shadow = { label=L["ShadowPower"], tooltip=L["ShadowPowerTooltip"], },			
		Nature = { label=L["NaturePower"], tooltip=L["NaturePowerTooltip"], },
		Healing = { label=L["HealingPower"], tooltip=L["HealingPowerTooltip"], },
		Holy = { label=L["HolyPower"], tooltip=L["HolyPowerTooltip"], },						
		Crit = { label=L["CriticalStrike"], tooltip=L["CriticalStrikeTooltip"], },    
		CritBoss = { label=L["CriticalStrikeBoss"], tooltip=L["CriticalStrikeBossTooltip"], },    		
		CritCap = { label=L["CriticalCap"], tooltip=L["CriticalCapTooltip"], },    		
		RangedCrit = { label=L["RangeCritical"], tooltip=L["RangeCriticalTooltip"], },
		RangedCritBoss = { label=L["RangeCriticalBoss"], tooltip=L["RangeCriticalBossTooltip"], },    
		SpellCrit = { label=L["SpellCritical"], tooltip=L["SpellCriticalTooltip"], },
		SpellCritBoss = { label=L["SpellCriticalBoss"], tooltip=L["SpellCriticalBossTooltip"], },    						
		Hit = { label=L["HitMelee"], tooltip=L["HitMeleeTooltip"], },
		RangedHit = { label=L["HitRange"], tooltip=L["HitRangeTooltip"], },
		HasteMelee = { label=L["HasteMelee"], tooltip=L["HasteMeleeTooltip"], },
		weaponSpeed = { label=L["AttackSpeed"], tooltip=L["AttackSpeedTooltip"], },
		ArmorPenetration = { label=L["ArmorPenetration"], tooltip=L["ArmorPenetrationTooltip"], },		
		Expertise = { label=L["Expertise"], tooltip=L["ExpertiseTooltip"], },		
		MeleeMiss = { label=L["MissMelee"], tooltip=L["MissMeleeTooltip"], },
		MeleeBoss = { label=L["MissMeleeBoss"], tooltip=L["MissMeleeBossTooltip"], },
		Avoidance = { label=L["Avoidance"], tooltip=L["AvoidanceTooltip"], },	
		Crushing = { label=L["Crushing"], tooltip=L["CrushingTooltip"], },			
		CritReceived = { label=L["CriticallyHit"], tooltip=L["CriticallyHitTooltip"], },					
		HasteRanged = {  label=L["HasteRange"], tooltip=L["HasteRangeTooltip"], },
		rangedSpeed = {  label=L["AtkSpeedRange"], tooltip=L["AtkSpeedRangeTooltip"], },		
		RangedMiss = { label=L["MissRange"], tooltip=L["MissRangeTooltip"], },
		RangedBoss = { label=L["MissRangeBoss"], tooltip=L["MissRangeBossTooltip"], },
		SpellHit = { label=L["HitSpell"], tooltip=L["HitSpellTooltip"], },
		HasteCaster = { label=L["HasteSpell"], tooltip=L["HasteSpellTooltip"], },
		SpellMiss = { label=L["MissSpell"], tooltip=L["MissSpellTooltip"], },
		SpellBoss = { label=L["MissSpellBoss"], tooltip=L["MissSpellBossTooltip"], },
		ManaRegen = { label=L["ManaRegen"], tooltip=L["ManaRegenTooltip"], },
		CastingRegen = { label=L["CastingRegen"], tooltip=L["CastingRegenTooltip"], },
		MP5 = { label=L["MP5"], tooltip=L["MP5Tooltip"], },
		MP5Casting = { label=L["CastingMP5"], tooltip=L["CastingMP5Tooltip"], },
		Resilience = { label=L["Resilience"], tooltip=L["ResilienceTooltip"], },			
		Armor = { label=L["Armor"], tooltip=L["ArmorTooltip"], },	
		DMGReduc = { label=L["Mitigation"], tooltip=L["MitigationTooltip"], },
		Defense = { label=L["Defense"], tooltip=L["DefenseTooltip"], },
		Dodge = { label=L["Dodge"], tooltip=L["DodgeTooltip"], },
		Parry = { label=L["Parry"], tooltip=L["ParryTooltip"], },
		Block = { label=L["Block"], tooltip=L["BlockTooltip"], },
		FireResist = { label=L["Fire"], tooltip=L["FireTooltip"], },
		FrostResist = { label=L["Frost"], tooltip=L["FrostTooltip"], },
		ShadowResist = { label=L["Shadow"], tooltip=L["ShadowTooltip"], },
		ArcaneResist = { label=L["Arcane"], tooltip=L["ArcaneTooltip"], },	
		NatureResist = { label=L["Nature"], tooltip=L["NatureTooltip"], },
		Speed = { label=L["MovementSpeed"], tooltip=L["MovementSpeedTooltip"], },
		Durability = { label=L["Durability"], tooltip=L["DurabilityTooltip"], },
		BuffCounter = { label=L["PlayerBuffs"], tooltip=L["PlayerBuffsTooltip"], },
		DebuffCounter = { label=L["TargetDebuffs"], tooltip=L["TargetDebuffsTooltip"], },		
		Lag = { label=L["Latency"], tooltip=L["LatencyTooltip"], },
		FPS = { label=L["Framerate"], tooltip=L["FramerateTooltip"], },
		Money = { label=L["Money"], tooltip=L["MoneyTooltip"], },		
	}
	for i= 1, #AddonTable.DisplayOrder do
		if not 	Configs[AddonTable.DisplayOrder[i].hud] then
			print("|cffff0000MISSING Config entry: ".. AddonTable.DisplayOrder[i].hud.."|r")
		end
	end
	
	------------------------------------------------
	-- Factory functions for creating check boxes --
	------------------------------------------------
	local function OnEnter(self)
		local parent = self.tooltip and self or self:GetParent()
		GameTooltip:SetOwner(parent, "ANCHOR_LEFT")
		GameTooltip:SetText(parent.tooltip)
	end

	local function OnLeave()
		GameTooltip:Hide()
	end

local function CreateCheckBox(parent, name, label, key, entry, tooltip)
        local f = CreateFrame("CheckButton", "$parent"..name, parent, "UICheckButtonTemplate")
        f:SetSize(20, 20)
        f.LabelButton = CreateFrame("Button", "$parentButton", f)
        f.LabelButton:SetHighlightTexture("Interface/QuestFrame/UI-QuestTitleHighlight")
        f.LabelButton:GetHighlightTexture():SetBlendMode("ADD")
        f.LabelButton:SetPoint("LEFT", f, "RIGHT", 5, 0)
        f.LabelButton:SetScript("OnClick", function(self)
            self:GetParent():Click()
        end)
        f.Label = f:CreateFontString("$parentLabel", "OVERLAY")
        f.Label:SetFontObject(GameFontNormal)
        f.Label:SetJustifyV("CENTER")
        f.Label:SetTextColor(1, 1, 1, 1)
        f.Label:SetPoint("LEFT", f.LabelButton)
        local w, h = f.Label:GetSize()
        f.LabelButton:SetSize(w+5, h)
        f.key = key
        f.entry = entry
        f:SetChecked(key[entry])
        f:SetScript("OnClick", function(self)
            self.key[self.entry] = self:GetChecked()
            if not self.ignoreUpdate then
                SinStatsFrame.Stats[self.entry]:SetShown(self:GetChecked())
            end
            SinStatsFrame:ResizeStats()
            SinStatsFrame:RedrawStats()
            PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
        end)
        f:SetScript("OnDisable", function(self)
            self.Label:SetAlpha(0.5)
        end)
        f:SetScript("OnEnable", function(self)
            self.Label:SetAlpha(1)
        end)
        function f:SetText(text)
            self.Label:SetText(text)
            self.LabelButton:SetSize(self.Label:GetSize())
        end
        f:SetText(label)
        if tooltip then
            f.tooltip = tooltip
            f:SetScript("OnEnter",  OnEnter)
            f:SetScript("OnLeave",  OnLeave)
            f.LabelButton:SetScript("OnEnter",  OnEnter)
            f.LabelButton:SetScript("OnLeave",  OnLeave)
        end
        return f
    end

	----------------------------------------------------
	-- Factory functions for creating sheets and tabs --
	----------------------------------------------------
	local function TabOnClick(self) 
		PlaySound(SOUNDKIT.IG_CHARACTER_INFO_TAB)
		local ID = self:GetID()
		self:SetAlpha(1)
		self.widgets:Show()
		local parent = self:GetParent()
		for i=1, #parent.Tabs do
			if i ~= ID then
				parent.Tabs[i]:SetAlpha(0.5)
				parent.Tabs[i].widgets:Hide()
			end
		end
	end
     
	local function CreateTab(id, parent, text)
		local f = CreateFrame("Button", "$parentTab"..id, parent, "ConfigCategoryButtonTemplate")
		f:Hide()
		tinsert(parent.Tabs, f)
		f:SetID(id)
		f:SetText(text)
		local Text = _G[f:GetName().."NormalText"]
		Text:ClearAllPoints()
		Text:SetAllPoints()
		Text:SetJustifyH("CENTER")
		local width = parent:GetWidth() - 110
		f:SetSize(width / 6, Text:GetHeight() + 10)
		f:SetHighlightTexture("Interface\\PaperDollInfoFrame\\UI-Character-Tab-Highlight")
		if id == 1 then
			f:SetPoint("TOPLEFT",parent,"TOPLEFT", 0, 0)
		else
			f:SetPoint("LEFT",parent.Tabs[id-1],"RIGHT", 0, 0)
		end
		f.widgets = CreateFrame("Frame", nil, f)
		f.widgets:Hide()
		f.widgets:SetSize(parent:GetWidth(), parent:GetHeight() - f:GetHeight()) 
		f.widgets:SetPoint("TOPLEFT", parent.Tabs[1], "BOTTOMLEFT")
		f:SetScript("OnClick", TabOnClick)
		f:Show()
		return f
	end

	---------------------------------------
	-- Factory functions for other stuff --
	---------------------------------------
	local function CreateSheetLabel(parent, text)
		local f = parent:CreateFontString("$parentLabel", "OVERLAY");
		f:SetFontObject("GameFontHighlight");
		f:SetText(text)
		return f
	end

	local function AddCheckBoxes(sheet, group, colwidth, rowoffset, coloffset)
        local Entries = {}
        sheet.CheckBoxes = {}
        for i=1, #AddonTable.DisplayOrder do
            if AddonTable.DisplayOrder[i].grp == group then
                tinsert(Entries, i)
            end
        end
        local row = rowoffset
        local col = coloffset
        local colcount = 1
        local rowmax = math.floor(#Entries/3)
        local over = mod(#Entries, 3)
        local rowcount = 0
        for i=1, #Entries do 
            local Settings = AddonTable.DisplayOrder[Entries[i]]
            local ConfigSettings = Configs[Settings.hud]
            local f = CreateCheckBox(sheet, Settings.hud, Settings.icon..ConfigSettings.label, SinStatsDB.Stats, Settings.hud, ConfigSettings.tooltip)
            tinsert(sheet.CheckBoxes, f)
            f:SetPoint("TOPLEFT", sheet, col, row)
            rowcount = rowcount + 1
            if ((over > 0 and colcount <= over) and rowcount == rowmax+1) or (colcount > over and rowcount == rowmax) then
                colcount = colcount + 1
                col = col + colwidth
                row = rowoffset
                rowcount = 0
            else
                row = row - 25
            end
        end
    end

	-------------------------------------------
	-- Hide/Show or Create the config. frame --
	-------------------------------------------
	if SinStatsConfig.Init then
		SinStatsConfig:SetShown(not SinStatsConfig:IsShown())
		return
	end
	local f = SinStatsConfig
	f.Init = true
	f:Show()
	f:SetBackdrop({
		bgFile="Interface/DialogFrame/UI-DialogBox-Background-Dark",
		edgeFile="Interface/DialogFrame/UI-DialogBox-Background-Dark",
		tile=1, tileSize=0, edgeSize=5,
	 })
	f:SetBackdropColor(1,1,1,1)
	f:SetWidth(675)
	f:SetHeight(390)
	f:ClearAllPoints()
	f:SetPoint("CENTER",UIParent)
	f:EnableMouse(true)
	f:RegisterForDrag("LeftButton")
	f:SetScript("OnDragStart", function(self) self:StartMoving() end)
	f:SetScript("OnDragStart", function(self) self:StartMoving() end)
	f:SetScript("OnDragStop", function(self) self:StopMovingOrSizing() end)
	f:SetFrameStrata("FULLSCREEN_DIALOG")
	tinsert(UISpecialFrames, "SinStatsConfigFrame")
	f.Close = CreateFrame('Button', '$parentClose', f, "UIPanelCloseButton")
	f.Close:SetPoint('TOPRIGHT', 0,0)
	f.Close:SetSize(25, 25)
	f.Close:SetScript('OnClick', function(self)
		self:GetParent():Hide()
	end)
	
	f.Title = f:CreateFontString(nil, "OVERLAY");
	f.Title:SetFontObject("GameFontHighlight");
	f.Title:SetPoint("TOP", SinStatsConfig, "TOP", 0, -5);
	f.Title:SetText("|cff00f26dSinStats :|r |cffF0851ABurning Crusade Classic|r");		

	local TabSettings = SinStatsDB.Stats
 	f.Tabs = {}
	local tab = CreateTab(1, f, L["HUDTab"]) 
	tab:ClearAllPoints() 
	tab:SetPoint("TOPLEFT", 10, -40)
	local sheet = tab.widgets
	local colWidth = (sheet:GetWidth()-10)/3
	local colOffset = 35
	local rowOffset = -60
	
	sheet.SubSettings = CreateSheetLabel(sheet, "|cff00f26d" .. L["GeneralOptionsText"] .. "|r");	
	sheet.SubSettings.ignoreUpdate = true
	sheet.SubSettings:SetFontObject("GameFontHighlight");
	sheet.SubSettings:SetPoint('TOPLEFT', 105, -50)	
	
	sheet.SndSubSettings = CreateSheetLabel(sheet, "|cff00f26d" .. L["StatsOptionsText"] .. "|r");	
	sheet.SndSubSettings.ignoreUpdate = true
	sheet.SndSubSettings:SetFontObject("GameFontHighlight");
	sheet.SndSubSettings:SetPoint('LEFT', 105, 35)	
	
	local l = sheet:CreateLine()
	l:SetColorTexture(1,0.49,0.04,0.5)
	l:SetStartPoint("LEFT",104,118)
	l:SetEndPoint("RIGHT",-90,118)
	l:SetThickness(1)
	l:Show()
	
	local sndl = sheet:CreateLine()
	sndl:SetColorTexture(1,0.49,0.04,0.5)
	sndl:SetStartPoint("LEFT",104,27)
	sndl:SetEndPoint("RIGHT",-90,27)
	sndl:SetThickness(1)
	sndl:Show()
	
	sheet.Reset = CreateFrame('Button', '$parentReset', sheet, "UIMenuButtonStretchTemplate")
	sheet.Reset:SetSize(70, 40)
	sheet.Reset:SetText(L["ResetPositionButton"])
	sheet.Reset:SetPoint("BOTTOMLEFT", -6, 43)
	sheet.Reset:SetScript('OnClick', function(self)
		StaticPopup_Show("SINSTATS_HUD_RESET")
	end)	
	
	sheet.SigVer = CreateSheetLabel(sheet, "|cff00f26d" .. addVer .. "|r");	
	sheet.SigVer.ignoreUpdate = true
	sheet.SigVer:SetFontObject("GameFontHighlightSmall");	
	sheet.SigVer:SetPoint('BOTTOMRIGHT', -15, 43);				

	sheet.Label = CreateSheetLabel(sheet, L["HUDSettings"])
	sheet.Label:SetPoint("TOP", sheet, "TOP", 0, -20);	

	------------------
	-- Enable Frame --
	------------------	
	sheet.Enable = CreateCheckBox(sheet, "Enable", "", SinStatsDB, "SinHideVar", L["HUDTooltip"])
	sheet.Enable.ignoreUpdate = true
	sheet.Enable:SetPoint('TOPLEFT', 105, -73)
	sheet.Enable:HookScript('OnClick', function(self)
	        local Setting = self.key[self.entry]
		self:SetText(Setting and L["HUDDisable"] or L["HUDEnable"] )
		AddonTable:UpdateStatus()
		self:GetParent().Locked:SetEnabled(not Setting)
	end)

	----------------
	-- Lock frame --
	----------------	
	sheet.Locked = CreateCheckBox(sheet, "Locked", "", SinStatsDB, "SinLockVar", L["HUDLockTooltip"])
	sheet.Locked.ignoreUpdate = true
 	sheet.Locked:SetPoint('TOP', 50, -73)
 	sheet.Locked:HookScript('OnClick', function(self)
		local Locked = self.key[self.entry]
         	self:SetText(Locked and L["HUDLocked"] or L["HUDUnlocked"])
         	AddonTable:UpdateStatus()
	end)
	sheet.Locked:GetScript('OnClick')(sheet.Locked)
	sheet.Enable:GetScript('OnClick')(sheet.Enable)

	--------------------
	-- Minimap button --
	--------------------	
	sheet.mmToggle = CreateCheckBox(sheet, "mmToggle", "", SinStatsDB.minimap, "hide", L["MinimapTooltip"])
	sheet.mmToggle:SetPoint("TOP", sheet.Enable, "BOTTOM", 0, -5);
	sheet.mmToggle.ignoreUpdate = true		
	if SinStatsDB.minimap.hide then
		byPass = true
	else	
		byPass = false
	end
	sheet.mmToggle:SetScript("OnClick", function(self)
    self.key[self.entry] = not self:GetChecked()
    local mmHide = self.key[self.entry]
    self:SetText(mmHide and L["MinimapDisable"] or L["MinimapEnable"])
    if SinStatsDB.minimap.hide and byPass then
		AddonTable.sshMiniButton:Hide("SinStats") 
	elseif SinStatsDB.minimap.hide and not byPass then
		LibDBIcon10_SinStats:Hide()
    elseif not SinStatsDB.minimap.hide and byPass then
		AddonTable.sshMiniButton:Show("SinStats") 
	elseif not SinStatsDB.minimap.hide and not byPass then		
		LibDBIcon10_SinStats:Show()
    end
	end)          
	sheet.mmToggle:SetChecked(not SinStatsDB.minimap.hide)
	sheet.mmToggle:GetScript('OnClick')(sheet.mmToggle)		

	----------------
	-- Stat Icons --
	----------------	
	sheet.Icons = CreateCheckBox(sheet, "Icons", "", SinStatsDB, "IconVar", L["StatsIconsTooltip"])
	sheet.Icons.ignoreUpdate = true
 	sheet.Icons:SetPoint('TOP', sheet.Locked, 'BOTTOM', 0, -5)
	sheet.Icons:HookScript("OnClick", function(self)
		self:SetText(self.key[self.entry] and L["StatsIconsEnable"] or L["StatsIconsDisable"])
		SinStatsFrame.AddIcons = self.key[self.entry]
		AddonTable:RunAllEvents()
		SinStatsFrame:GetScript("OnUpdate")(SinStatsFrame, 5)
	end)		
	sheet.Icons:GetScript('OnClick')(sheet.Icons)	

	-------------------
	-- Font Selector --
	-------------------
	local fontSelector = AceGUI:Create("Dropdown")
	local LSMList = LSM:List("font")
	fontSelector:SetList(LSMList)
	 
	fontSelector:SetCallback("OnValueChanged", function(widget, event, key, ...)
		SinStatsDB.FontName = LSMList[key] -- Store the key to initalise the list next time
		SinStatsDB.StatFonts = LSM:Fetch("font", SinStatsDB.FontName) -- Store the font for SetFont
		SinStatsFrame:ResizeStats()  
		AddonTable:RunAllEvents()		
	end)
	
	for k, v in pairs(LSMList) do
		if v == SinStatsDB.FontName then
			fontSelector:SetValue(k)
			break
		end
	end

	fontSelector:SetLabel(L["ChangeFontsTitle"])
	fontSelector:SetWidth(150)
	fontSelector.frame:SetParent(sheet)
	fontSelector.frame:SetPoint("LEFT", 110, 0)
	
	------------------
	-- Text Outline --
	------------------
	local textOuline = AceGUI:Create("Dropdown")
	textOuline:SetList({
	L["CountourOption1"], L["CountourOption2"], L["CountourOption3"], L["CountourOption4"], L["CountourOption5"], L["CountourOption6"]
	})
	textOuline:SetCallback("OnValueChanged", function(widget, event, key)
		SinStatsDB.OutlineKey = key
		SinStatsDB.OutlineText = OutlineStyle[key]
		print(SinStatsDB.OutlineText)
		SinStatsFrame:ResizeStats()
		AddonTable:RunAllEvents()		
		--SinStatsFrame:RedrawStats()
    end)
    textOuline:SetValue(SinStatsDB.OutlineKey)
    textOuline:SetLabel(L["TextOutlineTitle"])
	textOuline:SetWidth(135)
    textOuline.frame:SetParent(sheet)
	textOuline.frame:SetPoint("CENTER", 10, 0)
	
	---------------------
	-- Stats Alignment -- 
	---------------------
	local TextAlignment = AceGUI:Create("Dropdown")
	TextAlignment:SetList({
	L["AlignmentLeft"], L["AlignmentRight"]
	})
	TextAlignment:SetCallback("OnValueChanged", function(widget, event, key)

	if SinStatsDB.TextIdentKey == 2 and SinStatsDB.SinDirection then
		SinStatsDB.TextIdentKey = 1
		SinStatsFrame:RedrawStats()
		AddonTable:RunAllEvents()
		TextAlignment:SetValue(SinStatsDB.TextIdentKey)
	else
		SinStatsDB.TextIdentKey = key
		SinStatsFrame:RedrawStats()
		AddonTable:RunAllEvents()		
	end
		
    end)
    TextAlignment:SetValue(SinStatsDB.TextIdentKey)
    TextAlignment:SetLabel(L["StatsAlignTitle"])
	TextAlignment:SetWidth(150)
    TextAlignment.frame:SetParent(sheet)
	TextAlignment.frame:SetPoint("CENTER", 170, 0)	
	
	----------------
	-- Stat Order --
	----------------		
	local statsOrder = AceGUI:Create("Dropdown")
	statsOrder:SetList({
	L["DefaultOptionText"], "Tab"
	})
	statsOrder:SetCallback("OnValueChanged", function(widget, event, key)
		SinStatsDB.OrderKey = key
		if SinStatsDB.OrderKey == 1 then
			SinStatsDB.GroupOrder = false
		else
			SinStatsDB.GroupOrder = true
		end
		SinStatsFrame:RedrawStats()
    end)
    statsOrder:SetValue(SinStatsDB.OrderKey)
    statsOrder:SetLabel(L["StatsGroupTitle"])
	statsOrder:SetWidth(150)
    statsOrder.frame:SetParent(sheet)
	statsOrder.frame:SetPoint("LEFT", 110, -50)		


	--------------------
	-- Text Alignment --
	--------------------	
	sheet.Direction = CreateCheckBox(sheet, "Direction", "", SinStatsDB, "SinDirection", L["TextRowsTooltip"])
    sheet.Direction.ignoreUpdate = true
    sheet.Direction:SetPoint('TOP', sheet.Icons, 'BOTTOM', 55, -110)
    sheet.Direction:HookScript('OnClick', function(self)
        local Setting = self.key[self.entry]
        self:SetText(Setting and L["TextRowsHorizontal"] or L["TextRowsVertical"])
        SinStatsFrame:RedrawStats()
        self:GetParent().Rows:SetShown(self:GetChecked())
		if Setting then
		SinStatsDB.TextIdentKey = 1
		TextAlignment:SetValue(SinStatsDB.TextIdentKey)
		SinStatsFrame:RedrawStats()
		AddonTable:RunAllEvents()
		end
    end)
    sheet.Direction:SetText(SinStatsDB.SinDirection and L["TextRowsHorizontal"] or L["TextRowsVertical"])

	---------------	
	-- Text Rows --
	---------------	
	sheet.Rows = CreateFrame("Slider", "SinStatsSlider", sheet, 'OptionsSliderTemplate')
    sheet.Rows:SetShown(SinStatsDB.SinDirection)
    sheet.Rows:SetPoint("TOPLEFT", sheet.Direction, "BOTTOMLEFT", 20, -16)
    sheet.Rows.Low:SetText('1'); 
    sheet.Rows.High:SetText('5');   
    sheet.Rows.Text:SetText(L["TextRowsSliderTitle"]);
    sheet.Rows:SetMinMaxValues(1, 5)
    sheet.Rows:SetValueStep(1)
    sheet.Rows.key = SinStatsDB
    sheet.Rows.entry = "StatRows"
    sheet.Rows:SetValue(SinStatsDB.StatRows or 1)
    sheet.Rows.Label = sheet.Rows:CreateFontString(nil, "OVERLAY");
    sheet.Rows.Label:SetFontObject("GameFontHighlightSmall");
    sheet.Rows.Label:SetPoint("TOP", sheet.Rows, "BOTTOM", 3, 0);     
    sheet.Rows:SetScript("OnValueChanged", function (self)
        local value = math.floor(self:GetValue())
        self.key[self.entry] = value
        SinStatsFrame:RedrawStats()
        self.Label:SetText(L["SliderCurrentText"] .. self.key[self.entry])
    end)
    sheet.Rows:GetScript("OnValueChanged")(sheet.Rows)	

	----------------	
	-- Text Style --
	----------------	
	local textStyle = AceGUI:Create("Dropdown")
	textStyle:SetList({
	L["TextStyleNormal"], L["TextStyleShort"]
	})
	if (SinStatsDB.SinAbrev == false) then
		SinStatsDB.StyleKey = 1
	else
		SinStatsDB.StyleKey = 2
	end
	textStyle:SetCallback("OnValueChanged", function(widget, event, key)
		SinStatsDB.StyleKey = key
		if SinStatsDB.StyleKey == 1 then
			SinStatsDB.SinAbrev = false
		else
			SinStatsDB.SinAbrev = true
		end
		AddonTable:RunAllEvents()
    end)
    textStyle:SetValue(SinStatsDB.StyleKey)
    textStyle:SetLabel(L["TextStyleTitle"])
	textStyle:SetWidth(135)
    textStyle.frame:SetParent(sheet)
	textStyle.frame:SetPoint("CENTER", 10, -50)	

	---------------	
	-- Text Size --
	---------------
	sheet.Size = CreateFrame("Slider", "SinStatsSlider", sheet, 'OptionsSliderTemplate')
	sheet.Size:SetPoint('TOP', sheet.mmToggle, 'BOTTOM', 70, -160)
	sheet.Size.Low:SetText('8'); 
	sheet.Size.High:SetText('40');   
	sheet.Size.Text:SetText(L["SliderTextSize"]);
	sheet.Size:SetMinMaxValues(8, 40)
	sheet.Size:SetValueStep(1)
	sheet.Size.key = SinStatsDB
	sheet.Size.entry = "StatFontSize"
	sheet.Size:SetValue(SinStatsDB.StatFontSize)
	sheet.Size.Label = sheet.Size:CreateFontString(nil, "OVERLAY");
	sheet.Size.Label:SetFontObject("GameFontHighlightSmall");
	sheet.Size.Label:SetPoint("TOP", sheet.Size, "BOTTOM", 0, -5);		
	sheet.Size:SetScript("OnValueChanged", function (self)
		local value = math.floor(self:GetValue())
		self.key[self.entry] = value
		SinStatsFrame:RedrawStats()
		SinStatsFrame:ResizeStats()		
		AddonTable:RunAllEvents()		
		self.Label:SetText(L["SliderCurrentText"] .. self.key[self.entry])
	end)
	sheet.Size:GetScript("OnValueChanged")(sheet.Size)

	for grp=1, #AddonTable.Groups do
		tab = CreateTab(grp+1, f, AddonTable.Groups[grp])
		sheet = tab.widgets 
		sheet.Label = CreateSheetLabel(sheet, "|cffF0851A"..AddonTable.Groups[grp] .. L["SettingsTextTabs"] .. "|r")
		sheet.Label:SetPoint("TOP", sheet, "TOP", 0, -30);
		AddCheckBoxes(sheet, grp, colWidth, rowOffset, colOffset)
		
		sheet.EnableAll = CreateFrame('Button', '$parentEnableAll', sheet, "UIMenuButtonStretchTemplate")
		sheet.EnableAll:SetSize(110, 25)
		sheet.EnableAll:SetText(L["EnableAllButton"])
		sheet.EnableAll:SetPoint('BOTTOMLEFT', 0, 43)
		sheet.EnableAll:SetScript('OnClick', function(self)
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
		local Parent = self:GetParent()
			for k, v in ipairs(Parent.CheckBoxes) do
				v:SetChecked(true)
				v.key[v.entry] = true
				if not v.ignoreUpdate then
					SinStatsFrame.Stats[v.entry]:Show()
				end
			end
			SinStatsFrame:RedrawStats()
			SinStatsFrame:ResizeStats()		
			AddonTable:RunAllEvents()
		end)	
		
		sheet.DisableAll = CreateFrame('Button', '$parentDisableAll', sheet, "UIMenuButtonStretchTemplate")
		sheet.DisableAll:SetSize(110, 25)
		sheet.DisableAll:SetText(L["DisableAllButton"])
		sheet.DisableAll:SetPoint('BOTTOMLEFT', 120, 43)
		sheet.DisableAll:SetScript('OnClick', function(self)
		PlaySound(SOUNDKIT.IG_MAINMENU_OPTION_CHECKBOX_ON)
		local Parent = self:GetParent()
			for k, v in ipairs(Parent.CheckBoxes) do
				v:SetChecked(false)
				v.key[v.entry] = false
				if not v.ignoreUpdate then
					SinStatsFrame.Stats[v.entry]:Hide()
				end
			end
			SinStatsFrame:RedrawStats()
			SinStatsFrame:ResizeStats()		
			AddonTable:RunAllEvents()					
		end)
		
	end
	
	TabOnClick(f.Tabs[1])	
	
	--------------------------------------
	-- Factory function for break lines --
	--------------------------------------
	local function CreateOptionLine(parent)
		local f = parent:CreateLine()
			f:SetColorTexture(1,0.49,0.04,0.5)
			f:SetStartPoint("LEFT",120,137)
			f:SetEndPoint("RIGHT",-120,137)
			f:SetThickness(1)
			f:Show()
		return f
	end	
	
	sheet.OptionLine = CreateOptionLine(SinStatsConfigFrameTab2.widgets)
	sheet.OptionLine = CreateOptionLine(SinStatsConfigFrameTab3.widgets)
	sheet.OptionLine = CreateOptionLine(SinStatsConfigFrameTab4.widgets)
	sheet.OptionLine = CreateOptionLine(SinStatsConfigFrameTab5.widgets)
	sheet.OptionLine = CreateOptionLine(SinStatsConfigFrameTab6.widgets)
	sheet.OptionLine = CreateOptionLine(SinStatsConfigFrameTab7.widgets)	
	
end

SinStatsOptions = {};

SinStatsOptions.panel = CreateFrame( "Frame", "SinStatsOptionsPanel", UIParent );
SinStatsOptions.panel.name = "SinStats";
InterfaceOptions_AddCategory(SinStatsOptions.panel);


local maintitle = SinStatsOptions.panel:CreateFontString("MainTitle", "OVERLAY", "GameFontHighlightLarge")
maintitle:SetPoint("TOP", "SinStatsOptionsPanel", "TOP", 0, -15)
maintitle:SetText("|cff00f26dSinStats|r")
maintitle:SetFont("Fonts\\FRIZQT__.TTF", 45)

local wowversion = SinStatsOptions.panel:CreateFontString("WowVersion", "OVERLAY", "GameFontHighlightLarge")
wowversion:SetPoint("TOP", "MainTitle", "BOTTOM", 0, -10)
wowversion:SetText(L["ExpansionTitle"])
wowversion:SetFont("Fonts\\FRIZQT__.TTF", 30)

local OptionButton = CreateFrame('Button', '$parentSinStatsOptionsPanel', SinStatsOptionsPanel, "UIPanelButtonTemplate")
OptionButton:SetPoint("TOP", "WowVersion", "BOTTOM", 0, -40)
OptionButton:SetSize(160, 25)
OptionButton:SetText(L["OpenSettingsButton"])
OptionButton:SetScript('OnClick', function(self)
	InterfaceOptionsFrame:Hide()
	HideUIPanel(GameMenuFrame)
	AddonTable:ToggleConfig()
end)

local tipText = SinStatsOptions.panel:CreateFontString("TipText", "OVERLAY", "GameFontHighlight")
tipText:SetPoint("TOP", "WowVersion", "BOTTOM", 0, -150)
tipText:SetText(L["InterfaceBodyText1"])

local tipTextSnd = SinStatsOptions.panel:CreateFontString("TipTextSnd", "OVERLAY", "GameFontHighlight")
tipTextSnd:SetPoint("TOP", "TipText", "BOTTOM", 0, -3)
tipTextSnd:SetText(L["InterfaceBodyText2"])

local VersionText = SinStatsOptions.panel:CreateFontString("VersionText", "OVERLAY", "GameFontHighlight")
VersionText:SetPoint("TOP", "TipTextSnd", "BOTTOM", 0, -70)
VersionText:SetText(L["InterfaceVersion"] .. "|cff00f26d" .. addVer .. "|r")

local authorText = SinStatsOptions.panel:CreateFontString("authorText", "OVERLAY", "GameFontHighlight")
authorText:SetPoint("TOP", "VersionText", "BOTTOM", 0, -10)
authorText:SetText(L["InterfaceAuthor"] .. "|cff00f26dSinba|r")




local AddName, AddonTable = ...
local L = AddonTable.L 

if AddonTable.locale == "deDE" then

	------------------
	-- Stats on HUD --
	------------------
	L["APLong"] = "AP: "
	L["APShort"] = "AP: "
	L["RAPLong"] = "rAP: "
	L["RAPShort"] = "rAP: "	
	L["DMGLong"] = "DMG: "
	L["DMGShort"] = "DMG: "	
	L["DPSLong"] = "DPS: "
	L["DPSShort"] = "DPS: "	
	L["rDMGLong"] = "rDMG: "
	L["rDMGShort"] = "rDMG: "	
	L["rDPSLong"] = "rDPS: "
	L["rDPSShort"] = "rDPS: "		
	L["FireLong"] = "Fire: +"
	L["FireShort"] = "FIR: "
	L["FrostLong"] = "Frost: +"
	L["FrostShort"] = "FRO: "
	L["ArcaneLong"] = "Arcane: +"
	L["ArcaneShort"] = "ARC: "
	L["ShadowLong"] = "Shadow: +"
	L["ShadowShort"] = "SHA: "
	L["NatureLong"] = "Nature: +"
	L["NatureShort"] = "NAT: "
	L["HealingLong"] = "Healing: +"
	L["HealingShort"] = "HEAL: "
	L["HolyLong"] = "Holy: +"
	L["HolyShort"] = "HOL: "	
	L["CritLong"] = "Crit: "
	L["CritShort"] = "CRIT: "	
	L["CritBossLong"] = "Crit+: "
	L["CritBossShort"] = "CRIT+: "		
	L["CritCapLong"] = "Crit Cap: "
	L["CritCapShort"] = "CAP: "	
	L["rCritLong"] = "rCrit: "
	L["rCritShort"] = "rCRIT: "	
	L["rCritBossLong"] = "rCrit+: "
	L["rCritBossShort"] = "rCRIT+: "	
	L["SpellCritLong"] = "Spell Crit: "
	L["SpellCritShort"] = "sCRIT: "	
	L["sCritBossLong"] = "Spell Crit+: "
	L["sCritBossShort"] = "sCRIT+: "		
	L["HitLong"] = "Hit: "
	L["HitShort"] = "HIT: "		
	L["rHitLong"] = "rHit: " 
	L["rHitShort"] = "rHIT: "
	L["sHitLong"] = "Spell Hit: " 
	L["sHitShort"] = "sHIT: "
	L["HasteLong"] = "Haste: "
	L["HasteShort"] = "HAS: " 
	L["AsLong"] = "Atk Speed: "
	L["AsShort"] = "AS: "
	L["rHasteLong"] = "rHaste: "
	L["rHASShort"] = "rHAS: "
	L["rAtkSpeedLong"] = "rAtk Speed: "
	L["rAtkSpeedShort"] = "rAS: "
	L["SpellHasteLong"] = "Spell Haste: "
	L["SpellHasteShort"] = "sHAS: "
	L["ArmPenLong"] = "Armor Pen: "
	L["ArmPenShort"] = "ArP: "
	L["ExpLong"] = "Expertise: "
	L["ExpShort"] = "EXP: "		
	L["MissLong"] = "Miss: " 
	L["MissShort"] = "MIS: "
	L["BossMissLong"] = "Miss+: "
	L["BossMissShort"] = "MIS+: "
	L["AvoidLong"] = "Avoidance: "
	L["AvoidShort"] = "AVD: "
	L["CrushLong"] = "Crushing: "
	L["CrushShort"] = "CRS: "
	L["GetCritLong"] = "Get Crit: "
	L["GetCritShort"] = "CRIT-: "
	L["rMissLong"] = "rMiss: "
	L["rMissShort"] = "rMIS: " 
	L["rMissBossLong"] = "rMiss+: "
	L["rMissBossShort"] = "rMIS+: "
	L["SpellMissLong"] = "Spell Miss: " 
	L["SpellMissShort"] = "sMIS: " 
	L["SpellBossMissLong"] = "Spell Miss+: " 
	L["SpellBossMissShort"] = "sMIS+: "
	L["MP2Long"] = "MP2: " 
	L["MP2Short"] = "MP2: " 
	L["MP2CastingLong"] = "MP2 Casting: " 
	L["MP2CastingShort"] = "MP2+: "
	L["MP5Long"] = "MP5: " 
	L["MP5Short"] = "MP5: "
	L["MP5CastingLong"] = "MP5 Casting: " 
	L["MP5CastingShort"] = "MP5+: "	
	L["ResilLong"] = "Resilience: " 
	L["ResilShort"] = "RES: "		
	L["ArmorLong"] = "Armor: " 
	L["ArmorShort"] = "ARM: "
	L["MitigationLong"] = "Mitigation: " 
	L["MitigationShort"] = "MIT: "
	L["DefenseLong"] = "Defense: " 
	L["DefenseShort"] = "DEF: "
	L["DodgeLong"] = "Dodge: " 
	L["DodgeShort"] = "DOD: "
	L["ParryLong"] = "Parry: " 
	L["ParryShort"] =	"PAR: " 
	L["BlockLong"] = "Block: " 
	L["BlockShort"] = "BLO: " 
	L["FireResLong"] = "Fire Res: " 
	L["FireResShort"] = "FR: "
	L["FrostResLong"] = "Frost Res: " 
	L["FrostResShort"] = "FrR: "
	L["ShadowResLong"] = "Shadow Res: " 
	L["ShadowResShort"] = "SR: "
	L["ArcaneResLong"] = "Arcane Res: " 
	L["ArcaneResShort"] = "AR: "	
	L["NatureResLong"] = "Nature Res: " 
	L["NatureResShort"] = "NR: " 	
	L["SpeedLong"] = "Speed: " 
	L["SpeedShort"] = "SPE: "
	L["DurabilityLong"] = "Durability: " 
	L["DurabilityShort"] = "DUR: "
	L["BuffsLong"] = "Buffs: " 
	L["BuffsShort"] = "BUF: "	
	L["DebuffsLong"] = "Debuffs: " 
	L["DebuffsShort"] = "DEB: "	
	L["PingLong"] = "Ping: " 
	L["PingShort"] = "LAG: "
	L["FPSLong"] = "FPS: " 
	L["FPSShort"] = "FPS: "
	
	-----------------------------------
	-- Spells and Levels in Tooltips --
	-----------------------------------
	L["BloodFrenzy"] = "|cffC69B6DBlood Frenzy|r"
	L["CurseofElements"] = "|cff8788EECurse of Elements|r"
	L["FireVulnerability"] = "|cff3FC7EBFire Vulnerability|r"
	L["Hemorrhage"] = "|cffFFF468Hemorrhage|r"
	L["HuntersMark"] = "|cffAAD372Hunter's Mark|r"	
	L["InsectSwarm"] = "|cffFF7C0AInsect Swarm|r"
	L["Misery"] = "|cffffffffMisery|r"
	L["SealofCrusader"] = "|cffF48CBASeal of the Crusader (Improved)|r"
	L["ScorpidSting"] = "|cffAAD372Scorpid Sting|r"
	L["SurvivalofFittest"] = "|cffFF7C0ASurvival of the Fittest|r"
	L["ShadowWeaving"] = "|cffffffffShadow Weaving|r"
	L["ShadowVulnerability"] = "|cff8788EEShadow Vulnerability|r"
	L["Stormstrike"] = "|cff0070DDStormstrike|r"
	L["WintersChill"] = "|cff3FC7EBWinter's Chill|r"
	L["SpellPowerModifiers"] = "Spell Power Modifiers"
	L["NPCPlus3"] = "NPC +3 Levels"
	L["NPC1to5"] = "NPC +1 to +5 Levels "
	L["NPCAnyLevel"] = "NPC of any Level"
	L["DefaultValueText"] = "\n\n|cffF0851ADefault Value:|r "
	L["ScalingText"] = "\n|cffF0851AScaling:|r "
	L["SinLive"] = "|cff00f26dSinLive™ Stat! \nThis stat is interactive and will scale based on your current target!|r\n\n"
	L["TipsAndInfo"] = "|cff00f26dTips and Info!|r\n\n"	
	
	-------------------
	-- Settings Menu --
	-------------------
	
	-- Tabs
	L["HUDTab"] = "|cffF0851AHUD|r"
	L["MeleeTab"] = "|cffF0851AMelee|r"
	L["DefenseTab"] = "|cffF0851ADefense|r"
	L["RangedTab"] = "|cffF0851ARanged|r"
	L["SpellTab"] = "|cffF0851ASpell|r"
	L["ResistanceTab"] = "|cffF0851AResistance|r"	
	L["MiscTab"] = "|cffF0851AMisc|r"	
	
	--- HUD
	L["HUDSettings"] = "|cffF0851AHUD Settings|r"
	L["GeneralOptionsText"] = "|cff00f26dGeneral Options|r"
	L["StatsOptionsText"] = "|cff00f26dStats Text Options|r"
	L["SettingsTextTabs"] = " Settings|r"
	
	---- Buttons and Sliders
	L["SliderTextSize"] = "Text Size"
	L["SliderCurrentText"] = "Current: "
	L["EnableAllButton"] = "Enable All Stats"
	L["DisableAllButton"] = "Disable All Stats"	
	L["ResetPositionButton"] = "Reset \nPosition"
	L["ResetPositionPopup"] = "Reset the HUD's position ?"	
	
	---- Options
	L["HUDEnable"] = "HUD [|cff00f26dEnabled|r]"
	L["HUDDisable"] = "HUD [|cffC41E3ADisabled|r]"
	L["HUDTooltip"] = "Toggle the Stats Frame"
	
	L["HUDLocked"] = "HUD [|cffC41E3ALocked|r]"
	L["HUDUnlocked"] = "HUD [|cff00f26dUnlocked|r]"
	L["HUDLockTooltip"] = "Locks/Unlocks the Stats frame to move it\nThis option can also be performed by Shift + Right-Clicking on the Minimap Button"
	
	L["MinimapEnable"] = "Minimap Button [|cff00f26dEnabled|r]"
	L["MinimapDisable"] = "Minimap Button [|cffC41E3ADisabled|r]"
	L["MinimapTooltip"] = "Toggle the minimap button"
	
	L["StatsIconsEnable"] = "Stats Icons [|cff00f26dEnabled|r]"
	L["StatsIconsDisable"] = "Stats Icons [|cffC41E3ADisabled|r]"
	L["StatsIconsTooltip"] = "Toggle the icons on the HUD"
	
	L["ChangeFontsTitle"] = "|cffFFFFFFChange Fonts|r"
	L["TextOutlineTitle"] = "|cffFFFFFFText Outline|r"
	L["StatsAlignTitle"] = "|cffFFFFFFStats Alignment|r"
	L["StatsGroupTitle"] = "|cffFFFFFFStats Grouping|r"
	L["TextStyleTitle"] = "|cffFFFFFFText Style|r"
	L["TextRowsSliderTitle"] = "Number of Rows"
	L["TextRowsVertical"] = "Text Rows [|cff00f26dVertical|r]"
	L["TextRowsHorizontal"] = "Text Rows [|cffF2A427Horizontal|r]"
	L["TextRowsTooltip"] = "Changes the direction of the stats, between vertical and horizontal\nIf Horizontal is selected, you will have the option to set the\nnumber of stats displayed per row"
	L["CountourOption1"] = "Thin"
	L["CountourOption2"] = "Thick"
	L["CountourOption3"] = "Monochrome"
	L["CountourOption4"] = "Thin Monochrome"
	L["CountourOption5"] = "Thick Monochrome"
	L["CountourOption6"] = "None"
	L["AlignmentLeft"] = "Left"	
	L["AlignmentRight"] = "Right"
	L["DefaultOptionText"] = "Default"
	L["TextStyleNormal"] = "Normal"
	L["TextStyleShort"] = "Short"	
	
	----- Minimap button tooltips
	L["MimimapTooltipLine1"] = "[|cff00f26dLeft Click|r] to |cffF2A427Open/Close|r the settings"
	L["MimimapTooltipLine2"] = "[|cff00f26dRight Click|r] to |cffF2A427Enable/Disable|r the stats HUD"
	L["MimimapTooltipLine3"] = "[|cff00f26dShift + Right Click|r] to |cffF2A427Lock/Unlock|r the stats HUD"
	
	-- Interface/Addons Panel
	L["ExpansionTitle"] = "|cffF2A427Burning Crusade Classic|r"
	L["OpenSettingsButton"] = "|cffFFFFFFOpen SinStats Settings|r"
	L["InterfaceBodyText1"] = "|cffF2A427The settings panel can be accessed with the commands " .. "|cff00f26d/sinstats|r" .. " or " .. "|cff00f26d/ss|r"
	L["InterfaceBodyText2"] = "|cffF2A427The" .." |cff00f26dminimap button|r" .. " can also be used to quickly access the settings.|r"
	L["InterfaceVersion"] = "|cffF2A427Version:|r "
	L["InterfaceAuthor"] = "|cffF2A427Author:|r "
	

	--- Stats text on menu tabs
	L["AttackPower"] = "Attack Power" 
	L["AttackPowerTooltip"] = L["TipsAndInfo"] .. "A red |cffC41E3AAttack Power|r value indicates that you\nare affected by a debuff related to this stat"
	---
	L["RangedAttackPower"] = " Attack Power |cff00f26d+|r" 
	L["RangedAttackPowerTooltip"] = L["SinLive"] .. "A red |cffC41E3AAttack Power|r value indicates that you are affected by a debuff related to this stat\nA green |cff00f26dAttack Power|r value indicates that Hunter's Mark ability is applied on your target\n" .. L["ScalingText"] .. L["HuntersMark"]		
	---	
	L["Damage"] = " Damage |cff00f26d+|r" 
	L["DamageTooltip"] = L["SinLive"] .. "A red |cffC41E3ADamage|r value indicates that you are affected by a debuff \nrelated to this stat\n" .. L["ScalingText"] .."\n".. L["BloodFrenzy"] .."\n".. L["Hemorrhage"]
	---	
	L["DamagePerSecond"] = " Damage per Second" 
	L["DamagePerSecondTooltip"] = L["TipsAndInfo"] .. "Displays your DPS with Melee Weapons\nA red |cffC41E3ADPS|r value indicates that you\nare affected by a debuff related to this stat"
	---	
	L["RangeDamage"] = " Damage |cff00f26d+|r"
	L["RangeDamageTooltip"] = L["SinLive"] .. "A red |cffC41E3ADamage|r value indicates that you are affected by a debuff \nrelated to this stat\n" .. L["ScalingText"] .."\n".. L["BloodFrenzy"] .."\n".. L["Hemorrhage"]
	---	
	L["RangeDamagePerSecond"] = " Damage per Second"
	L["RangeDamagePerSecondTooltip"] = L["TipsAndInfo"] .. "Displays your DPS with Range Weapons\nA red |cffC41E3ADPS|r value indicates that you\nare affected by a debuff related to this stat"
	---	
	L["FirePower"] = " Fire Power |cff00f26d+|r"
	L["FirePowerTooltip"] = L["SinLive"] .. "Includes Fire damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"] .."\n".. L["FireVulnerability"]
	---	
	L["FrostPower"] = " Frost Power |cff00f26d+|r"
	L["FrostPowerTooltip"] = L["SinLive"] .. "Includes Frost damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"]
	---		
	L["ArcanePower"] = " Arcane Power |cff00f26d+|r"
	L["ArcanePowerTooltip"] = L["SinLive"] .. "Includes Arcane damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"]
	---		
	L["ShadowPower"] = " Shadow Power |cff00f26d+|r"
	L["ShadowPowerTooltip"] = L["SinLive"] .. "Includes Shadow damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] ..", "..  L["ShadowWeaving"] .."\n".. L["ShadowVulnerability"] ..", ".. L["CurseofElements"]
	---	
	L["NaturePower"] = " Nature Power |cff00f26d+|r"
	L["NaturePowerTooltip"] = L["SinLive"] .. "Includes Nature damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["Stormstrike"]
	---	
	L["HealingPower"] = " Healing Power" 
	L["HealingPowerTooltip"] = L["TipsAndInfo"] .. "Includes +healing from gear, consumables, enchants and talents"
	---	
	L["HolyPower"] = " Holy Power |cff00f26d+|r" 
	L["HolyPowerTooltip"] = L["SinLive"] .. "Includes Holy damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["SealofCrusader"]		
	---	
	L["CriticalStrike"] = " Critical Strike |cff00f26d+|r"
	L["CriticalStrikeTooltip"] = L["SinLive"] .. "Spell book Melee Critical Strike value\nAlso represents your Critical Strike in PvP\n" .. L["ScalingText"] .."\n".. L["SealofCrusader"]
	---	
	L["CriticalStrikeBoss"] = " Critical vs Boss |cff00f26d+|r"
	L["CriticalStrikeBossTooltip"] = L["SinLive"] .. "Melee Critical Strike value in PvE, against a higher level NPC\nIncludes all Crit Suppressions Auras" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPC1to5"] .."\n".. L["SealofCrusader"]
	---	
	L["CriticalCap"] = " Critical Cap"
	L["CriticalCapTooltip"] = L["TipsAndInfo"] .. "Displays the Melee Critical Strike Cap against a Raid Boss \nbased on the weapons used and other character stats"    		
	---	
	L["RangeCritical"] = " Critical Strike"
	L["RangeCriticalTooltip"] = L["TipsAndInfo"] .. "Spell book Ranged Critical Strike value\nAlso represents your Critical Strike in PvP"
	---	
	L["RangeCriticalBoss"] = " Critical vs Boss |cff00f26d+|r"
	L["RangeCriticalBossTooltip"] = L["SinLive"] .. "Ranged Critical Strike value in PvE, against a higher level NPC\nIncludes all Crit Suppressions Auras" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["SpellCritical"] = " Critical Strike |cff00f26d+|r"
	L["SpellCriticalTooltip"] = L["SinLive"] .. "Spell book Critical Strike value. Also represents your Critical Strike in PvP\nSpell-specific Crit Talents are colored and appear next to the current value\n" .. L["ScalingText"] .."\n".. L["SealofCrusader"] .."\n".. L["WintersChill"]
	---	
	L["SpellCriticalBoss"] = " Critical vs Boss |cff00f26d+|r"
	L["SpellCriticalBossTooltip"] = L["SinLive"] .. "Spell Critical Strike value in PvE, against a higher level NPC\nIncludes all Crit Suppressions Auras\nSpell-specific Crit Talents are colored" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPC1to5"] .."\n".. L["SealofCrusader"] .."\n".. L["WintersChill"]
	---	
	L["HitMelee"] = " Hit"
	L["HitMeleeTooltip"] = L["TipsAndInfo"] .. "Displays the Melee Hit Chance percentage. Includes all Hit rating sources"
	---	
	L["HitRange"] = " Hit"
	L["HitRangeTooltip"] = L["TipsAndInfo"] .. "Displays the Ranged Hit Chance percentage. Includes all Hit rating sources"
	---	
	L["HasteMelee"] = " Haste"
	L["HasteMeleeTooltip"] = L["TipsAndInfo"] .. "Haste bonus percentage from abilities procs, enchants,\ntalents, trinkets, consumables and buffs"
	---	
	L["AttackSpeed"] = " Attack Speed"
	L["AttackSpeedTooltip"] = L["TipsAndInfo"] .. "Weapon speed for Main Hand and Off Hand"
	---	
	L["ArmorPenetration"] = " Armor Penetration"
	L["ArmorPenetrationTooltip"] = L["TipsAndInfo"] .. "Percentage of your target's armor that your physical attacks ignore"		
	---	
	L["Expertise"] = " Expertise"
	L["ExpertiseTooltip"] = L["TipsAndInfo"] .. "Expertise reduction to chance to be dodged or parried, in percent for \nboth the Main-hand and the Off-hand"		
	---	
	L["MissMelee"] = " Miss Chance"
	L["MissMeleeTooltip"] = L["TipsAndInfo"] .. "Miss chance with melee weapons against an NPC of the same level"
	---	
	L["MissMeleeBoss"] = " Miss vs Boss |cff00f26d+|r"
	L["MissMeleeBossTooltip"] = L["SinLive"] .. "Miss chance with melee weapons against an NPC of Boss Levels" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["Avoidance"] = " Avoidance |cff00f26d+|r"
	L["AvoidanceTooltip"] = "|cff00f26dSinLive™ Stat!\nThis stat is interactive and will scale based on your current target!|r\n\nChance to avoid Crushing Blows \nA green |cff00f26dAvoidance|r text indicates that you are uncrushable" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["ScorpidSting"] .."\n".. L["InsectSwarm"]
	---		
	L["Crushing"] = " Crushing |cff00f26d+|r"
	L["CrushingTooltip"] = "|cff00f26dSinLive™ Stat!\nThis stat is interactive and will scale based on your current target!|r\n\nChance to be hit by a Crushing Blow \nA green |cff00f26dCrushing|r text indicates that you are uncrushable" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["ScorpidSting"] .."\n".. L["InsectSwarm"]
	---	
	L["CriticallyHit"] = " Critically Hit |cff00f26d+|r"
	L["CriticallyHitTooltip"] = "|cff00f26dSinLive™ Stat!\nThis stat is interactive and will scale based on your current target!|r\n\nChance to be Critically hit by an NPC \nA green |cff00f26dCrtically Hit|r text indicates that you cannot be critically hit\nA red |cffC41E3ACrtically Hit|r indicates that you are under the critical hit cap" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPCAnyLevel"] .."\n".. L["SurvivalofFittest"]
	---	
	L["HasteRange"] = " Haste"
	L["HasteRangeTooltip"] = L["TipsAndInfo"] .. "Haste bonus percentage from abilities procs, enchants\ntalents, trinkets, consumables, and buffs"
	---	
	L["AtkSpeedRange"] = " Attack Speed"
	L["AtkSpeedRangeTooltip"] = L["TipsAndInfo"] .. "Weapon speed of the equipped range weapon"		
	---	
	L["MissRange"] = " Miss Chance"
	L["MissRangeTooltip"] = L["TipsAndInfo"] .. "Miss chance with ranged weapons against an NPC of the same level"
	---	
	L["MissRangeBoss"] = " Miss vs Boss |cff00f26d+|r"
	L["MissRangeBossTooltip"] = L["SinLive"] .. "Miss chance with range weapons against an NPC of +3 levels" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["HitSpell"] = " Hit"
	L["HitSpellTooltip"] = L["TipsAndInfo"] .. "Spell-specific Hit Talents are colored"
	---	
	L["HasteSpell"] = " Haste"
	L["HasteSpellTooltip"] = L["TipsAndInfo"] .. "Haste bonus percentage from abilities procs,\ntalents, trinkets, consumables and buffs"
	---	
	L["MissSpell"] = " Miss Chance"
	L["MissSpellTooltip"] = L["TipsAndInfo"] .. "Miss chance against an NPC of the same level"
	---	
	L["MissSpellBoss"] = " Miss vs Boss"
	L["MissSpellBossTooltip"] = L["TipsAndInfo"] .. "Miss chance against an NPC of +3 levels with Spells"
	---	
	L["ManaRegen"] = " Mana Regen"
	L["ManaRegenTooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per tick (every 2 secs),\nalso known as MP2 (outside 5-sec rule). \nIt reflects the mana bar regeneration"
	---	
	L["CastingRegen"] = " Casting Regen"
	L["CastingRegenTooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per tick (every 2 secs) while casting.\nAlso known as MP2 (inside 5-sec rule).\nIt reflects the mana bar regeneration"
	---	
	L["MP5"] = " MP5"
	L["MP5Tooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per 5 seconds (Outside 5-second rule)"
	---	
	L["CastingMP5"] = " Casting MP5"
	L["CastingMP5Tooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per 5 seconds while casting (Inside 5-second rule)"
	---	
	L["Resilience"] = " Resilience"
	L["ResilienceTooltip"] = L["TipsAndInfo"] .. "Percentage of periodic damage reduction, chance \nto be critically hit and damage reduction of mana drains \nand critical strikes"			
	---	
	L["Armor"] = " Armor"
	L["ArmorTooltip"] = L["TipsAndInfo"] .. "Effective Armor, including all modifiers\nA red |cffC41E3AArmor|r value indicates that you are affected by a debuff related to this stat"	
	---
	L["Mitigation"] = " Mitigation"
	L["MitigationTooltip"] = L["TipsAndInfo"] .. "Percentage of damage reduction against an NPC of +3 levels"
	---		
	L["Defense"] = " Defense"
	L["DefenseTooltip"] = L["TipsAndInfo"] .. "Displays the effective Defense skills. Includes all +Defense sources"
	---	
	L["Dodge"] = " Dodge"
	L["DodgeTooltip"] = L["TipsAndInfo"] .. "Displays the chance to Dodge an attack. Includes all Dodge rating sources"
	---	
	L["Parry"] = " Parry"
	L["ParryTooltip"] = L["TipsAndInfo"] .. "Displays the chance to Parry an attack. Includes all Parry rating sources"
	---	
	L["Block"] = " Block"
	L["BlockTooltip"] = L["TipsAndInfo"] .. "Displays the chance to Block an attack. Includes all Block rating sources"
	---	
	L["Fire"] = " Fire"
	L["FireTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Fire school of magic\nIncludes all sources"
	---	
	L["Frost"] = " Frost"
	L["FrostTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Frost school of magic\nIncludes all sources"
	---	
	L["Shadow"] = " Shadow"
	L["ShadowTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Shadow school of magic\nIncludes all sources"
	---	
	L["Arcane"] = " Arcane"
	L["ArcaneTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Arcane school of magic\nIncludes all sources"	
	---	
	L["Nature"] = " Nature"
	L["NatureTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Nature school of magic\nIncludes all sources"
	---	
	L["MovementSpeed"] = " Movement Speed"
	L["MovementSpeedTooltip"] = L["TipsAndInfo"] .. "The current movement speed of your character, in real-time.|nA red |cffC41E3ASpeed|r value indicates that you are affected by a slowing\neffect or moving at a slower speed than normal"
	---	
	L["Durability"] = " Durability"
	L["DurabilityTooltip"] = L["TipsAndInfo"] .. "Durability percentage of your currently equipped gear and weapons"
	---	
	L["PlayerBuffs"] = " Player Buffs"
	L["PlayerBuffsTooltip"] = L["TipsAndInfo"] .. "Displays the total number of beneficial auras applied to you"
	---	
	L["TargetDebuffs"] = " Target Debuffs |cff00f26d+|r"
	L["TargetDebuffsTooltip"] = L["SinLive"] .. "Displays the total number of non-beneficial auras (debuffs) applied to your current target\n" .. L["ScalingText"] .. "Targeted NPC"
	---	
	L["Latency"] = " Latency [ms]"
	L["LatencyTooltip"] = " Latency from home computer to Blizzard server in milliseconds"
	---	
	L["Framerate"] = " Framerate [FPS]"
	L["FramerateTooltip"] = " Frames per second [FPS]"
	---	
	L["Money"] = " Money"
	L["MoneyTooltip"] = L["TipsAndInfo"] .. "Total gold in your current character's possession"		

	
return end
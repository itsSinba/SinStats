local AddName, AddonTable = ...
local L = AddonTable.L 

if AddonTable.locale == "zhTW" then

	------------------
	-- Stats on HUD --
	------------------
	L["APLong"] = "攻强: "
	L["APShort"] = "攻强: "
	L["RAPLong"] = "远程攻强: "
	L["RAPShort"] = "远程攻强: "
	L["DMGLong"] = "武器伤害: "
	L["DMGShort"] = "武器伤害: "
	L["DPSLong"] = "DPS: "
	L["DPSShort"] = "DPS: "	
	L["rDMGLong"] = "远程伤害: "
	L["rDMGShort"] = "远程伤害: "
	L["rDPSLong"] = "远程DPS"
	L["rDPSShort"] = "远程DPS"
	L["FireLong"] = "火焰: +"
	L["FireShort"] = "火焰: +"
	L["FrostLong"] = "冰霜: +"
	L["FrostShort"] = "冰霜: +"
	L["ArcaneLong"] = "奥术: +"
	L["ArcaneShort"] = "奥术: +"
	L["ShadowLong"] = "暗影: +"
	L["ShadowShort"] = "暗影: +"
	L["NatureLong"] = "自然: +"
	L["NatureShort"] = "自然: +"
	L["HealingLong"] = "治疗: +"
	L["HealingShort"] = "治疗: +"
	L["HolyLong"] = "神圣: +"
	L["HolyShort"] = "神圣: +"
	L["CritLong"] = "爆击: "
	L["CritShort"] = "爆击: "
	L["CritBossLong"] = "对BOSS爆击: "
	L["CritBossShort"] = "对BOSS爆击: "
	L["CritCapLong"] = "爆击上限: "
	L["CritCapShort"] = "爆击上限: "
	L["rCritLong"] = "远程爆击: "
	L["rCritShort"] = "远程爆击: "
	L["rCritBossLong"] = "对BOSS远程爆击: "
	L["rCritBossShort"] = "对BOSS远程爆击: "
	L["SpellCritLong"] = "法术爆击: "
	L["SpellCritShort"] = "法术爆击: "
	L["sCritBossLong"] = "对BOSS法术爆击: "
	L["sCritBossShort"] = "对BOSS法术爆击: "
	L["HitLong"] = "命中: "
	L["HitShort"] = "命中: "
	L["rHitLong"] = "远程命中: "
	L["rHitShort"] = "远程命中: "
	L["sHitLong"] = "法术命中: "
	L["sHitShort"] = "法术命中: "
	L["HasteLong"] = "急速: "
	L["HasteShort"] = "急速: "
	L["AsLong"] = "武器速度: "
	L["AsShort"] = "武器速度: "
	L["rHasteLong"] = "远程急速: "
	L["rHASShort"] = "远程急速: "
	L["rAtkSpeedLong"] = "远程速度: "
	L["rAtkSpeedShort"] = "远程速度: "
	L["SpellHasteLong"] = "法术急速: "
	L["SpellHasteShort"] = "法术急速: "
	L["ArmPenLong"] = "护甲穿透: "
	L["ArmPenShort"] = "护甲穿透: "
	L["ExpLong"] = "精准: "
	L["ExpShort"] = "精准: "
	L["MissLong"] = "近战未命中: "
	L["MissShort"] = "近战未命中: "
	L["BossMissLong"] = "近战首领未命中: "
	L["BossMissShort"] = "近战首领未命中: "
	L["AvoidLong"] = "免碾压率"
	L["AvoidShort"] = "免碾压率"
	L["CrushLong"] = "被碾压率"
	L["CrushShort"] = "被碾压率"
	L["GetCritLong"] = "被暴击率"
	L["GetCritShort"] = "被暴击率"
	L["rMissLong"] = "远程未命中: "
	L["rMissShort"] = "远程未命中: "
	L["rMissBossLong"] = "远程首领未命中: "
	L["rMissBossShort"] = "远程首领未命中: "
	L["SpellMissLong"] = "法术未命中: "
	L["SpellMissShort"] = "法术未命中: "
	L["SpellBossMissLong"] = "法术首领未命中: "
	L["SpellBossMissShort"] = "法术首领未命中: "
	L["MP2Long"] = "2秒回蓝: "
	L["MP2Short"] = "2秒回蓝: "
	L["MP2CastingLong"] = "2秒施法回蓝: "
	L["MP2CastingShort"] = "2秒施法回蓝: "
	L["MP5Long"] = "5秒回蓝: "
	L["MP5Short"] = "5秒回蓝: "
	L["MP5CastingLong"] = "5秒施法回蓝: "
	L["MP5CastingShort"] = "5秒施法回蓝: "
	L["ResilLong"] = "韧性: "
	L["ResilShort"] = "韧性: "
	L["ArmorLong"] = "护甲: "
	L["ArmorShort"] = "护甲: "
	L["MitigationLong"] = "减伤总计: "
	L["MitigationShort"] = "减伤总计: "
	L["DefenseLong"] = "防御: "
	L["DefenseShort"] = "防御: "
	L["DodgeLong"] = "躲闪: "
	L["DodgeShort"] = "躲闪: "
	L["ParryLong"] = "招架: "
	L["ParryShort"] = "招架: "
	L["BlockLong"] = "格挡: "
	L["BlockShort"] = "格挡: "
	L["FireResLong"] = "火抗: "
	L["FireResShort"] = "火抗: "
	L["FrostResLong"] = "冰抗: "
	L["FrostResShort"] = "冰抗: "
	L["ShadowResLong"] = "暗抗: "
	L["ShadowResShort"] = "暗抗: "
	L["ArcaneResLong"] = "奥抗: "
	L["ArcaneResShort"] = "奥抗: "
	L["NatureResLong"] = "自然抗: "
	L["NatureResShort"] = "自然抗: "
	L["SpeedLong"] = "速度: "
	L["SpeedShort"] = "速度: "
	L["DurabilityLong"] = "装备耐久: "
	L["DurabilityShort"] = "装备耐久: "
	L["BuffsLong"] = "Buffs: " 
	L["BuffsShort"] = "BUF: "	
	L["DebuffsLong"] = "Debuffs: " 
	L["DebuffsShort"] = "DEB: "	
	L["PingLong"] = "延迟: "
	L["PingShort"] = "延迟: "
	L["FPSLong"] = "FPS: "
	L["FPSShort"] = "FPS: "

	-----------------------------------
	-- Spells, Levels in Tooltips --
	-----------------------------------
	L["BloodFrenzy"] = "|cffC69B6D血性狂乱|r"
	L["CurseofElements"] = "|cff8788EE元素诅咒|r"
	L["FireVulnerability"] = "|cff3FC7EB火焰易伤|r"
	L["Hemorrhage"] = "|cffFFF468出血|r"
	L["HuntersMark"] = "|cffAAD372猎人印记|r"	
	L["InsectSwarm"] = "|cffFF7C0A虫群|r"
	L["Misery"] = "|cffffffff悲惨|r"
	L["SealofCrusader"] = "|cffF48CBA强化十字军圣印|r"
	L["ScorpidSting"] = "|cffAAD372毒蝎钉刺|r"
	L["SurvivalofFittest"] = "|cffFF7C0A适者生存|r"
	L["ShadowWeaving"] = "|cffffffff暗影之波|r"
	L["ShadowVulnerability"] = "|cff8788EE暗影易伤|r"
	L["Stormstrike"] = "|cff0070DD风暴打击|r"
	L["WintersChill"] = "|cff3FC7EB深冬之寒|r"
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
	L["MeleeTab"] = "|cffF0851A近战|r"
	L["DefenseTab"] = "|cffF0851ADefense|r"
	L["RangedTab"] = "|cffF0851A远程|r"
	L["SpellTab"] = "|cffF0851A法术|r"
	L["ResistanceTab"] = "|cffF0851A防御|r"
	L["MiscTab"] = "|cffF0851A杂项|r"
	
	--- HUD
	L["HUDSettings"] = "HUD 设置"
	L["GeneralOptionsText"] = "功能开关"
	L["StatsOptionsText"] = "字体设置"
	L["SettingsTextTabs"] = " 设置 "
	
	---- Buttons and Sliders
	L["SliderTextSize"] = "字体大小"
	L["SliderCurrentText"] = "当前"
	L["EnableAllButton"] = "打开本页所有"
	L["DisableAllButton"] = "关闭本页所有"
	L["ResetPositionButton"] = "重置位置"
	L["ResetPositionPopup"] = "重置HUD位置吗？"
	
	---- Options
	L["HUDEnable"] = "HUD [|cff00f26d已启用|r]"
	L["HUDDisable"] = "HUD [|cffC41E3A已禁用|r]"
	L["HUDTooltip"] = "Toggle the Stats Frame"
	
	L["HUDLocked"] = "HUD [|cffC41E3A已锁定|r]"
	L["HUDUnlocked"] = "HUD [|cff00f26d已解锁|r]"
	L["HUDLockTooltip"] = "Lock/Unlock the Stats frame to move it\nThis option can also be performed by Shift + Right-Clicking on the Minimap Button"
	
	L["MinimapEnable"] = "小地图按钮 [|cff00f26d已启用|r]"
	L["MinimapDisable"] = "小地图按钮 [|cffC41E3A已禁用|r]"
	L["MinimapTooltip"] = "Toggle the minimap button"
	
	L["StatsIconsEnable"] = "图标 [|cff00f26d已启用|r]"
	L["StatsIconsDisable"] = "图标 [|cffC41E3A已禁用|r]"
	L["StatsIconsTooltip"] = "Toggle the icons on the HUD"
	
	L["ChangeFontsTitle"] = "字体"
	L["TextOutlineTitle"] = "字体轮廓"
	L["StatsAlignTitle"] = "左右对齐"
	L["StatsGroupTitle"] = "排列方式"
	L["TextStyleTitle"] = "文字风格"
	L["TextRowsSliderTitle"] = "Number of Rows"
	L["TextRowsVertical"] = "排列方向 [|cff00f26d垂直|r]"
	L["TextRowsHorizontal"] = "排列方向 [|cffF2A427水平|r]"
	L["TextRowsTooltip"] = "Change the direction of the stats, between vertical and horizontal\nIf Horizontal is selected, you will have the option to set the\nnumber of stats displayed per row"
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
	L["AttackPower"] = " 攻强"
	L["AttackPowerTooltip"] = L["TipsAndInfo"] .. "A red |cffC41E3A攻强|r value indicates that you\nare affected by a debuff related to this stat"
	---
	L["RangedAttackPower"] = " 攻强 |cff00f26d+|r"
	L["RangedAttackPowerTooltip"] = L["SinLive"] .. "A red |cffC41E3A攻强|r value indicates that you are affected by a debuff related to this stat\nA green |cff00f26d攻强|r value indicates that 猎人印记 ability is applied on your target\n" .. L["ScalingText"] .. L["HuntersMark"]		
	---	
	L["Damage"] = " 武器伤害 |cff00f26d+|r"
	L["DamageTooltip"] = L["SinLive"] .. "A red |cffC41E3A武器伤害|r value indicates that you are affected by a debuff \nrelated to this stat\n" .. L["ScalingText"] .."\n".. L["BloodFrenzy"] .."\n".. L["Hemorrhage"]
	---	
	L["DamagePerSecond"] = " DPS" 
	L["DamagePerSecondTooltip"] = L["TipsAndInfo"] .. "Displays your DPS with Melee Weapons\nA red |cffC41E3ADPS|r value indicates that you\nare affected by a debuff related to this stat"
	---	
	L["RangeDamage"] = " Damage |cff00f26d+|r"
	L["RangeDamageTooltip"] = L["SinLive"] .. "A red |cffC41E3A武器伤害|r value indicates that you are affected by a debuff \nrelated to this stat\n" .. L["ScalingText"] .."\n".. L["BloodFrenzy"] .."\n".. L["Hemorrhage"]
	---	
	L["RangeDamagePerSecond"] = " Damage per Second"
	L["RangeDamagePerSecondTooltip"] = L["TipsAndInfo"] .. "Displays your DPS with Range Weapons\nA red |cffC41E3ADPS|r value indicates that you\nare affected by a debuff related to this stat"
	---	
	L["FirePower"] = " 火焰法强 |cff00f26d+|r"
	L["FirePowerTooltip"] = L["SinLive"] .. "Includes Fire damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"] .."\n".. L["FireVulnerability"]
	---	
	L["FrostPower"] = " 冰霜法强 |cff00f26d+|r"
	L["FrostPowerTooltip"] = L["SinLive"] .. "Includes Frost damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"]
	---		
	L["ArcanePower"] = " 奥术法强 |cff00f26d+|r"
	L["ArcanePowerTooltip"] = L["SinLive"] .. "Includes Arcane damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"]
	---		
	L["ShadowPower"] = " 暗影法强 |cff00f26d+|r"
	L["ShadowPowerTooltip"] = L["SinLive"] .. "Includes Shadow damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .." "..  L["ShadowWeaving"] .."\n".. L["ShadowVulnerability"] .." ".. L["CurseofElements"]
	---	
	L["NaturePower"] = " 自然法强 |cff00f26d+|r"
	L["NaturePowerTooltip"] = L["SinLive"] .. "Includes Nature damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["Stormstrike"]
	---	
	L["HealingPower"] = " 法术治疗 |cff00f26d+|r"
	L["HealingPowerTooltip"] = L["TipsAndInfo"] .. "Includes +healing from gear, consumables, enchants and talents"
	---	
	L["HolyPower"] = " 神圣法强 |cff00f26d+|r"
	L["HolyPowerTooltip"] = L["SinLive"] .. "Includes Holy damage from gear, consumables, enchants and talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["SealofCrusader"]		
	---	
	L["CriticalStrike"] = " 暴击率 |cff00f26d+|r"
	L["CriticalStrikeTooltip"] = L["SinLive"] .. "Spell book Melee Critical Strike value\nAlso represents your Critical Strike in PvP\n" .. L["ScalingText"] .."\n".. L["SealofCrusader"]
	---	
	L["CriticalStrikeBoss"] = " 对BOSS暴击率 |cff00f26d+|r"
	L["CriticalStrikeBossTooltip"] = L["SinLive"] .. "Melee Critical Strike value in PvE, against a higher level NPC\nIncludes all Crit Suppressions Auras" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPC1to5"] .."\n".. L["SealofCrusader"]
	---	
	L["CriticalCap"] = " 爆击上限"
	L["CriticalCapTooltip"] = L["TipsAndInfo"] .. "Displays the Melee Critical Strike Cap against a Raid Boss \nbased on the weapons used and other character stats"    		
	---	
	L["RangeCritical"] = " 暴击率"
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
	L["HitMelee"] = " 命中"
	L["HitMeleeTooltip"] = L["TipsAndInfo"] .. "Displays the Melee Hit Chance percentage. Includes all Hit rating sources"
	---	
	L["HitRange"] = " 命中"
	L["HitRangeTooltip"] = L["TipsAndInfo"] .. "Displays the Ranged Hit Chance percentage. Includes all Hit rating sources"
	---	
	L["HasteMelee"] = " 急速"
	L["HasteMeleeTooltip"] = L["TipsAndInfo"] .. "Haste bonus percentage from abilities procs, enchants,\ntalents, trinkets, consumables and buffs"
	---	
	L["AttackSpeed"] = " 武器攻击速度"
	L["AttackSpeedTooltip"] = L["TipsAndInfo"] .. "Weapon speed for Main Hand and Off Hand"
	---	
	L["ArmorPenetration"] = " 破甲"
	L["ArmorPenetrationTooltip"] = L["TipsAndInfo"] .. "Percentage of your target's armor that your physical attacks ignore"		
	---	
	L["Expertise"] = " 精准"
	L["ExpertiseTooltip"] = L["TipsAndInfo"] .. "Expertise reduction to chance to be dodged or parried, in percent for \nboth the Main-hand and the Off-hand"		
	---	
	L["MissMelee"] = " 未命中率"
	L["MissMeleeTooltip"] = L["TipsAndInfo"] .. "Miss chance with melee weapons against an NPC of the same level"
	---	
	L["MissMeleeBoss"] = " 对BOSS未命中率 |cff00f26d+|r"
	L["MissMeleeBossTooltip"] = L["SinLive"] .. "Miss chance with melee weapons against an NPC of Boss Levels" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["Avoidance"] = " 免碾压率 |cff00f26d+|r"
	L["AvoidanceTooltip"] = L["SinLive"] .. "Chance to avoid Crushing Blows \nA green |cff00f26dAvoidance|r text indicates that you are uncrushable" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["ScorpidSting"] .."\n".. L["InsectSwarm"]
	---		
	L["Crushing"] = " 被碾压率  |cff00f26d+|r"
	L["CrushingTooltip"] = L["SinLive"] .. "Chance to be hit by a Crushing Blow \nA green |cff00f26dCrushing|r text indicates that you are uncrushable" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["ScorpidSting"] .."\n".. L["InsectSwarm"]
	---	
	L["CriticallyHit"] = " 被暴击率 |cff00f26d+|r"
	L["CriticallyHitTooltip"] = L["SinLive"] .. "Chance to be Critically hit by an NPC \nA green |cff00f26dCrtically Hit|r text indicates that you cannot be critically hit\nA red |cffC41E3ACrtically Hit|r indicates that you are under the critical hit cap" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPCAnyLevel"] .."\n".. L["SurvivalofFittest"]
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
	L["MissSpellBoss"] = " 对BOSS未命中率"
	L["MissSpellBossTooltip"] = L["TipsAndInfo"] .. "Miss chance against an NPC of +3 levels with Spells"
	---	
	L["ManaRegen"] = " 魔法回复"
	L["ManaRegenTooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per tick (every 2 secs),\nalso known as MP2 (outside 5-sec rule). \nIt reflects the mana bar regeneration"
	---	
	L["CastingRegen"] = " 施法时魔法回复"
	L["CastingRegenTooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per tick (every 2 secs) while casting.\nAlso known as MP2 (inside 5-sec rule).\nIt reflects the mana bar regeneration"
	---	
	L["MP5"] = " 5秒回蓝"
	L["MP5Tooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per 5 seconds (Outside 5-second rule)"
	---	
	L["CastingMP5"] = " 施法时5秒回蓝"
	L["CastingMP5Tooltip"] = L["TipsAndInfo"] .. "Mana Regeneration per 5 seconds while casting (Inside 5-second rule)"
	---	
	L["Resilience"] = " 韧性"
	L["ResilienceTooltip"] = L["TipsAndInfo"] .. "Percentage of periodic damage reduction, chance \nto be critically hit and damage reduction of mana drains \nand critical strikes"			
	---	
	L["Armor"] = " 护甲"
	L["ArmorTooltip"] = L["TipsAndInfo"] .. "Effective Armor, including all modifiers\nA red |cffC41E3AArmor|r value indicates that you are affected by a debuff related to this stat"	
	---
	L["Mitigation"] = " 减伤总计"
	L["MitigationTooltip"] = L["TipsAndInfo"] .. "Percentage of damage reduction against an NPC of +3 levels"
	---		
	L["Defense"] = " 防御"
	L["DefenseTooltip"] = L["TipsAndInfo"] .. "Displays the effective Defense skills. Includes all +Defense sources"
	---	
	L["Dodge"] = " 躲闪"
	L["DodgeTooltip"] = L["TipsAndInfo"] .. "Displays the chance to Dodge an attack. Includes all Dodge rating sources"
	---	
	L["Parry"] = " 招架"
	L["ParryTooltip"] = L["TipsAndInfo"] .. "Displays the chance to Parry an attack. Includes all Parry rating sources"
	---	
	L["Block"] = " 格挡"
	L["BlockTooltip"] = L["TipsAndInfo"] .. "Displays the chance to Block an attack. Includes all Block rating sources"
	---	
	L["Fire"] = " 火焰"
	L["FireTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Fire school of magic\nIncludes all sources"
	---	
	L["Frost"] = " 冰霜"
	L["FrostTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Frost school of magic\nIncludes all sources"
	---	
	L["Shadow"] = " 暗影"
	L["ShadowTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Shadow school of magic\nIncludes all sources"
	---	
	L["Arcane"] = " 奥术"
	L["ArcaneTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Arcane school of magic\nIncludes all sources"	
	---	
	L["Nature"] = " 自然"
	L["NatureTooltip"] = L["TipsAndInfo"] .. "Displays the resistance value of the Nature school of magic\nIncludes all sources"
	---	
	L["MovementSpeed"] = " 移动速度"
	L["MovementSpeedTooltip"] = L["TipsAndInfo"] .. "The current movement speed of your character, in real-time.|nA red |cffC41E3ASpeed|r value indicates that you are affected by a slowing\neffect or moving at a slower speed than normal"
	---	
	L["Durability"] = " 耐久度"
	L["DurabilityTooltip"] = L["TipsAndInfo"] .. "Durability percentage of your currently equipped gear and weapons"
	---	
	L["PlayerBuffs"] = " 玩家Buff"
	L["PlayerBuffsTooltip"] = L["TipsAndInfo"] .. "Displays the total number of beneficial auras applied to you"
	---	
	L["TargetDebuffs"] = " 目标Debuff"
	L["TargetDebuffsTooltip"] = L["SinLive"] .. "Displays the total number of non-beneficial auras (debuffs) applied to your current target\n" .. L["ScalingText"] .. "Targeted NPC"
	---	
	L["Latency"] = " 延迟"
	L["LatencyTooltip"] = " Latency from home computer to Blizzard server in milliseconds"
	---	
	L["Framerate"] = " FPS"
	L["FramerateTooltip"] = " Frames per second [FPS]"
	---	
	L["Money"] = " 金币"
	L["MoneyTooltip"] = L["TipsAndInfo"] .. "Total gold in your current character's possession"	

return end
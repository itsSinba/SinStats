local AddName, AddonTable = ...
 
if GetLocale() ~= "koKR" then
    return
end

local L = AddonTable.RegisterLocale("koKR")

L["Green"] = "|cff71ffc9"
L["Red"] = "|cffC41E3A"
L["WarColor"] = "|cffC69B6D"
L["RogueColor"] = "|cffFFF468"
L["WarlockColor"] = "|cff8788EE"
L["PalColor"] = "|cffF48CBA"
L["DeathColor"] = "|cffC41E3A"
L["DruidColor"] = "|cffFF7C0A"
L["HunterColor"] = "|cffAAD372"
L["MageColor"] = "|cff3FC7EB"
L["ShamColor"] = "|cff0070DD"

L["SpellPowerModifiers"] = "Spell Power Modifiers\n"
L["ShadowWeaving"] = "어둠의 매듭 \n"
L["Misery"] = "불행 \n"
L["EbonPlague"] = L["DeathColor"] .. "칠흑의 역병 |r\n"
L["ThundraStalker"] = L["DeathColor"] .. "동토의 추적자 |r"
L["RageofRivendare"] = L["DeathColor"] .. "리븐데어의 분노 |r\n"
L["SurvivalofFittest"] = L["DruidColor"] .. "적자 생존 |r\n"
L["FaerieFire"] = L["DruidColor"] .. "요정의 불꽃 |r\n"
L["InsectSwarm"] = L["DruidColor"] .. "곤충 떼 |r"
L["EarthAndMoon"] = L["DruidColor"] .. "대지와 달 |r\n"
L["ImprovedFaerieFire"] = L["DruidColor"] .. "요정의 불꽃 연마 |r\n"
L["HuntersMark"] = L["HunterColor"] .. "사냥꾼의 징표 |r\n"	
L["ScorpidSting"] = L["HunterColor"] .. "전갈 쐐기 |r|n"
L["WintersChill"] = L["MageColor"] .. "혹한의 추위 |r"
L["ImprovedScorch"] = L["MageColor"] .. "불태우기 연마 |r\n"
L["FireVulnerability"] = L["MageColor"] .. "화염 저항력 약화 |r\n"
L["HeartCrusader"] = L["PalColor"] .. "성전사의 심장 |r\n"
L["Crusade"] = L["PalColor"] .. "성전 |r\n"
L["Vengeance"] = L["PalColor"] .. "복수 |r\n"
L["Hemorrhage"] = L["RogueColor"] .. "과다출혈 |r"
L["SavageCombat"] = L["RogueColor"] .. "야만적인 전투 |r\n"
L["MasterPoisoner"] = L["RogueColor"] .. "독의 대가 |r\n"
L["ExposeArmor"] = L["RogueColor"] .. "약점 노출 |r\n"
L["Stormstrike"] = L["ShamColor"] .. "폭풍의 일격 |r\n"
L["TotemOfWrath"] = L["ShamColor"] .. "격노의 토템 |r\n"
L["SunderArmor"] = L["WarColor"] .. "방어구 가르기 |r\n"
L["BloodFrenzy"] = L["WarColor"] .. "피의 광기 |r\n"
L["ShadowVulnerability"] = L["WarlockColor"] .. "암흑 저항력 약화 |r"
L["ShadowMastery"] = L["WarlockColor"] .. "암흑 마법 전문화 |r\n"
L["CurseofElements"] = L["WarlockColor"] .. "원소의 저주 |r\n"
L["CurseOfWeak"] = L["WarlockColor"] .. "무력화 저주 |r\n"

L["TipsAndInfo"] = L["Green"] .. "팁과 정보! |r\n\n"
L["SinLive"] = L["Green"] .. "SinLive™ Stat! \n이 스탯은 현재 대상과 상호작용하고 스케일링됩니다! |r\n\n"
L["NPCPlus3"] = "+3레벨 \n"
L["NPC1to5"] = "+1~ +5레벨 \n"
L["NPCAnyLevel"] = "아무 레벨 \n"
L["NPCSameLevel"] = "동일 레벨 \n"	
L["DefaultValueText"] = L["Green"] .. "\n\n[기본값] |r\n"
L["ScalingText"] = L["Green"] .. "\n[대상 스케일링] |r\n"

L["CommonScaling"] = "이 스탯은 다른 스탯들과 함께 스케일링 됩니다. \n"
L["Enhanced_BaseTooltip"] = L["Green"] .. "[강화된]|r " .. "툴팁은 특성, 버프, 보석, 마부 등을 포함하여 최고의 정확도을 제공합니다 \n" .. L["Green"] .. "[기본]|r " .. "툴팁은 추가내용 없이 캐릭터 패널에 표시되는 기본값을 표시합니다"
L["Percent_RatingTooltip"] = L["Green"] .. "[퍼센트는]|r " .. "이 스탯의 백분율 값을 표시합니다 \n" .. L["Green"] .. "[수치는]|r " .. "이 스탯의 수치 값을 표시합니다"
L["Main_Off_HandTooltip"] = L["Green"] .. "[주무기는]|r " .. "이 스탯의 주무기 값을 표시합니다 \n" .. L["Green"] .. "[보조무기는]|r " .. "이 스탯의 보조무기 값을 표시합니다"
L["Level_Same_BossTooltip"] = L["Green"] .. "[동일레벨은]|r " .. "자신과 같은 레벨의 NPC에 대한 값을 표시합니다 \n" .. L["Green"] .. "[보스레벨은]|r " .. "자신보다 1~5레벨 높은 NPC에 대한 값을 표시합니다"
L["Crit_Damage_TakenTooltip"] = L["Green"] .. "[피치명은]|r " .. "도트뎀의 감소와 치명타 피격 확률의 감소를 표시합니다 \n" .. L["Green"] .. "[뎀감은]|r " .. "플레이어와 소환수로부터 받는 모든 피해 감소율을 표시합니다"
L["Chance_ReductionTooltip"] = L["Green"] .. "[확률은]|r " .. "치명타에 맞을 확률을 표시합니다 \n" .. L["Green"] .. "[감소는]|r " .. "치명이뮨에 도달하기 위한 감소값을 표시합니다"
L["Total_RatingTooltip"] = L["Green"] .. "[모두는]|r " .. "기본값과 보너스를 모두 포함하는 총 방어숙련도 값을 표시합니다 \n" .. L["Green"] .. "[수치는]|r " .. "이 스탯의 수치 값을 표시합니다"
L["Max_Average_DamageTooltip"] = L["Green"] .. "[최대는]|r " .. "데미지의 최대값을 표시합니다 \n" .. L["Green"] .. "[평균은]|r " .. "최대값을 평균값으로 바꿔줍니다"
L["Regen_Normal_CastingTooltip"] = L["Green"] .. "[평상시는]|r " .. "캐스팅중이 아닐 때 5초룰 외의 마나재생을 표시합니다 \n" .. L["Green"] .. "[캐스팅은]|r " .. "캐스팅 중 마나 재생을 표시합니다"
L["World_RealmTooltip"] = L["Green"] .. "[월드는]|r " .. "컴퓨터와 게임 월드간 연결의 게임내 지연시간을 표시합니다 \n" .. L["Green"] .. "[서버는]|r " .. "컴퓨터와 블리자드 서버간 연결 평균 지연 시간을 밀리초 단위로 표시합니다"
L["Main_Off_AutoTooltip"] = L["Green"] .. "[주무기는]|r " .. "이 스탯의 주무기 값을 표시합니다 \n" .. L["Green"] .. "[보조무기는]|r " .. "이 스탯의 보조무기 값을 표시합니다 \n" .. L["Green"] .. "[자동은]|r " .. "양손인지 쌍수인지를 자동으로 감지하고 그에 따른 스탯을 표시합니다 \n"
L["Heroism_ValorTooltip"] = L["Green"] .. "[무용]|r " .. "영웅의 문양 수량을 표시합니다 \n" .. L["Green"] .. "[용맹]|r " .. "용맹의 상징 수량을 표시합니다"
L["Display_MainHandTooltip"] = L["Green"] .. "[주무기만은]|r " .. "해당되는 경우 보조무기의 자동 표시를 비활성화합니다"
L["Display_AverageTooltip"] = L["Green"] .. "[평균은]|r " .. "최대값을 평균값으로 바꿔줍니다"
L["Display_BasicTooltip"] = L["Green"] .. "[기본은]|r " .. "추가사항 없이 캐릭터 창에 표시되는 기본값 만을 표시합니다"

L["AP"] = "전투력"
L["APAbrev"] = "전투력"
L["APMenu"] = "전투력"
L["APTip"] = ""
L["APDescription"] = L["TipsAndInfo"] .. "근접 전투력 \n" .. L["Red"] .. "붉은색 값|r은 디버프에 영향받는 중임을 알려줍니다"

L["DMG"] = "데미지"
L["DMGAbrev"] = "데미지"
L["DMGMenu"] = "데미지"
L["DMGTip"] = ""
L["DMGDescription"] = L["SinLive"].. L["Red"] .. "붉은색 값|r은 디버프에 영향받는 중임을 알려줍니다 \n" .. L["ScalingText"] .. L["BloodFrenzy"] .. L["Hemorrhage"] ..", " .. L["SavageCombat"] .. L["Crusade"] .. L["ThundraStalker"] ..", " .. L["RageofRivendare"]

L["mDPS"] = "DPS"
L["mDPSAbrev"] = "DPS"
L["mDPSMenu"] = "DPS"
L["mDPSTip"] = ""
L["mDPSDescription"] = L["TipsAndInfo"] .. L["Red"] .. "붉은색 값|r은 디버프에 영향받는 중임을 알려줍니다 \n\n" .. "이 스탯은 공속과 데미지에 의한 보정을 받습니다"

L["Crit"] = "치명"
L["CritAbrev"] = "치명"
L["CritMenu"] = "치명타 확률"
L["CritTip"] = ""
L["CritDescription"] = L["SinLive"] .. "근접 치명타 확률. PvP 특정 치명 특성에 의한 치명타 확률은 현재 확률 옆에 색칠되어 나옵니다 \n" .. L["ScalingText"] .. L["HeartCrusader"] .. L["TotemOfWrath"] .. L["MasterPoisoner"]

L["CritBoss"] = "치명+"
L["CritBossAbrev"] = "치명+"
L["CritBossMenu"] = "치명 vs 보스"
L["CritBossTip"] = ""
L["CritBossDescription"] = L["SinLive"] .. "PVE에서 높은레벨의NPC(우두머리)에 대한 근접 치명타 값. 모든 치명타 보정 오라를 포함합니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"] .. L["HeartCrusader"] .. L["TotemOfWrath"] .. L["MasterPoisoner"]

L["CritCap"] = "치명 캡"
L["CritCapAbrev"] = "치명캡"
L["CritCapMenu"] = "치명타 캡"
L["CritCapTip"] = ""
L["CritCapDescription"] = L["TipsAndInfo"] .. "보스에 대한 치명타 캡을 표시합니다. 이 스탯은 사용중인 무기에 의해 스케일링됩니다 \n" .. L["Red"] .. "붉은색 치명타캡 값|r은 치명타 캡에 도달했다는 것을 알려줍니다 \n\n"

L["Hit"] = "적중"
L["HitAbrev"] = "적중"
L["HitMenu"] = "적중"
L["HitTip"] = ""
L["HitDescription"] = L["TipsAndInfo"] .. "근접 적중을 표시합니다 (퍼센트, 수치, 모두) \n" .. L["Green"] .. "녹색 값|r은 적중값 목표를 달성했음을 알려줍니다"

L["HasteMelee"] = "가속"
L["HasteMeleeAbrev"] = "가속"
L["HasteMeleeMenu"] = "가속"
L["HasteMeleeTip"] = ""
L["HasteMeleeDescription"] = L["TipsAndInfo"] .. "근접 가속을 표시합니다 (퍼센트, 수치, 모두)"

L["weaponSpeed"] = "공격속도"
L["weaponSpeedAbrev"] = "공속"
L["weaponSpeedMenu"] = "공격속도"
L["weaponSpeedTip"] = ""
L["weaponSpeedDescription"] = "근접 공격속도를 표시합니다 (주무기, 보조무기, 자동)"

L["Expertise"] = "숙련도"
L["ExpertiseAbrev"] = "숙련"
L["ExpertiseMenu"] = "숙련도"
L["ExpertiseTip"] = ""
L["ExpertiseDescription"] = L["TipsAndInfo"] .. "공격이 회피되거나 무기막기에 막힐 (확률, 수치, 모두) \n" .. L["Green"] .. "녹색 값|r은 숙련도값 목표를 달성했음을 알려줍니다"

L["ArmorPen"] = "방어구 관통"
L["ArmorPenAbrev"] = "방관"
L["ArmorPenMenu"] = "방어구 관통"
L["ArmorPenTip"] = ""
L["ArmorPenDescription"] = L["TipsAndInfo"] .. "대상의 방어도가 무시될 (확률, 수치, 모두)"

L["NPCArmor"] = "방어력+"
L["NPCArmorAbrev"] = "방어력+"
L["NPCArmorMenu"] = "보스 방어력"
L["NPCArmorTip"] = ""
L["NPCArmorDescription"] = L["SinLive"] .. "보스NPC의 방어도값. 방어도값을 표시하려면 대상을 선택해야 합니다 \n" .. L["ScalingText"] .. L["NPCPlus3"] .. L["SunderArmor"] .. L["ExposeArmor"] .. L["FaerieFire"] .. L["CurseOfWeak"]

L["BossReduc"] = "데미지-"
L["BossReducAbrev"] = "데미지-"
L["BossReducMenu"] = "데미지 감소"
L["BossReducTip"] = ""
L["BossReducDescription"] = L["SinLive"] .. "보스NPC의 방어도에 기반한 물리피해 감소 비율 \n일반몹을 대상잡을 경우, 방어력 감소 디버프의 총 값이 표시됩니다 \n감소값을 표시하려면 대상을 선택해야 합니다 \n" .. L["ScalingText"] .. L["NPCPlus3"] .. L["SunderArmor"] .. L["ExposeArmor"] .. L["FaerieFire"] .. L["CurseOfWeak"]

L["MeleeMiss"] = "빗맞힘"
L["MeleeMissAbrev"] = "빗맞힘"
L["MeleeMissMenu"] = "빗맞힘률"
L["MeleeMissTip"] = ""
L["MeleeMissDescription"] = L["SinLive"] .. "NPC에 대한 근접무기의 빗맞힘률 (동일레벨, 보스레벨, 모두)" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]

L["Avoidance"] = "마력 회피"
L["AvoidanceAbrev"] = "마력 회피"
L["AvoidanceMenu"] = "마력 회피"
L["AvoidanceTip"] = ""
L["AvoidanceDescription"] = L["SinLive"] .. "강타를 피할 확률입니다 \n" .. L["Green"] .. "녹색의 회피|r율은 당신이 강타를 맞지 않는다는 것을 알려줍니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"] .. L["ScorpidSting"] .. L["InsectSwarm"]

L["Crushing"] = "강타"
L["CrushingAbrev"] = "강타"
L["CrushingMenu"] = "강타"
L["CrushingTip"] = ""
L["CrushingDescription"] = L["SinLive"] .. "강타에 맞을 확률입니다 \n" .. L["Green"] .. "녹색 강타|r 값은 당신이 강타에 맞지 않는다는 것을 알려줍니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["ScorpidSting"] .. L["InsectSwarm"]

L["CritReceived"] = "치명피격률"
L["CritReceivedAbrev"] = "치명-"
L["CritReceivedMenu"] = "치명피격률" 
L["CritReceivedTip"] = ""
L["CritReceivedDescription"] = L["SinLive"] .. "치명타 적중 확률 \n" .. L["Green"] .. "녹색 치명타 율|r은 치명타 면역을 나타냅니다 \n" .. L["Red"] .. "붉은색 치명피격|r률은 치명타 맞을 확률이 존재한다는 것을 알려줍니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPCAnyLevel"] .. L["SurvivalofFittest"]

L["Resilience"] = "탄력도"
L["ResilienceAbrev"] = "탄력"
L["ResilienceMenu"] = "탄력도"
L["ResilienceTip"] = ""
L["ResilienceDescription"] = L["TipsAndInfo"] .. "탄력도는 피치명과 플레이어 뎀감률을 표시합니다"

L["Armor"] = "방어력"
L["ArmorAbrev"] = "방어"
L["ArmorMenu"] = "방어력"
L["ArmorTip"] = ""
L["ArmorDescription"] = L["TipsAndInfo"] .. "보정을 포함한 방어도값 입니다 \n" .. L["Red"] .. "붉은색 방어도 값|r은 디버프의 영향을 받고 있음을 알려줍니다"	

L["Mitigation"] = "데미지 감소"
L["MitigationAbrev"] = "뎀감"
L["MitigationMenu"] = "데미지 감소"
L["MitigationTip"] = ""
L["MitigationDescription"] = L["SinLive"] .. "데미지 감소 퍼센트입니다 \n" .. L["Green"] .. "녹색 데미지 감소 값|r은 뎀감 캡에 도달했다는 것을 알려줍니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPCAnyLevel"]

L["DefenseStat"] = "방어 숙련"
L["DefenseStatAbrev"] = "방숙"
L["DefenseStatMenu"] = "방어 숙련도"
L["DefenseStatTip"] = ""
L["DefenseStatDescription"] = L["TipsAndInfo"] .. "방어 숙련도를 표시합니다(종합, 수치, 모두) \n" .. L["Green"] .. "녹색의 방어 숙련도 값|r은 레이드 보스에 대한 방숙 캡에 도달했음을 알려줍니다"

L["HitReduction"] = "피격률 감소"
L["HitReductionAbrev"] = "피격률 감소"
L["HitReductionMenu"] = "피격률 감소"
L["HitReductionTip"] = ""
L["HitReductionDescription"] = L["SinLive"] .. "특성이나 디버프에 의한 물리공격의 피격률 감소입니다 \n" .. L["ScalingText"] .. L["ScorpidSting"] .. L["InsectSwarm"]

L["Dodge"] = "회피율"
L["DodgeAbrev"] = "회피"
L["DodgeMenu"] = "회피율"
L["DodgeTip"] = ""
L["DodgeDescription"] = L["TipsAndInfo"] .. "공격을 회피할 확률입니다(퍼센트, 수치, 모두)"

L["Parry"] = "무기막기"
L["ParryAbrev"] = "무막"
L["ParryMenu"] = "무기막기"
L["ParryTip"] = ""
L["ParryDescription"] = L["TipsAndInfo"] .. "공격을 무기막기할 확률입니다(퍼센트, 수치, 모두)"

L["Block"] = "방패막기"
L["BlockAbrev"] = "방막"
L["BlockMenu"] = "방패막기"
L["BlockTip"] = ""
L["BlockDescription"] = L["TipsAndInfo"] .. "공격을 방패막기할 확률입니다(퍼센트, 수치, 모두)"

L["RAP"] = "원거리 전투력"
L["RAPAbrev"] = "원거리전투력"
L["RAPMenu"] = "전투력"
L["RAPTip"] = ""
L["RAPDescription"] = L["SinLive"] .. "원거리 전투력 \n"  .. L["Red"] .. "붉은색 값|r은 디버프에 영향받는 중임을 알려줍니다 \n" .. L["Green"] .. "녹색 값|r은 사냥꾼의 징표가 대상에 적용되었다는 것을 알려줍니다 \n" .. L["ScalingText"] .. L["HuntersMark"]

L["RDMG"] = "원거리 데미지"
L["RDMGAbrev"] = "원거리데미지"
L["RDMGMenu"] = "데미지"
L["RDMGTip"] = ""
L["RDMGDescription"] = L["SinLive"] .. L["Red"] .. "붉은색 값|r은 디버프에 영향받는 중임을 알려줍니다 \n" .. L["ScalingText"] .. L["BloodFrenzy"] .. L["Hemorrhage"] ..", " .. L["SavageCombat"]

L["rDPS"] = "원거리 DPS"
L["rDPSAbrev"] = "원거리DPS"
L["rDPSMenu"] = "DPS"
L["rDPSTip"] = ""
L["rDPSDescription"] = L["TipsAndInfo"] .. "DPS를 표시합니다. (최대, 평균, 모두) \n" .. L["Red"] .. "붉은색 값|r은 디버프에 영향받는 중임을 표시해줍니다 \n\n" .. "이 스탯은 공속과 데미지에 의한 보정을 받습니다"

L["RangedCrit"] = "원거리 치명"
L["RangedCritAbrev"] = "원거리치명"
L["RangedCritMenu"] = "치명타율"
L["RangedCritTip"] = ""
L["RangedCritDescription"] = L["SinLive"] .. "치명타 확률을 표시합니다(퍼센트, 수치, 모두) \nPvP 특정 치명 특성에 의한 치명타 확률은 현재 확률 옆에 색칠되어 나옵니다 \n" .. L["ScalingText"] .. L["HeartCrusader"] .. L["TotemOfWrath"]

L["RangedCritBoss"] = "원거리 치명+"
L["RangedCritBossAbrev"] = "원거리치명+"
L["RangedCritBossMenu"] = "치명타율 vs 보스"
L["RangedCritBossTip"] = ""
L["RangedCritBossDescription"] = L["SinLive"] .. "PVE에서 높은레벨의NPC(우두머리)에 대한 원거리 치명타 값. \n모든 치명타 보정 오라를 포함합니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"] .. L["HeartCrusader"] .. L["TotemOfWrath"]

L["RangedHit"] = "원거리 적중"
L["RangedHitAbrev"] = "원거리적중"
L["RangedHitMenu"] = "적중"
L["RangedHitTip"] = ""
L["RangedHitDescription"] = L["TipsAndInfo"] .. "원거리 적중을 표시합니다.(퍼센트, 수치, 모두) \n" .. L["Green"] .. "녹색 값|r은 적중값 목표를 달성했음을 알려줍니다"

L["HasteRanged"] = "원거리 가속"
L["HasteRangedAbrev"] = "원거리가속"
L["HasteRangedMenu"] = "가속"
L["HasteRangedTip"] = ""
L["HasteRangedDescription"] = L["TipsAndInfo"] .. "원거리 가속을 표시합니다.(퍼센트, 수치, 모두)"

L["RangedPen"] = "원거리 방관"
L["RangedPenAbrev"] = "원거리방관"
L["RangedPenMenu"] = "방어구 관통"
L["RangedPenTip"] = ""
L["RangedPenDescription"] = L["TipsAndInfo"] .. "원거리 공격으로 대상의 방어도를 무시할 확률입니다"

L["rangedSpeed"] = "원거리 공격 속도"
L["rangedSpeedAbrev"] = "원거리공속"
L["rangedSpeedMenu"] = "공격 속도"
L["rangedSpeedTip"] = ""
L["rangedSpeedDescription"] = L["TipsAndInfo"] .. "착용 중인 원거리 무기의 공격 속도입니다"

L["RangedMiss"] = "원거리 빗맞힘률"
L["RangedMissAbrev"] = "원거리빗맞힘"
L["RangedMissMenu"] = "빗맞힘률"
L["RangedMissTip"] = ""
L["RangedMissDescription"] = L["SinLive"] .. "원거리 빗맞힘률을 표시합니다 (동일 레벨, 보스 레벨, 모두)" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]

L["Fire"] = "화염"
L["FireAbrev"] = "화염"
L["FireMenu"] = "화염 주문력"
L["FireTip"] = ""
L["FireDescription"] = L["SinLive"] .. "화염 주문력 \n" .. L["ScalingText"] .. L["SpellPowerModifiers"] .. L["Misery"] .. L["CurseofElements"] .. L["FireVulnerability"] .. L["EbonPlague"] .. L["EarthAndMoon"]

L["Frost"] = "냉기"
L["FrostAbrev"] = "냉기"
L["FrostMenu"] = "냉기 주문력"
L["FrostTip"] = ""
L["FrostDescription"] = L["SinLive"] .. "냉기 주문력 \n" .. L["ScalingText"] .. L["SpellPowerModifiers"] .. L["Misery"] .. L["CurseofElements"] .. L["EbonPlague"] .. L["EarthAndMoon"]

L["Arcane"] = "비전"
L["ArcaneAbrev"] = "비전"
L["ArcaneMenu"] = "비전 주문력"
L["ArcaneTip"] = ""
L["ArcaneDescription"] = L["SinLive"] .. "비전 주문력 \n" .. L["ScalingText"] .. L["SpellPowerModifiers"] .. L["Misery"] .. L["CurseofElements"] .. L["EbonPlague"] .. L["EarthAndMoon"]

L["Shadow"] = "암흑"
L["ShadowAbrev"] = "암흑"
L["ShadowMenu"] = "암흑 주문력"
L["ShadowTip"] = ""
L["ShadowDescription"] = L["SinLive"] .. "암흑 주문력 \n" .. L["ScalingText"] .. L["SpellPowerModifiers"] .. L["ShadowWeaving"] .. L["Misery"] .. L["ShadowVulnerability"] ..", " .. L["CurseofElements"] .. L["EbonPlague"] .. L["EarthAndMoon"]

L["Nature"] = "자연"
L["NatureAbrev"] = "자연"
L["NatureMenu"] = "자연 주문력"
L["NatureTip"] = ""
L["NatureDescription"] = L["SinLive"] .. "자연 주문력 \n" .. L["ScalingText"] .. L["SpellPowerModifiers"] .. L["Misery"] .. L["Stormstrike"] .. L["EbonPlague"] .. L["EarthAndMoon"]

L["Healing"] = "치유"
L["HealingAbrev"] = "힐"
L["HealingMenu"] = "주문 치유량"
L["HealingTip"] = ""
L["HealingDescription"] = L["TipsAndInfo"] .. "주문 치유량"

L["Holy"] = "신성"
L["HolyAbrev"] = "신성"
L["HolyMenu"] = "신성 주문력"
L["HolyTip"] = ""
L["HolyDescription"] = L["SinLive"] .. "신성 데미지 \n" .. L["ScalingText"] .. L["SpellPowerModifiers"] .. L["Misery"] .. L["Crusade"] .. L["CurseofElements"] .. L["EbonPlague"] .. L["EarthAndMoon"]

L["SpellCrit"] = "주문 치명"
L["SpellCritAbrev"] = "주문치명"
L["SpellCritMenu"] = "치명타 확률"
L["SpellCritTip"] = ""
L["SpellCritDescription"] = L["SinLive"] .. "치명타 확률을 표시합니다(퍼센트, 수치, 모두) \nPvP 특정 치명 특성에 의한 치명타 확률은 현재 확률 옆에 색칠되어 나옵니다 \n" .. L["ScalingText"] .. L["HeartCrusader"] .. L["WintersChill"] ..", " .. L["ImprovedScorch"] .. L["TotemOfWrath"] .. L["ShadowMastery"] .. L["ImprovedFaerieFire"]

L["SpellCritBoss"] = "주문 치명+"
L["SpellCritBossAbrev"] = "주문치명+"
L["SpellCritBossMenu"] = "치명 vs 보스"
L["SpellCritBossTip"] = ""
L["SpellCritBossDescription"] = L["SinLive"] .. "PVE에서 높은레벨의NPC(우두머리)에 대한 주문 치명타 값. 모든 치명타 보정 오라를 포함합니다" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"] .. L["HeartCrusader"] .. L["WintersChill"] ..", " .. L["ImprovedScorch"] .. L["TotemOfWrath"] .. L["ShadowMastery"] .. L["ImprovedFaerieFire"]

L["SpellHit"] = "주문 적중"
L["SpellHitAbrev"] = "주문적중"
L["SpellHitMenu"] = "적중"
L["SpellHitTip"] = ""
L["SpellHitDescription"] = L["SinLive"] .. "주문 적중을 표시합니다 (퍼센트, 수치, 모두) \n" .. L["ScalingText"] .. L["ImprovedFaerieFire"]

L["HasteCaster"] = "주문 가속"
L["HasteCasterAbrev"] = "주문가속"
L["HasteCasterMenu"] = "가속"
L["HasteCasterTip"] = ""
L["HasteCasterDescription"] = L["TipsAndInfo"] .. "주문 가속을 표시합니다 (퍼센트, 수치, 모두)"

L["SpellPenetration"] = "주문 관통"
L["SpellPenetrationAbrev"] = "주문관통"
L["SpellPenetrationMenu"] = "관통"
L["SpellPenetrationTip"] = ""
L["SpellPenetrationDescription"] = L["TipsAndInfo"] .. "주문이 타겟의 주문 저항을 무시할 확률입니다"

L["SpellMiss"] = "주문 빗맞힘률"
L["SpellMissAbrev"] = "주문빗맞힘"
L["SpellMissMenu"] = "빗맞힘률"
L["SpellMissTip"] = ""
L["SpellMissDescription"] = L["TipsAndInfo"] .. "주문 빗맞힘률을 표시합니다 (동일 레벨, 보스 레벨, 모두)"

L["ManaRegen"] = "마젠2"
L["ManaRegenAbrev"] = "마젠2"
L["ManaRegenMenu"] = "마젠2"
L["ManaRegenTip"] = ""
L["ManaRegenDescription"] = L["TipsAndInfo"] .. "2초당 마나 회복량을 표시합니다"

L["MP5"] = "마젠5"
L["MP5Abrev"] = "마젠5"
L["MP5Menu"] = "마젠5"
L["MP5Tip"] = ""
L["MP5Description"] = L["TipsAndInfo"] .. "5초당 마나 회복량을 표시합니다"

L["FireResist"] = "화염 저항"
L["FireResistAbrev"] = "화저"
L["FireResistMenu"] = "화염 저항"
L["FireResistTip"] = ""
L["FireResistDescription"] = L["TipsAndInfo"] .. "화염 주문 데미지에 대한 저항값을 표시합니다"

L["FrostResist"] = "냉기 저항"
L["FrostResistAbrev"] = "냉저"
L["FrostResistMenu"] = "냉기 저항"
L["FrostResistTip"] = ""
L["FrostResistDescription"] = "냉기 주문 데미지에 대한 저항값을 표시합니다"

L["ShadowResist"] = "암흑 저항"
L["ShadowResistAbrev"] = "암저"
L["ShadowResistMenu"] = "암흑 저항"
L["ShadowResistTip"] = ""
L["ShadowResistDescription"] = "암흑 주문 데미지에 대한 저항값을 표시합니다"

L["ArcaneResist"] = "바전 저항"
L["ArcaneResistAbrev"] = "비저"
L["ArcaneResistMenu"] = "비전 저항"
L["ArcaneResistTip"] = ""
L["ArcaneResistDescription"] = "비전 주문 데미지에 대한 저항값을 표시합니다"

L["NatureResist"] = "자연 저항"
L["NatureResistAbrev"] = "자저"
L["NatureResistMenu"] = "자연 저항"
L["NatureResistTip"] = ""
L["NatureResistDescription"] = "자연 주문 데미지에 대한 저항값을 표시합니다"

L["ItemLevel"] = "아이템 레벨"
L["ItemLevelAbrev"] = "템렙"
L["ItemLevelMenu"] = "아이템 레벨"
L["ItemLevelTip"] = ""
L["ItemLevelDescription"] = "현재 착용 장비의 평균 아이템 레벨을 표시합니다"

L["Emblems"] = "훈장"
L["EmblemsAbrev"] = "훈장"
L["EmblemsMenu"] = "훈장"
L["EmblemsTip"] = ""
L["EmblemsDescription"] = "훈장의 보유 개수를 표시합니다(무용, 용맹, 모두)"

L["Honor"] = "명예"
L["HonorAbrev"] = "명예"
L["HonorMenu"] = "명예"
L["HonorTip"] = ""
L["HonorDescription"] = "명예 점수의 현재량을 표시합니다"

L["Speed"] = "이속"
L["SpeedAbrev"] = "이속"
L["SpeedMenu"] = "이동속도"
L["SpeedTip"] = ""
L["SpeedDescription"] = L["TipsAndInfo"] .. "플레이어의 이동속도를 실시간으로 표시합니다 \n" .. L["Red"] .. "붉은색|r은 평소보다 느린 것을 나타냅니다"

L["TargetSpeed"] = "대상 이속"
L["TargetSpeedAbrev"] = "이속+"
L["TargetSpeedMenu"] = "대상 이동속도"
L["TargetSpeedTip"] = ""
L["TargetSpeedDescription"] = L["SinLive"] .. "대상의 이동속도를 실시간으로 표시합니다 \n" .. L["Red"] .. "붉은|r색은 평소보다 느린 것을 나타냅니다 \n" .. L["ScalingText"] .. "표적 NPC"

L["Durability"] = "내구도"
L["DurabilityAbrev"] = "내구"
L["DurabilityMenu"] = "내구도"
L["DurabilityTip"] = ""
L["DurabilityDescription"] = L["TipsAndInfo"] .. "현재 착용중인 장비와 무기의 내구도 퍼센트를 표시합니다"

L["BuffCounter"] = "버프"
L["BuffCounterAbrev"] = "버프"
L["BuffCounterMenu"] = "플레이어 버프"
L["BuffCounterTip"] = ""
L["BuffCounterDescription"] = "플레이어에게 적용된 버프 개수의 총합을 표시합니다"

L["DebuffCounter"] = "디버프"
L["DebuffCounterAbrev"] = "디벞"
L["DebuffCounterMenu"] = "디버프"
L["DebuffCounterTip"] = ""
L["DebuffCounterDescription"] = L["SinLive"] .. "플레이어에게 적용된 디버프 개수의 총합을 표시합니다 \n" .. L["ScalingText"] .. "표적 NPC"

L["Lag"] = "핑"
L["LagAbrev"] = "핑"
L["LagMenu"] = "핑"
L["LagTip"] = ""
L["LagDescription"] = L["TipsAndInfo"] .. "Connection latency (Ping)"

L["FPS"] = "FPS"
L["FPSAbrev"] = "FPS"
L["FPSMenu"] = "FPS"
L["FPSTip"] = ""
L["FPSDescription"] = L["TipsAndInfo"] .. "Frames per second [FPS]"

L["Money"] = "골드"
L["MoneyAbrev"] = "골"
L["MoneyMenu"] = "골드"
L["MoneyTip"] = ""
L["MoneyDescription"] = L["TipsAndInfo"] .. "현재 캐릭터가 소유중인 총 골드를 표시합니다"


------------------
--    Config    --
------------------

-- Fonts
L["Default Font"] = "기본 글꼴"
L["Thin"] = "얇게"
L["Thick"] = "굵게"
L["Monochrome"] = "외곽선"
L["Thin Monochrome"] = "얇은 모노크롬"
L["Thick Monochrome"] = "두꺼운 모노크롬"
L["None"] = "없음"
L["Left"] = "왼쪽"
L["Right"] = "오른쪽"

-- Fonts Settings
L["StatFontTip"] = "폰트"
L["StatFontSizeTip"] = "폰트 크기"
L["StatFontFlagsTip"] = "외곽선"

-- Settings tabs
L["HUDMenu"] = "일반"
L["FontsMenu"] = "폰트"
L["DisplayMenu"] = "디스플레이"
L["ProfilesMenu"] = "프로필"

-- Settings HUD
L["SettingsDescription"] = ""
L["HideHUD"] = "숨기기"
L["HideHUDTip"] = "HUD의 위치를 숨기거나, 잠그거나, 리셋합니다. "
L["LockHUD"] = "잠그기"
L["LockHUDTip"] = ""
L["ResetPosition"] = "위치 초기화"
L["ResetPositionTip"] = ""
L["MinimapGroupText"] = "미니맵"
L["Minimap"] = "표시"
L["MinimapTip"] = "미니맵 버튼을 보이기/숨기기. 미니맵 아이콘에 커서를 대면 빠른 접근 가능."

-- Display Settings
L["StatIconsTip"] = "HUD 아이콘 표시"
L["StatIcons"] = "아이콘"
L["StatTextAbreviateTip"] = "스탯 이름 축약"
L["StatTextAbreviate"] = "축약"
L["StatTextCapsTip"] = "대문자 (한국 해당x)"
L["StatTextCaps"] = "모두 대문자"
L["GroupOrderTip"] = "그룹에 의해 스탯을 정렬"
L["GroupOrder"] = "그룹 정렬"
L["VerticalGroupText"] = "정렬 & 간격"
L["VerticalTip"] = "가로 & 세로"
L["Vertical"] = "가로"
L["StatSpacingHTip"] = "가로 간격"
L["StatSpacingVTip"] = "세로 간격"
L["StatAlignmentTip"] = "정렬"
L["StatRowsTip"] = "줄"

-- Minimap
L["LeftClick"] = "퀵메뉴"
L["OpenClose"] = ""
L["RightClick"] = "우클릭"
L["EnableDisable"] = "HUD 켜기/끄기"
L["ShiftRightClick"] = "시프트 + 우클릭"
L["UnlockHUD"] = "HUD 잠금해제"

-- Settings Profile
L["Selected"] = "적용"
L["SelectProfile"] = "프로필 관리: 선택, 생성, 복사, 삭제. \n사용중인 프로필 삭제할 때, 다른프로필 선택해야됨."
L["ProfileSelected"] = "프로필"
L["ProfileUsed"] = "현재 사용중인 프로필은 삭제가 불가능합니다!"
L["NewProfile"] = "새 프로필"
L["CurrentProfile"] = "현재 프로필"
L["Create"] = "만들다"
L["Copy"] = "적용"
L["Delete"] = "삭제"
L["ConfirmDelete"] = "확인"
L["Cancel"] = "취소"
L["ProfileCopyDelete"] = "새 프로필을 선택, 삭제, 복사합니다."

-- Settings Options
L["OptionsTip"] = "확장 옵션"
L["Show"] = "표시"
L["ShowTip"] = ""

L["Enhanced"] = "강화"
L["Basic"] = "기본"
L["Damage"] = "데미지"
L["DamageTaken"] = "뎀감"
L["Percentage"] = "퍼센트"
L["Rating"] = "수치"
L["MainHand"] = "주무기"
L["OffHand"] = "보조무기"
L["SameLevel"] = "동일 레벨"
L["BossLevel"] = "보스 레벨"
L["Regen"] = "평상시 회복"
L["OutOfCombat"] = "평상시"
L["Casting"] = "캐스팅"
L["CritTaken"] = "피치명"
L["Total"] = "총합"
L["Max"] = "최대"
L["World"] = "월드"
L["Realm"] = "서버"
L["Average"] = "평균"
L["Chance"] = "확률"
L["Reduction"] = "감소"
L["Auto"] = "자동"
L["Heroism"] = "무용"
L["Valor"] = "용맹"
L["Both"] = "모두"

L["Settings"] = "설정"
L["Melee"] = "근접"
L["MeleeDescription"] = ""
L["Defense"] = "방어"
L["DefenseDescription"] = ""
L["Ranged"] = "원거리"
L["RangedDescription"] = ""
L["Spell"] = "주문"
L["SpellDescription"] = ""
L["Resistance"] = "저항"
L["ResistanceDescription"] = ""
L["Misc"] = "기타"
L["MiscDescription"] = ""
L["Display_Average"] = "평균"
L["Display_AverageTip"] = ""
L["Display_Basic"] = "기본"
L["Display_BasicTip"] = ""
L["Display_MainHand"] = "주무기만 표시"
L["Display_MainHandTip"] = ""

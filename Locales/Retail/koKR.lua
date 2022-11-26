local AddName, AddonTable = ...

if GetLocale() ~= "koKR" then
    return
end

local L = AddonTable.RegisterLocale("koKR", true)

	------------------
	-- 	HUD 	--
	------------------

L["Green"] = "|cff71ffc9"
L["Red"] = "|cffC41E3A"	
L["TipsAndInfo"] = L["Green"] .. "팁과 정보!|r\n\n"
L["SinLive"] = L["Green"] .. "SinLive™ Stat!\nThis stat is interactive and will scale based on your current target!|r\n\n"
L["Display_AverageTooltip"] = L["Green"] .. "[평균]|r " .. "최대값 대신 평균값을 표시합니다"
L["Display_BasicTooltip"] = L["Green"] .. "[기본]|r " .. "캐릭터창의 기본 값을 표시합니다"
L["Enhanced_BaseTooltip"] = L["Green"] .. "[고급]|r " .. "특성, 버프, 물약, 마법 부여 등을 통해 최대한 정확한 값을 표시합니다\n" .. L["Green"] .. "[기본]|r " .. "캐릭터창의 기본 값을 표시합니다"
L["Regen_Normal_CastingTooltip"] = L["Green"] .. "[일반]|r " .. "비시전 5초 규칙 이후 마나 재생 값을 표시합니다\n" .. L["Green"] .. "[시전]|r " .. "시전중 마나 재쟁 값을 표시합니다"
L["World_RealmTooltip"] = L["Green"] .. "[사용자]|r " .. "내컴퓨터와 블리자드 서버 간의 평균 연결 지연 시간을 밀리초로 표시합니다 (핑)\n" .. L["Green"] .. "[서버]|r " .. "내컴퓨터와 서버 간의 게임 지연 시간을 표시합니다 (서버랙)"
L["Melee_RangedTooltip"] = L["Green"] .. "[근접]|r " .. "이 능력치의 근접 공격 값을 표시합니다\n" .. L["Green"] .. "[원거리]|r " .. "이 능력치의 원거리 공격 값을 표시합니다"
L["Equipped_OverallTooltip"] = ""
L["Damage_TakenTooltip"] = L["Green"] .. "[공격]|r " .. "공격력, 치유량 증가 값을 표시합니다\n" .. L["Green"] .. "[방어]|r " .. "받는 피해 감소 값을 표시합니다"
L["Level_HonorPointsTooltip"] = L["Green"] .. "[레벨]|r " .. "명예 레벨을 표시합니다\n" .. L["Green"] .. "[점수]|r " .. "명예 점수를 표시합니다"
L["Display_RatedTooltip"] = L["Green"] .. "[평점]|r " .. "평점제 획득 명예 점수를 표시합니다"

L["CritChance"] = "치명타 및 극대화"
L["CritChanceAbrev"] = "치"
L["CritChanceMenu"] = "치명타 및 극대화"
L["CritChanceTip"] = ""
L["CritChanceDescription"] = ""

L["Haste"] = "가속"
L["HasteAbrev"] = "가"
L["HasteMenu"] = "가속"
L["HasteTip"] = ""
L["HasteDescription"] = ""

L["Mastery"] = "특화"
L["MasteryAbrev"] = "특"
L["MasteryMenu"] = "특화"
L["MasteryTip"] = ""
L["MasteryDescription"] = ""

L["Versatility"] = "유연성"
L["VersatilityAbrev"] = "유"
L["VersatilityMenu"] = "유연성"
L["VersatilityTip"] = ""
L["VersatilityDescription"] = ""

L["Avoidance"] = "광역 회피"
L["AvoidanceAbrev"] = "광피"
L["AvoidanceMenu"] = "광역 회피"
L["AvoidanceTip"] = ""
L["AvoidanceDescription"] = ""

L["Leech"] = "생기 흡수"
L["LeechAbrev"] = "생흡"
L["LeechMenu"] = "생기 흡수"
L["LeechTip"] = ""
L["LeechDescription"] = ""

L["Strength"] = "힘"
L["StrengthAbrev"] = "힘"
L["StrengthMenu"] = "힘"
L["StrengthTip"] = ""
L["StrengthDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["Agility"] = "민첩"
L["AgilityAbrev"] = "민"
L["AgilityMenu"] = "민첩"
L["AgilityTip"] = ""
L["AgilityDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["AP"] = "공격력"
L["APAbrev"] = "공격력"
L["APMenu"] = "공격력"
L["APTip"] = ""
L["APDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["DMG"] = "피해"
L["DMGAbrev"] = "피해"
L["DMGMenu"] = "피해"
L["DMGTip"] = ""
L["DMGDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["weaponSpeed"] = "공격 속도"
L["weaponSpeedAbrev"] = "공속"
L["weaponSpeedMenu"] = "공격 속도"
L["weaponSpeedTip"] = ""
L["weaponSpeedDescription"] = ""

L["EnergyRegen"] = "에너지 재생"
L["EnergyRegenAbrev"] = "에젠"
L["EnergyRegenMenu"] = "에너지 재생"
L["EnergyRegenTip"] = ""
L["EnergyRegenDescription"] = ""

L["Stamina"] = "체력"
L["StaminaAbrev"] = "체력"
L["StaminaMenu"] = "체력"
L["StaminaTip"] = ""
L["StaminaDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["Armor"] = "방어도"
L["ArmorAbrev"] = "방어도"
L["ArmorMenu"] = "방어도"
L["ArmorTip"] = ""
L["ArmorDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["Dodge"] = "회피"
L["DodgeAbrev"] = "회피"
L["DodgeMenu"] = "회피"
L["DodgeTip"] = ""
L["DodgeDescription"] = ""

L["Parry"] = "무기 막기"
L["ParryAbrev"] = "무막"
L["ParryMenu"] = "무기 막기"
L["ParryTip"] = ""
L["ParryDescription"] = ""

L["Block"] = "방패 막기"
L["BlockAbrev"] = "방막"
L["BlockMenu"] = "방패 막기"
L["BlockTip"] = ""
L["BlockDescription"] = ""

L["Absorb"] = "보호막"
L["AbsorbAbrev"] = "보호막"
L["AbsorbMenu"] = "보호막"
L["AbsorbTip"] = ""
L["AbsorbDescription"] = ""

L["Stagger"] = "시간차"
L["StaggerAbrev"] = "시간차"
L["StaggerMenu"] = "시간차"
L["StaggerTip"] = ""
L["StaggerDescription"] = ""

L["Intellect"] = "지능"
L["IntellectAbrev"] = "지능"
L["IntellectMenu"] = "지능"
L["IntellectTip"] = ""
L["IntellectDescription"] = L["TipsAndInfo"] .. L["Red"] .. "빨간|r 값은 이 능력치와 관련된 디버프에 걸린 것을 나타냅니다"

L["SpellPower"] = "주문력"
L["SpellPowerAbrev"] = "주문력"
L["SpellPowerMenu"] = "주문력"
L["SpellPowerTip"] = ""
L["SpellPowerDescription"] = ""

L["Healing"] = "치유"
L["HealingAbrev"] = "치유"
L["HealingMenu"] = "치유"
L["HealingTip"] = ""
L["HealingDescription"] = ""

L["ManaRegen"] = "마나 재생"
L["ManaRegenAbrev"] = "마젠"
L["ManaRegenMenu"] = "마나 재생"
L["ManaRegenTip"] = ""
L["ManaRegenDescription"] = ""

L["Durability"] = "내구도"
L["DurabilityAbrev"] = "내구도"
L["DurabilityMenu"] = "내구도"
L["DurabilityTip"] = ""
L["DurabilityDescription"] = L["TipsAndInfo"] .. "현재 착용중인 무기와 장비의 내구도 퍼센트입니다"

L["Speed"] = "이동 속도"
L["SpeedAbrev"] = "이속"
L["SpeedMenu"] = "이동 속도"
L["SpeedTip"] = ""
L["SpeedDescription"] = L["TipsAndInfo"] .. "캐릭터의 실시간 이동 속도입니다.\n\n빨간 " .. L["Red"] .. "이동 속도|r 값은 이동 속도 감소 효과에 걸렸거나 기본 속도보다 느리게 움직이는 것을 나타냅니다"

L["TargetSpeed"] = "대상 이동 속도"
L["TargetSpeedAbrev"] = "이속+"
L["TargetSpeedMenu"] = "대상 이동 속도"
L["TargetSpeedTip"] = ""
L["TargetSpeedDescription"] = L["TipsAndInfo"] .. "대상의 실시간 이동 속도입니다\n\n빨간 " .. L["Red"] .. "이동 속도|r 값은 이동 속도 감소 효과에 걸렸거나 기본 속도보다 느리게 움직이는 것을 나타냅니다"

L["ItemLevel"] = "아이템 레벨"
L["ItemLevelAbrev"] = "iLvl"
L["ItemLevelMenu"] = "아이템 레벨"
L["ItemLevelTip"] = ""
L["ItemLevelDescription"] = L["TipsAndInfo"] .. "평균 아이템 레벨"

L["Honor"] = "명예"
L["HonorAbrev"] = "명예"
L["HonorMenu"] = "명예"
L["HonorTip"] = ""
L["HonorDescription"] = ""

L["Lag"] = "핑"
L["LagAbrev"] = "핑"
L["LagMenu"] = "핑"
L["LagTip"] = ""
L["LagDescription"] = ""

L["FPS"] = "FPS"
L["FPSAbrev"] = "FPS"
L["FPSMenu"] = "FPS"
L["FPSTip"] = ""
L["FPSDescription"] = ""

L["Gold"] = "소지금"
L["GoldAbrev"] = "G"
L["GoldMenu"] = "소지금"
L["GoldTip"] = ""
L["GoldDescription"] = ""


-- Fonts
L["Default Font"] = "Arial Narrow"
L["Thin"] = "얇게"
L["Thick"] = "두껍게"
L["Monochrome"] = "모노크롬"
L["Thin Monochrome"] = "얇은 모노크롬"
L["Thick Monochrome"] = "두꺼운 모노크롬"
L["None"] = "없음"



------------------
--    Config    --
------------------

-- Settings tabs
L["HUDMenu"] = "HUD"
L["FontsMenu"] = "폰트"
L["DisplayMenu"] = "화면"
L["EventsMenu"] = "이벤트"
L["ProfilesMenu"] = "프로필"

-- Settings HUD
L["SettingsDescription"] = ""
L["HideHUD"] = "숨김"
L["HideHUDTip"] = "HUD를 숨깁니다"
L["LockHUD"] = "잠금"
L["LockHUDTip"] = "HUD를 잠급니다"
L["PanelDisplay"] = "캐릭터창과 함께 보기"
L["PanelDisplayTip"] = "캐릭터창이 열릴 때 보여줍니다"
L["ResetPosition"] = "HUD 위치 초기화"
L["ResetPositionTip"] = "능력치 HUD 위치를 초기화합니다"
L["MinimapGroupText"] = "미니맵"
L["Minimap"] = "버튼 보기"
L["MinimapTip"] = "미니맵 버튼을 보이거나 숨깁니다. 마우스 오버시 빠른 설정을 보여줍니다"
L["HUDStrataTip"] = "HUD 창 우선순위"
L["Low"] = "낮음"
L["Medium"] = "중간"
L["High"] = "높음"
L["Highest"] = "매우 높음"

-- Fonts Settings
L["StatFontTip"] = "글꼴"
L["StatFontSizeTip"] = "글꼴 크기"
L["StatFontFlagsTip"] = "외곽선"

-- Display Settings
-- L["StatIconsTip"] = "Stats icons"
-- L["StatIcons"] = "Enable"
-- L["StatTextAbreviateTip"] = "Abbreviate stats"
-- L["StatTextAbreviate"] = "Enable"
-- L["StatTextCapsTip"] = "All caps stats"
-- L["StatTextCaps"] = "Enable"
-- L["GroupOrderTip"] = "Order stats by group"
-- L["GroupOrder"] = "Enable"

-- Display Settings
L["StatIconsTip"] = ""
L["StatIcons"] = "능력치 아이콘"
L["StatTextAbreviateTip"] = ""
L["StatTextAbreviate"] = "짧은 능력치명으로 표시"
L["StatTextCapsTip"] = ""
L["StatTextCaps"] = "능력치명 대문자로 표시"
L["GroupOrderTip"] = ""
L["GroupOrder"] = "그룹별 능력치 정렬"
L["VerticalGroupText"] = "정렬 및 간격"
L["VerticalTip"] = "수직 & 수평"
L["Vertical"] = "세로 방향"
L["StatSpacingHTip"] = "수평 간격"
L["StatSpacingVTip"] = "수직 간격"
L["StatAlignmentTip"] = "정렬"
L["StatRowsTip"] = "줄 개수"

-- Events
L["EventEnable"] = "활성화"
L["EventEnableTip"] = "활성화시 선택한 이벤트로 HUD 표시를 제한 할 수 있습니다. 전투중 이벤트가 가장 높은 우선 순위를 갖습니다"
L["EventWorld"] = "실외"
L["EventWorldTip"] = L["Green"] .. "HUD 이벤트"
L["EventDungeon"] = "던전"
L["EventDungeonTip"] = ""
L["EventRaid"] = "레이드"
L["EventRaidTip"] = ""
L["EventPvP"] = "투기장"
L["EventPvPTip"] = ""
L["EventArena"] = "전장"
L["EventArenaTip"] = ""
L["EventCombat"] = "전투중"
L["EventCombatTip"] = ""

-- Minimap
L["LeftClick"] = "빠른 메뉴"
L["OpenClose"] = ""
L["RightClick"] = "오른쪽 클릭"
L["EnableDisable"] = "HUD |cffFFF468활성화/비활성화|r"
L["ShiftRightClick"] = "Shift + 오른쪽 클릭"
L["UnlockHUD"] = "HUD |cffFFF468잠금/잠금해제|r"
L["ControlClick"] = "Ctrl + 오른쪽 클릭"
L["AttachPanel"] = "HUD |cffFFF468캐릭터창과 함께 보기|r"
L["AltClick"] = "Alt + 오른쪽 클릭"
L["DetachPanel"] = "HUD |cffFFF468캐리터창과 함께 보기 해제|r"

-- Settings Profile
L["Selected"] = "적용"
L["SelectProfile"] = "사용중인 프로필은 삭제 할 수 없습니다. 삭제하려면 먼저 다른 프로필을 선택하세요"
L["ProfileSelected"] = "프로필"
L["ProfileUsed"] = "프로필이 현재 사용중입니다. 삭제 할 수 없습니다!"
L["NewProfile"] = "새로운 프로필 생성"
L["CurrentProfile"] = "활성 프로필"
L["Copy"] = "적용"
L["Delete"] = "삭제"
L["ConfirmDelete"] = "확인"
L["Cancel"] = "취소"
L["ProfileCopyDelete"] = "Select, delete or copy to new profile."

-- Settings Options
L["OptionsTip"] = "추가 설정"
L["Show"] = "표시"
L["ShowTip"] = ""
L["Enhanced"] = "고급"
L["Base"] = "기본"
L["Damage"] = "공격"
L["DamageTaken"] = "방어"
L["World"] = "서버"
L["Realm"] = "사용자"
L["Average"] = "평균"
L["Level"] = "레벨"
L["Honor"] = "명예"
L["Both"] = "모두"

L["Settings"] = "설정"
L["SettingsDescription"] = ""

L["Physical"] = "물리"
L["PhysicalDescription"] = ""

L["Enhancement"] = "고급"
L["EnhancementDescription"] = ""

L["Spell"] = "주문"
L["SpellDescription"] = ""

L["Misc"] = "기본"
L["MiscDescription"] = ""

L["Display_Average"] = "평균"
L["Display_AverageTip"] = ""

L["Display_Rated"] = "평점"
L["Display_RatedTip"] = ""

L["Melee"] = "근접"
L["Ranged"] = "원거리"
L["Left"] = "왼쪽"
L["Right"] = "오른쪽"
L["Create"] = "생성"

L["Equipped"] = "착용중"
L["Overall"] = "가방포함"


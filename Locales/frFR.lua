local AddName, AddonTable = ...
local L = AddonTable.L 

if AddonTable.locale == "frFR" then

	------------------
	-- Stats on HUD --
	------------------
	L["APLong"] = "AP: "
	L["APShort"] = "AP: "
	L["RAPLong"] = "AP Dis: "
	L["RAPShort"] = "dAP: "	
	L["DMGLong"] = "Dégâts: "
	L["DMGShort"] = "DMG: "	
	L["DPSLong"] = "DPS: "
	L["DPSShort"] = "DPS: "	
	L["rDMGLong"] = "Dégâts Dis: "
	L["rDMGShort"] = "dDMG: "	
	L["rDPSLong"] = "DPS Dis: "
	L["rDPSShort"] = "dDPS: "		
	L["FireLong"] = "Feu: +"
	L["FireShort"] = "FEU: "
	L["FrostLong"] = "Givre: +"
	L["FrostShort"] = "GIV: "
	L["ArcaneLong"] = "Arcanes: +"
	L["ArcaneShort"] = "ARC: "
	L["ShadowLong"] = "Ombre: +"
	L["ShadowShort"] = "OMB: "
	L["NatureLong"] = "Nature: +"
	L["NatureShort"] = "NAT: "
	L["HealingLong"] = "Soins: +"
	L["HealingShort"] = "SOI: "
	L["HolyLong"] = "Sacré: +"
	L["HolyShort"] = "SAC: "	
	L["CritLong"] = "Crit: "
	L["CritShort"] = "CRIT: "	
	L["CritBossLong"] = "Crit+: "
	L["CritBossShort"] = "CRIT+: "		
	L["CritCapLong"] = "Crit Cap: "
	L["CritCapShort"] = "CAP: "	
	L["rCritLong"] = "Crit Dis: "
	L["rCritShort"] = "dCRIT: "	
	L["rCritBossLong"] = "Crit+ Dis: "
	L["rCritBossShort"] = "dCRIT+: "	
	L["SpellCritLong"] = "Crit Sort: "
	L["SpellCritShort"] = "sCRIT: "	
	L["sCritBossLong"] = "Crit+ Sort: "
	L["sCritBossShort"] = "sCRIT+: "		
	L["HitLong"] = "Toucher: "
	L["HitShort"] = "TOU: "		
	L["rHitLong"] = "Toucher Dis: " 
	L["rHitShort"] = "dTOU: "
	L["sHitLong"] = "Toucher Sort: " 
	L["sHitShort"] = "sTOU: "
	L["HasteLong"] = "Hâte: "
	L["HasteShort"] = "HAT: " 
	L["AsLong"] = "Vitesse: "
	L["AsShort"] = "VIT: "
	L["rHasteLong"] = "Hâte Dis: "
	L["rHASShort"] = "dHAT: "
	L["rAtkSpeedLong"] = "Vitesse Dis: "
	L["rAtkSpeedShort"] = "dVIT: "
	L["SpellHasteLong"] = "Hâte Sort: "
	L["SpellHasteShort"] = "sHAT: "
	L["ArmPenLong"] = "Armure Pen: "
	L["ArmPenShort"] = "ArP: "
	L["ExpLong"] = "Expertise: "
	L["ExpShort"] = "EXP: "		
	L["MissLong"] = "Rater: "
	L["MissShort"] = "RAT: "
	L["BossMissLong"] = "Rater+: "
	L["BossMissShort"] = "RAT+: "
	L["AvoidLong"] = "Évitement: "
	L["AvoidShort"] = "EVI: "
	L["CrushLong"] = "Écrasement: "
	L["CrushShort"] = "ECR: "
	L["GetCritLong"] = "Subir Crit: "
	L["GetCritShort"] = "CRIT-: "
	L["rMissLong"] = "Rater Dis: "
	L["rMissShort"] = "dRAT: " 
	L["rMissBossLong"] = "Rater Dis+: "
	L["rMissBossShort"] = "dRAT+: "
	L["SpellMissLong"] = "Rater Sort: " 
	L["SpellMissShort"] = "sRAT: " 
	L["SpellBossMissLong"] = "Rater Sort+: " 
	L["SpellBossMissShort"] = "sRAT+: "
	L["MP2Long"] = "MP2: " 
	L["MP2Short"] = "MP2: " 
	L["MP2CastingLong"] = "MP2 Combat: " 
	L["MP2CastingShort"] = "MP2+: "
	L["MP5Long"] = "MP5: " 
	L["MP5Short"] = "MP5: "
	L["MP5CastingLong"] = "MP5 Combat: " 
	L["MP5CastingShort"] = "MP5+: "	
	L["ResilLong"] = "Résilience: " 
	L["ResilShort"] = "RES: "		
	L["ArmorLong"] = "Armure: " 
	L["ArmorShort"] = "ARM: "
	L["MitigationLong"] = "Atténuation: " 
	L["MitigationShort"] = "ATT: "
	L["DefenseLong"] = "Défense: " 
	L["DefenseShort"] = "DEF: "
	L["DodgeLong"] = "Esquive: " 
	L["DodgeShort"] = "ESQ: "
	L["ParryLong"] = "Parade: " 
	L["ParryShort"] =	"PAR: " 
	L["BlockLong"] = "Blocage: " 
	L["BlockShort"] = "BLO: " 
	L["FireResLong"] = "Res Feu: " 
	L["FireResShort"] = "RF: "
	L["FrostResLong"] = "Res Givre: " 
	L["FrostResShort"] = "RG: "
	L["ShadowResLong"] = "Res Ombre: " 
	L["ShadowResShort"] = "RO: "
	L["ArcaneResLong"] = "Res Arcanes: " 
	L["ArcaneResShort"] = "RA: "	
	L["NatureResLong"] = "Res Nature: " 
	L["NatureResShort"] = "RN: " 	
	L["SpeedLong"] = "Mouvement: " 
	L["SpeedShort"] = "MOV: "
	L["DurabilityLong"] = "Durabilité: " 
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
	L["BloodFrenzy"] = "|cffC69B6DFrénésie sanglante|r"
	L["CurseofElements"] = "|cff8788EEMalédiction des éléments|r"
	L["FireVulnerability"] = "|cff3FC7EBVulnérabilité au Feu|r"
	L["Hemorrhage"] = "|cffFFF468Hémorragie|r"
	L["HuntersMark"] = "|cffAAD372Marque du chasseur|r"	
	L["InsectSwarm"] = "|cffFF7C0AEssaim d'insectes|r"
	L["Misery"] = "|cffffffffMisère|r"
	L["SealofCrusader"] = "|cffF48CBASceau du Croisé amélioré|r"
	L["ScorpidSting"] = "|cffAAD372Piqûre de scorpide|r"
	L["SurvivalofFittest"] = "|cffFF7C0ASurvie du plus fort|r"
	L["ShadowWeaving"] = "|cffffffffTissage de l'ombre|r"
	L["ShadowVulnerability"] = "|cff8788EEVulnérabilité à l'Ombre|r"
	L["Stormstrike"] = "|cff0070DDFrappe-tempête|r"
	L["WintersChill"] = "|cff3FC7EBFroid hivernal|r"
	L["SpellPowerModifiers"] = "Sorts modificateurs"
	L["NPCPlus3"] = "NPC +3 Niveaux"
	L["NPC1to5"] = "NPC +1 à +5 Niveaux"
	L["NPCAnyLevel"] = "NPC de tous niveaux"
	L["DefaultValueText"] = "\n\n|cffF0851AValeur par défaut:|r "
	L["ScalingText"] = "\n|cffF0851AÉchelon:|r "
	L["SinLive"] = "|cff00f26dSinLive™ Stat! \nCette stat est interactive et s'échelonne selon votre cible!|r\n\n"
	L["TipsAndInfo"] = "|cff00f26dAstuces et Infos!|r\n\n"	
	
	-------------------
	-- Settings Menu --
	-------------------
	
	-- Tabs
	L["HUDTab"] = "|cffF0851AHUD|r"
	L["MeleeTab"] = "|cffF0851AMelée|r"
	L["DefenseTab"] = "|cffF0851ADéfense|r"
	L["RangedTab"] = "|cffF0851ADistance|r"
	L["SpellTab"] = "|cffF0851ASort|r"
	L["ResistanceTab"] = "|cffF0851AResistance|r"	
	L["MiscTab"] = "|cffF0851AAutre|r"	
	
	--- HUD
	L["HUDSettings"] = "|cffF0851AOptions HUD|r"
	L["GeneralOptionsText"] = "Options Générales"
	L["StatsOptionsText"] = "Options du texte"
	L["SettingsTextTabs"] = " Options"
	
	---- Buttons and Sliders
	L["SliderTextSize"] = "Taille de Police"
	L["SliderCurrentText"] = "Présent: "
	L["EnableAllButton"] = "Activer les stats"
	L["DisableAllButton"] = "Désactiver les stats"	
	L["ResetPositionButton"] = "Réinitialiser \nPosition"
	L["ResetPositionPopup"] = "Réinitialiser la position du HUD ?"	
	
	---- Options
	L["HUDEnable"] = "HUD [|cff00f26dActivé|r]"
	L["HUDDisable"] = "HUD [|cffC41E3ADésactivé|r]"
	L["HUDTooltip"] = "Basculer le HUD"
	
	L["HUDLocked"] = "HUD [|cffC41E3AVérrouillé|r]"
	L["HUDUnlocked"] = "HUD [|cff00f26dDéverrouillé|r]"
	L["HUDLockTooltip"] = "Vérrouillé ou déverrouillé le HUD afin de le déplacer\nCette option peut également être executée par Shift + Boutton-droit sur le boutton de la Minimap"
	
	L["MinimapEnable"] = "Boutton Minimap [|cff00f26dActivé|r]"
	L["MinimapDisable"] = "Boutton Minimap [|cffC41E3ADésactivé|r]"
	L["MinimapTooltip"] = "Basculer le boutton de la Minimap"
	
	L["StatsIconsEnable"] = "Icône des stats [|cff00f26dActivé|r]"
	L["StatsIconsDisable"] = "Icône des stats [|cffC41E3ADésactivé|r]"
	L["StatsIconsTooltip"] = "Basculer les icônes des stats"
	
	L["ChangeFontsTitle"] = "|cffFFFFFFPolice|r"
	L["TextOutlineTitle"] = "|cffFFFFFFContour|r"
	L["StatsAlignTitle"] = "|cffFFFFFFAlignment|r"
	L["StatsGroupTitle"] = "|cffFFFFFFGroupement|r"
	L["TextStyleTitle"] = "|cffFFFFFFStyle du texte|r"
	L["TextRowsSliderTitle"] = "Nombre de rangées"
	L["TextRowsVertical"] = "Direction texte [|cff00f26dVerticale|r]"
	L["TextRowsHorizontal"] = "Direction texte [|cffF2A427Horizontale|r]"
	L["TextRowsTooltip"] = "Change la direction du texte, entre verticale et horizontale\nSi l'option horizontale est choisie, vous aurez la possibilité de\nchoisir le nombre de stats par rangée"
	L["CountourOption1"] = "Fin"
	L["CountourOption2"] = "Épais"
	L["CountourOption3"] = "Monochrome"
	L["CountourOption4"] = "Monochrome Fin"
	L["CountourOption5"] = "Monochrome Épais"
	L["CountourOption6"] = "Aucun"
	L["AlignmentLeft"] = "Gauche"	
	L["AlignmentRight"] = "Droit"
	L["DefaultOptionText"] = "Défaut"
	L["TextStyleNormal"] = "Normal"
	L["TextStyleShort"] = "Court"
	
	----- Minimap button tooltips
	L["MimimapTooltipLine1"] = "[|cff00f26dClique gauche|r] pour |cffF2A427Ouvrir/Fermer|r les options"
	L["MimimapTooltipLine2"] = "[|cff00f26dClique droit|r] pour |cffF2A427Activer/Désactiver|r le HUD"
	L["MimimapTooltipLine3"] = "[|cff00f26dShift + Clique droit|r] to |cffF2A427Vérrouiller/Déverrouiller|r le HUD"
	
	-- Interface/Addons Panel
	L["ExpansionTitle"] = "|cffF2A427Burning Crusade Classic|r"
	L["OpenSettingsButton"] = "|cffFFFFFFOuvrir les options|r"
	L["InterfaceBodyText1"] = "|cffF2A427Les menu des options peut s'ouvrir via les commandes " .. "|cff00f26d/sinstats|r" .. " ou " .. "|cff00f26d/ss|r"
	L["InterfaceBodyText2"] = "|cffF2A427Le" .." |cff00f26dboutton de la Minimap|r" .. " offre également des options raccourcies.|r"
	L["InterfaceVersion"] = "|cffF2A427Version:|r "
	L["InterfaceAuthor"] = "|cffF2A427Auteur:|r "	
	

	--- Stats text on menu tabs
	L["AttackPower"] = " Puissance" 
	L["AttackPowerTooltip"] = L["TipsAndInfo"] .. "Une |cffC41E3APuissance|r rouge indique que vous êtes atteint par \nun mauvais sort affectant cette stat"
	---
	L["RangedAttackPower"] = " Puissance |cff00f26d+|r" 
	L["RangedAttackPowerTooltip"] = L["SinLive"] .. "Une |cffC41E3APuissance|r rouge indique que vous êtes atteint par un mauvais sort affectant cette stat\nUne |cff00f26dPuissance|r verte indique que le sort Marque du chasseur est actif sur votre cible\n" .. L["ScalingText"] .. L["HuntersMark"]	
	---	
	L["Damage"] = " Dégâts |cff00f26d+|r" 
	L["DamageTooltip"] = L["SinLive"] .. "Un |cffC41E3ADégâts|r en rouge indique que vous êtes affecté par \nun mauvais sort affectant cette stat\n" .. L["ScalingText"] .."\n".. L["BloodFrenzy"] .."\n".. L["Hemorrhage"]
	---	
	L["DamagePerSecond"] = " Dégâts par seconde" 
	L["DamagePerSecondTooltip"] = L["TipsAndInfo"] .. "Affiche votre DPS avec les armes de melées\nUn |cffC41E3ADPS|r en rouge indique que vous êtes affecté par \nun mauvais sort affectant cette stat"
	---	
	L["RangeDamage"] = " Dégâts |cff00f26d+|r"
	L["RangeDamageTooltip"] = L["SinLive"] .. "Un |cffC41E3ADégâts|r en rouge indique que vous êtes affecté par \nun mauvais sort affectant cette stat\n" .. L["ScalingText"] .."\n".. L["BloodFrenzy"] .."\n".. L["Hemorrhage"]
	---	
	L["RangeDamagePerSecond"] = " Dégâts par seconde"
	L["RangeDamagePerSecondTooltip"] = L["TipsAndInfo"] .. "Affiche votre DPS avec les armes à distance\nUn |cffC41E3ADPS|r en rouge indique que vous êtes affecté par un mauvais sort affectant cette stat"
	---	
	L["FirePower"] = " Dégâts du Feu |cff00f26d+|r"
	L["FirePowerTooltip"] = L["SinLive"] .. "Inclus +Feu des équipments, potions, enchantements et talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"] .."\n".. L["FireVulnerability"]	
	---	
	L["FrostPower"] = " Dégâts de Givre |cff00f26d+|r"
	L["FrostPowerTooltip"] = L["SinLive"] .. "Inclus +Givre des équipments, potions, enchantements et talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"]
	---		
	L["ArcanePower"] = " Dégâts d'Arcanes |cff00f26d+|r"
	L["ArcanePowerTooltip"] = L["SinLive"] .. "Inclus +Arcanes des équipments, potions, enchantements et talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["CurseofElements"]
	---		
	L["ShadowPower"] = " Dégâts d'Ombre |cff00f26d+|r"
	L["ShadowPowerTooltip"] = L["SinLive"] .. "Inclus +Ombre des équipments, potions, enchantements et talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] ..", "..  L["ShadowWeaving"] .."\n".. L["ShadowVulnerability"] ..", ".. L["CurseofElements"]	
	---	
	L["NaturePower"] = " Dégâts de Nature |cff00f26d+|r"
	L["NaturePowerTooltip"] = L["SinLive"] .. "Inclus +Nature des équipments, potions, enchantements et talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["Stormstrike"]
	---	
	L["HealingPower"] = " Puissance des Soins " 
	L["HealingPowerTooltip"] = L["TipsAndInfo"] .. "Inclus +Soins des équipments, potions, enchantements et talents\n"
	---	
	L["HolyPower"] = " Dégâts du Sacré |cff00f26d+|r" 
	L["HolyPowerTooltip"] = L["SinLive"] .. "Inclus +Sacré des équipments, potions, enchantements et talents\n" .. L["ScalingText"] .."\n".. L["SpellPowerModifiers"] .."\n".. L["Misery"] .."\n".. L["SealofCrusader"]	
	---	
	L["CriticalStrike"] = " Critique |cff00f26d+|r"
	L["CriticalStrikeTooltip"] = L["SinLive"] .. "Valeur Critique du Grimoire\nReprésente aussi la valeur Critique en PvP\n" .. L["ScalingText"] .."\n".. L["SealofCrusader"]
	---	
	L["CriticalStrikeBoss"] = " Critique vs Boss |cff00f26d+|r"
	L["CriticalStrikeBossTooltip"] = L["SinLive"] .. "Critique melée en PvE, contre un NPC de plus haut niveau\nInclus tous les auras supprimants le Critique" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPC1to5"] .."\n".. L["SealofCrusader"]
	---	
	L["CriticalCap"] = " Cap Critique"
	L["CriticalCapTooltip"] = L["TipsAndInfo"] .. "Affiche le Cap Critique melée contre un Boss \nvariant selon les arms utilisées"    		
	---	
	L["RangeCritical"] = " Critique"
	L["RangeCriticalTooltip"] = L["TipsAndInfo"] .. "Critique à distance tel que sur le Grimoire\nReprésente également la valeur en PvP"
	---	
	L["RangeCriticalBoss"] = " Critique vs Boss |cff00f26d+|r"
	L["RangeCriticalBossTooltip"] = L["SinLive"] .. "Critique à distance en PvE, contre un NPC de plus haut niveau\nInclus tous les auras supprimants le Critique" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["SpellCritical"] = " Critique |cff00f26d+|r"
	L["SpellCriticalTooltip"] = L["SinLive"] .. "Critique des sorts provenant tel que sur le Grimoire\nReprésente également la valeur en PvP\nLes talents spécifiques à un sort sont affichés en couleurs\n" .. L["ScalingText"] .."\n".. L["SealofCrusader"] .."\n".. L["WintersChill"]
	---	
	L["SpellCriticalBoss"] = " Critique vs Boss |cff00f26d+|r"
	L["SpellCriticalBossTooltip"] = L["SinLive"] .. "Critique des sorts en PvE, contre un NPC de plus haut niveau\nInclus tous les auras supprimants le Critique\nLes talents spécifiques à un sort sont affichés en couleurs" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPC1to5"] .."\n".. L["SealofCrusader"] .."\n".. L["WintersChill"]
	---	
	L["HitMelee"] = " Toucher"
	L["HitMeleeTooltip"] = L["TipsAndInfo"] .. "Affiche la chance de Toucher en melée. Inclus toutes les sources de score de toucher"
	---	
	L["HitRange"] = " Toucher"
	L["HitRangeTooltip"] = L["TipsAndInfo"] .. "Affiche la chance de Toucher en melée. Inclus toutes les sources de score de toucher"
	---	
	L["HasteMelee"] = " Hâte"
	L["HasteMeleeTooltip"] = "|cff00f26dAstuces et Infos!|r\n\Pourcentage bonus de la Hâte provenant des procs, enchantements,\ntalents, bijoux, potions et buffs"
	---	
	L["AttackSpeed"] = " Vitesse d'attaque"
	L["AttackSpeedTooltip"] = L["TipsAndInfo"] .. "Vitesse d'arme de la main gauche et de la main droite"
	---	
	L["ArmorPenetration"] = " Penetration d'Armure"
	L["ArmorPenetrationTooltip"] = L["TipsAndInfo"] .. "Pourcentage de l'armure de votre cible que vos attaques physiques ignorent"
	---	
	L["Expertise"] = " Expertise"
	L["ExpertiseTooltip"] = L["TipsAndInfo"] .. "Chances d'etre esquivé ou paré de la main gauche et la main droite"		
	---	
	L["MissMelee"] = " Chance de rater"
	L["MissMeleeTooltip"] = L["TipsAndInfo"] .. "Chance de rater avec les armes de melées contre un NPC du meme niveau"
	---	
	L["MissMeleeBoss"] = " Rater vs Boss |cff00f26d+|r"
	L["MissMeleeBossTooltip"] = L["SinLive"] .. "Chance de rater avec les armes de melées contre un NPC de niveau Boss" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["Avoidance"] = " Évitement |cff00f26d+|r"
	L["AvoidanceTooltip"] = L["SinLive"] .. "Chance d'éviter les coups d'écrasement \nUn |cff00f26dÉvitement|r en vert indique que vous êtes inécrasable" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["ScorpidSting"] .."\n".. L["InsectSwarm"]
	---		
	L["Crushing"] = " Écrasement |cff00f26d+|r"
	L["CrushingTooltip"] = L["SinLive"] .. "Chance d'etre atteint d'un coup d'écrasement \nUn |cff00f26dÉcrasement|r en vert indique que vous êtes écrasable" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["ScorpidSting"] .."\n".. L["InsectSwarm"]
	---	
	L["CriticallyHit"] = " Critique subit |cff00f26d+|r"
	L["CriticallyHitTooltip"] = L["SinLive"] .. "Chance de subir un coup critique \nUn |cff00f26dCritique subit|r en vert indique que vous ne pouvez plus recevoir de coups critiques\nUn |cffC41E3ACritique subit|r indique que vous pouvez encore subir des coups critiques" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .."\n".. L["NPCAnyLevel"] .."\n".. L["SurvivalofFittest"]
	---	
	L["HasteRange"] = " Hâte"
	L["HasteRangeTooltip"] = L["TipsAndInfo"] .. "Hâte provenants des procs, enchantements, talents, bijoux, potions et buffs"
	---	
	L["AtkSpeedRange"] = " Vitesse d'attaque"
	L["AtkSpeedRangeTooltip"] = L["TipsAndInfo"] .. "Vitesse d'attaque de l'arme à distance"		
	---	
	L["MissRange"] = " Chance de rater"
	L["MissRangeTooltip"] = L["TipsAndInfo"] .. "Chance de rater avec une arme à distance contre un ennemi du meme niveau"
	---	
	L["MissRangeBoss"] = " Rater vs Boss |cff00f26d+|r"
	L["MissRangeBossTooltip"] = L["SinLive"] .. "Chance de rater avec une arme à distance contre un NPC de +3 Niveaux" .. L["DefaultValueText"] .. L["NPCPlus3"] .. L["ScalingText"] .. L["NPC1to5"]
	---	
	L["HitSpell"] = " Toucher"
	L["HitSpellTooltip"] = L["TipsAndInfo"] .. "Les talents affectants certains sorts sont ajoutés en couleurs"
	---	
	L["HasteSpell"] = " Hâte"
	L["HasteSpellTooltip"] = L["TipsAndInfo"] .. "Bonus de Hâte provenant des procs, talents, bijoux, potions, buffs et autre"
	---	
	L["MissSpell"] = " Chance de rater"
	L["MissSpellTooltip"] = L["TipsAndInfo"] .. "Chance de rater avec les sorts contre un ennemi du meme niveau"
	---	
	L["MissSpellBoss"] = " Rater vs Boss"
	L["MissSpellBossTooltip"] = L["TipsAndInfo"] .. "Chance de rater avec les sorts contre un ennemi de +3 niveaux"
	---	
	L["ManaRegen"] = " Régén Mana"
	L["ManaRegenTooltip"] = L["TipsAndInfo"] .. "Régéneration Mana par 2 secondes\naussi connue sous le nom de MP2 (hors de combat). \nElle reflete la régéneration de la bar de mana"
	---	
	L["CastingRegen"] = " Régen Mana Combat"
	L["CastingRegenTooltip"] = L["TipsAndInfo"] .. "Régéneration Mana par 2 secondes\naussi connue sous le nom de MP2 (en combat).\nElle reflete la régéneration de la bar de mana"
	---	
	L["MP5"] = " MP5"
	L["MP5Tooltip"] = L["TipsAndInfo"] .. "Régéneration Mana par 5 secondes (hors de la regle des 5 secondes)"
	---	
	L["CastingMP5"] = " MP5 Combat"
	L["CastingMP5Tooltip"] = L["TipsAndInfo"] .. "Régéneration Mana par 5 secondes (a l'interieur de la regle des 5 secondes)"
	---	
	L["Resilience"] = " Résilience"
	L["ResilienceTooltip"] = L["TipsAndInfo"] .. "Diminution des dégâts des sources de dégâts périodiques et \nles chances de recevoir un coup critique"			
	---	
	L["Armor"] = " Armure"
	L["ArmorTooltip"] = L["TipsAndInfo"] .. "Armure effective, incluant tous les modificateurs\nUne |cffC41E3AArmure|r en rouge indique que vous êtes atteint par un mauvais sort affectant cette stat"	
	---
	L["Mitigation"] = " Atténuation"
	L["MitigationTooltip"] = L["TipsAndInfo"] .. "Pourcentage d'atténuation contre un NPC de +3 niveaux"
	---		
	L["Defense"] = " Défense"
	L["DefenseTooltip"] = L["TipsAndInfo"] .. "Affiche les compétences de Défense. Inclus toutes les sources +Défense"
	---	
	L["Dodge"] = " Esquive"
	L["DodgeTooltip"] = L["TipsAndInfo"] .. "Affiche les chances d'esquiver une attaque. Inclus toutes les sources d'esquives"
	---	
	L["Parry"] = " Parade"
	L["ParryTooltip"] = L["TipsAndInfo"] .. "Affiche les chances de parrer une attaque. Inclus toutes les sources de parade"
	---	
	L["Block"] = " Blocage"
	L["BlockTooltip"] = L["TipsAndInfo"] .. "Affiche les chances de bloquer une attaque. Inclus toutes les sources de blocage"
	---	
	L["Fire"] = " Feu"
	L["FireTooltip"] = L["TipsAndInfo"] .. "Affiche la resistance aux sorts de feu"
	---	
	L["Frost"] = " Givre"
	L["FrostTooltip"] = L["TipsAndInfo"] .. "Affiche la resistance aux sorts de givre"
	---	
	L["Shadow"] = " Ombre"
	L["ShadowTooltip"] = L["TipsAndInfo"] .. "Affiche la resistance aux sorts d'ombre"
	---	
	L["Arcane"] = " Arcanes"
	L["ArcaneTooltip"] = L["TipsAndInfo"] .. "Affiche la resistance aux sorts d'arcanes"	
	---	
	L["Nature"] = " Nature"
	L["NatureTooltip"] = L["TipsAndInfo"] .. "Affiche la resistance aux sorts de nature"
	---	
	L["MovementSpeed"] = " Mouvement"
	L["MovementSpeedTooltip"] = L["TipsAndInfo"] .. "Vitesse de mouvement en temps réel.|nUn |cffC41E3AMouvement|r en rouge indique que vous êtes atteint d'un sort qui vous ralenti"
	---	
	L["Durability"] = " Durabilité"
	L["DurabilityTooltip"] = L["TipsAndInfo"] .. "Pourcentage de durabilité de vos équipements et armes présentement portés"
	---	
	L["PlayerBuffs"] = " Buffs du joueur"
	L["PlayerBuffsTooltip"] = L["TipsAndInfo"] .. "Affiche le nombre total des sorts bénéfiques appliqués sur vous"
	---	
	L["TargetDebuffs"] = " Debuffs de la cible |cff00f26d+|r"
	L["TargetDebuffsTooltip"] = L["SinLive"] .. "Affiche le nombre de mauvais sorts appliqués sur votre cible\n" .. L["ScalingText"] .. "NPC ciblé"
	---	
	L["Latency"] = " Lag [ms]"
	L["LatencyTooltip"] = " Ping entre votre connexion et le serveur de Blizzard, en millisecondes"
	---	
	L["Framerate"] = " Images seconde [FPS]"
	L["FramerateTooltip"] = " Images seconde [FPS]"
	---	
	L["Money"] = " Argent"
	L["MoneyTooltip"] = L["TipsAndInfo"] .. "Montant total de votre argent"		

	
return end
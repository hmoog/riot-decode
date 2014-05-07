MAX_MINIONS_EVER = 180
TEAM_ORDER = 100
TEAM_CHAOS = 200
ORDER_HQ = 1
CHAOS_HQ = 2
FRONT_TOWER = 3
MIDDLE_TOWER = 2
BACK_TOWER = 1
HQ_TOWER2 = 4
HQ_TOWER1 = 5
RIGHT_LANE = 0
CENTER_LANE = 1
LEFT_LANE = 2
INITIAL_TIME_TO_SPAWN = 90
CASTER_MINION_SPAWN_FREQUENCY = 3
INCREASE_CANNON_RATE_TIMER = 2090
MINION_HEALTH_DENIAL_PERCENT = 0
MELEE_EXP_GIVEN = 64
MELEE_GOLD_GIVEN = 19.75
MELEE_GOLD_UPGRADE = 0.25
ARCHER_EXP_GIVEN = 32
ARCHER_GOLD_GIVEN = 14.75
ARCHER_GOLD_UPGRADE = 0.25
CASTER_EXP_GIVEN = 100
CASTER_GOLD_GIVEN = 39.5
CASTER_GOLD_UPGRADE = 0.5
SUPER_EXP_GIVEN = 100
SUPER_GOLD_GIVEN = 27
MELEE_HEALTH_UPGRADE = 10
MELEE_DAMAGE_UPGRADE = 0.5
MELEE_EXP_UPGRADE = 2
MELEE_ARMOR_UPGRADE = 1
MELEE_MR_UPGRADE = 0.625
ARCHER_HEALTH_UPGRADE = 7.5
ARCHER_DAMAGE_UPGRADE = 1
ARCHER_EXP_UPGRADE = 1.2
ARCHER_ARMOR_UPGRADE = 0.625
ARCHER_MR_UPGRADE = 1
CASTER_HEALTH_UPGRADE = 13.5
CASTER_DAMAGE_UPGRADE = 1.5
CASTER_EXP_UPGRADE = 3
CASTER_ARMOR_UPGRADE = 1.5
CASTER_MR_UPGRADE = 1.5
SUPER_HEALTH_UPGRADE = 100
SUPER_DAMAGE_UPGRADE = 5
SUPER_GOLD_UPGRADE = 0
SUPER_EXP_UPGRADE = 0
SUPER_ARMOR_UPGRADE = 0
SUPER_MR_UPGRADE = 0
MAXIMUM_MELEE_GOLD_BONUS = 12
MAXIMUM_ARCHER_GOLD_BONUS = 8
MAXIMUM_CASTER_GOLD_BONUS = 30
MAXIMUM_SUPER_GOLD_BONUS = 30
UPGRADE_MINION_TIMER = 90
MELEE_HEALTH_INHIBITOR = 100
MELEE_DAMAGE_INHIBITOR = 10
MELEE_GOLD_INHIBITOR = 0
MELEE_EXP_INHIBITOR = 0
ARCHER_HEALTH_INHIBITOR = 60
ARCHER_DAMAGE_INHIBITOR = 18
ARCHER_GOLD_INHIBITOR = 0
ARCHER_EXP_INHIBITOR = 0
CASTER_HEALTH_INHIBITOR = 200
CASTER_DAMAGE_INHIBITOR = 25
CASTER_GOLD_INHIBITOR = 0
CASTER_EXP_INHIBITOR = 0
SUPER_HEALTH_INHIBITOR = 0
SUPER_DAMAGE_INHIBITOR = 0
SUPER_GOLD_INHIBITOR = 0
SUPER_EXP_INHIBITOR = 0
EXP_GIVEN_RADIUS = 1250
DISABLE_MINION_SPAWN_BASE_TIME = 300
DISABLE_MINION_SPAWN_MAG_TIME = 0
LAST_WAVE = -1
SPECIAL_MINION_MODE = "none"
HQTurretAttackable = false
local l_0_0 = {}
l_0_0.MeleeMinionName = "Blue_Minion_Basic"
l_0_0.ArcherMinionName = "Blue_Minion_Wizard"
l_0_0.CasterMinionName = "Blue_Minion_MechCannon"
l_0_0.SuperMinionName = "Blue_Minion_MechMelee"
OrderNames = l_0_0
ChaosNames, l_0_0 = l_0_0, {MeleeMinionName = "Red_Minion_Basic", ArcherMinionName = "Red_Minion_Wizard", CasterMinionName = "Red_Minion_MechCannon", SuperMinionName = "Red_Minion_MechMelee"}
SpawnTable, l_0_0 = l_0_0, {WaveSpawnRate = 0, NumOfMeleeMinionsPerWave = 0, NumOfArcherMinionsPerWave = 0, NumOfCasterMinionsPerWave = 0, NumOfSuperMinionsPerWave = 0, SingleMinionSpawnDelay = 0, DidPowerGroup = 0, MeleeMinionName = 0, ArcherMinionName = 0, CasterMinionName = 0, SuperMinionName = 0}
ChaosBarrack0, l_0_0 = l_0_0, {IsDestroyed = false, MeleeMinionArmor = 0, MeleeMinionMagicResistance = 0, MeleeHPBonus = 0, MeleeDamageBonus = 0, MeleeGoldBonus = 0, MeleeExpBonus = 0, MeleeExpGiven = MELEE_EXP_GIVEN, MeleeGoldGiven = MELEE_GOLD_GIVEN, ArcherMinionArmor = 0, ArcherMinionMagicResistance = 0, ArcherHPBonus = 0, ArcherDamageBonus = 0, ArcherGoldBonus = 0, ArcherExpBonus = 0, ArcherExpGiven = ARCHER_EXP_GIVEN, ArcherGoldGiven = ARCHER_GOLD_GIVEN, CasterMinionArmor = 0, CasterMinionMagicResistance = 0, CasterHPBonus = 0, CasterDamageBonus = 0, CasterGoldBonus = 0, CasterExpBonus = 0, CasterExpGiven = CASTER_EXP_GIVEN, SuperMinionArmor = 0, SuperMinionMagicResistance = 0, SuperHPBonus = 0, SuperDamageBonus = 0, SuperGoldBonus = 0, SuperExpBonus = 0, SuperExpGiven = SUPER_EXP_GIVEN, NumOfSpawnDisables = 0, WillSpawnSuperMinion = 0, MeleeMinionName = 0, RangedMinionName = 0, CasterMinionName = 0, CasterGoldGiven = CASTER_GOLD_GIVEN, SuperMinionName = 0, SuperGoldGiven = CASTER_GOLD_GIVEN}
ChaosBarrack1, l_0_0 = l_0_0, {IsDestroyed = false, MeleeMinionArmor = 0, MeleeMinionMagicResistance = 0, MeleeHPBonus = 0, MeleeDamageBonus = 0, MeleeGoldBonus = 0, MeleeExpBonus = 0, MeleeExpGiven = MELEE_EXP_GIVEN, MeleeGoldGiven = MELEE_GOLD_GIVEN, ArcherMinionArmor = 0, ArcherMinionMagicResistance = 0, ArcherHPBonus = 0, ArcherDamageBonus = 0, ArcherGoldBonus = 0, ArcherExpBonus = 0, ArcherExpGiven = ARCHER_EXP_GIVEN, ArcherGoldGiven = ARCHER_GOLD_GIVEN, CasterMinionArmor = 0, CasterMinionMagicResistance = 0, CasterHPBonus = 0, CasterDamageBonus = 0, CasterGoldBonus = 0, CasterExpBonus = 0, CasterExpGiven = CASTER_EXP_GIVEN, SuperMinionArmor = 0, SuperMinionMagicResistance = 0, SuperHPBonus = 0, SuperDamageBonus = 0, SuperGoldBonus = 0, SuperExpBonus = 0, SuperExpGiven = SUPER_EXP_GIVEN, NumOfSpawnDisables = 0, WillSpawnSuperMinion = 0, MeleeMinionName = 0, RangedMinionName = 0, CasterMinionName = 0, CasterGoldGiven = CASTER_GOLD_GIVEN, SuperMinionName = 0, SuperGoldGiven = CASTER_GOLD_GIVEN}
ChaosBarrack2, l_0_0 = l_0_0, {IsDestroyed = false, MeleeMinionArmor = 0, MeleeMinionMagicResistance = 0, MeleeHPBonus = 0, MeleeDamageBonus = 0, MeleeGoldBonus = 0, MeleeExpBonus = 0, MeleeExpGiven = MELEE_EXP_GIVEN, MeleeGoldGiven = MELEE_GOLD_GIVEN, ArcherMinionArmor = 0, ArcherMinionMagicResistance = 0, ArcherHPBonus = 0, ArcherDamageBonus = 0, ArcherGoldBonus = 0, ArcherExpBonus = 0, ArcherExpGiven = ARCHER_EXP_GIVEN, ArcherGoldGiven = ARCHER_GOLD_GIVEN, CasterMinionArmor = 0, CasterMinionMagicResistance = 0, CasterHPBonus = 0, CasterDamageBonus = 0, CasterGoldBonus = 0, CasterExpBonus = 0, CasterExpGiven = CASTER_EXP_GIVEN, SuperMinionArmor = 0, SuperMinionMagicResistance = 0, SuperHPBonus = 0, SuperDamageBonus = 0, SuperGoldBonus = 0, SuperExpBonus = 0, SuperExpGiven = SUPER_EXP_GIVEN, NumOfSpawnDisables = 0, WillSpawnSuperMinion = 0, MeleeMinionName = 0, RangedMinionName = 0, CasterMinionName = 0, CasterGoldGiven = CASTER_GOLD_GIVEN, SuperMinionName = 0, SuperGoldGiven = CASTER_GOLD_GIVEN}
OrderBarrack0, l_0_0 = l_0_0, {IsDestroyed = false, MeleeMinionArmor = 0, MeleeMinionMagicResistance = 0, MeleeHPBonus = 0, MeleeDamageBonus = 0, MeleeGoldBonus = 0, MeleeExpBonus = 0, MeleeExpGiven = MELEE_EXP_GIVEN, MeleeGoldGiven = MELEE_GOLD_GIVEN, ArcherMinionArmor = 0, ArcherMinionMagicResistance = 0, ArcherHPBonus = 0, ArcherDamageBonus = 0, ArcherGoldBonus = 0, ArcherExpBonus = 0, ArcherExpGiven = ARCHER_EXP_GIVEN, ArcherGoldGiven = ARCHER_GOLD_GIVEN, CasterMinionArmor = 0, CasterMinionMagicResistance = 0, CasterHPBonus = 0, CasterDamageBonus = 0, CasterGoldBonus = 0, CasterExpBonus = 0, CasterExpGiven = CASTER_EXP_GIVEN, SuperMinionArmor = 0, SuperMinionMagicResistance = 0, SuperHPBonus = 0, SuperDamageBonus = 0, SuperGoldBonus = 0, SuperExpBonus = 0, SuperExpGiven = SUPER_EXP_GIVEN, NumOfSpawnDisables = 0, WillSpawnSuperMinion = 0, MeleeMinionName = 0, RangedMinionName = 0, CasterMinionName = 0, CasterGoldGiven = CASTER_GOLD_GIVEN, SuperMinionName = 0, SuperGoldGiven = CASTER_GOLD_GIVEN}
OrderBarrack1, l_0_0 = l_0_0, {IsDestroyed = false, MeleeMinionArmor = 0, MeleeMinionMagicResistance = 0, MeleeHPBonus = 0, MeleeDamageBonus = 0, MeleeGoldBonus = 0, MeleeExpBonus = 0, MeleeExpGiven = MELEE_EXP_GIVEN, MeleeGoldGiven = MELEE_GOLD_GIVEN, ArcherMinionArmor = 0, ArcherMinionMagicResistance = 0, ArcherHPBonus = 0, ArcherDamageBonus = 0, ArcherGoldBonus = 0, ArcherExpBonus = 0, ArcherExpGiven = ARCHER_EXP_GIVEN, ArcherGoldGiven = ARCHER_GOLD_GIVEN, CasterMinionArmor = 0, CasterMinionMagicResistance = 0, CasterHPBonus = 0, CasterDamageBonus = 0, CasterGoldBonus = 0, CasterExpBonus = 0, CasterExpGiven = CASTER_EXP_GIVEN, SuperMinionArmor = 0, SuperMinionMagicResistance = 0, SuperHPBonus = 0, SuperDamageBonus = 0, SuperGoldBonus = 0, SuperExpBonus = 0, SuperExpGiven = SUPER_EXP_GIVEN, NumOfSpawnDisables = 0, WillSpawnSuperMinion = 0, MeleeMinionName = 0, RangedMinionName = 0, CasterMinionName = 0, CasterGoldGiven = CASTER_GOLD_GIVEN, SuperMinionName = 0, SuperGoldGiven = CASTER_GOLD_GIVEN}
OrderBarrack2, l_0_0 = l_0_0, {IsDestroyed = false, MeleeMinionArmor = 0, MeleeMinionMagicResistance = 0, MeleeHPBonus = 0, MeleeDamageBonus = 0, MeleeGoldBonus = 0, MeleeExpBonus = 0, MeleeExpGiven = MELEE_EXP_GIVEN, MeleeGoldGiven = MELEE_GOLD_GIVEN, ArcherMinionArmor = 0, ArcherMinionMagicResistance = 0, ArcherHPBonus = 0, ArcherDamageBonus = 0, ArcherGoldBonus = 0, ArcherExpBonus = 0, ArcherExpGiven = ARCHER_EXP_GIVEN, ArcherGoldGiven = ARCHER_GOLD_GIVEN, CasterMinionArmor = 0, CasterMinionMagicResistance = 0, CasterHPBonus = 0, CasterDamageBonus = 0, CasterGoldBonus = 0, CasterExpBonus = 0, CasterExpGiven = CASTER_EXP_GIVEN, SuperMinionArmor = 0, SuperMinionMagicResistance = 0, SuperHPBonus = 0, SuperDamageBonus = 0, SuperGoldBonus = 0, SuperExpBonus = 0, SuperExpGiven = SUPER_EXP_GIVEN, NumOfSpawnDisables = 0, WillSpawnSuperMinion = 0, MeleeMinionName = 0, RangedMinionName = 0, CasterMinionName = 0, CasterGoldGiven = CASTER_GOLD_GIVEN, SuperMinionName = 0, SuperGoldGiven = CASTER_GOLD_GIVEN}
ChaosBarracksBonuses, l_0_0 = l_0_0, {ChaosBarrack0, ChaosBarrack1, ChaosBarrack2}
OrderBarracksBonuses, l_0_0 = l_0_0, {OrderBarrack0, OrderBarrack1, OrderBarrack2}
NeutralMinionNames, l_0_0 = l_0_0, {"Dragon", "Golem", "wolf", "AncientGolem", "LesserWraith", "GiantWolf", "LizardElder", "YoungLizard", "Wraith", "Worm", "SmallGolem"}
l_0_0 = function()
  local l_1_0 = {}
  l_1_0.Turret3 = true
  l_1_0.Turret2 = true
  l_1_0.Turret1 = true
  l_1_0.Barracks = true
  return l_1_0
end

CreateLaneBuildingTable = l_0_0
OrderBuildingStatus, l_0_0 = l_0_0, {CreateLaneBuildingTable(), CreateLaneBuildingTable(), CreateLaneBuildingTable(); HQTower2 = true, HQTower1 = true, HQ = true}
ChaosBuildingStatus, l_0_0 = l_0_0, {CreateLaneBuildingTable(), CreateLaneBuildingTable(), CreateLaneBuildingTable(); HQTower2 = true, HQTower1 = true, HQ = true}
l_0_0 = 0
TotalNumberOfMinions = l_0_0
l_0_0 = 3
totalNumberOfChaosBarracks = l_0_0
l_0_0 = 3
totalNumberOfOrderBarracks = l_0_0
l_0_0 = function()
  for l_2_3,l_2_4 in pairs(OrderNames) do
    PreloadCharacter(l_2_4)
  end
  for l_2_8,l_2_9 in pairs(ChaosNames) do
    PreloadCharacter(l_2_9)
  end
  PreloadCharacter("OrderTurretAngel")
  PreloadCharacter("OrderTurretDragon")
  PreloadCharacter("OrderTurretNormal2")
  PreloadCharacter("OrderTurretNormal")
  PreloadCharacter("ChaosTurretWorm")
  PreloadCharacter("ChaosTurretWorm2")
  PreloadCharacter("ChaosTurretGiant")
  PreloadCharacter("ChaosTurretNormal")
  PreloadSpell("RespawnClassic")
  PreloadSpell("SpellShieldMarker")
  math.randomseed(os.time())
  LoadLevelScriptIntoScript("NeutralMinionSpawn.lua", 1)
  NeutralMinionInit()
  LoadLevelScriptIntoScript("EndOfGame.lua", 1)
  SpawnTable.WaveSpawnRate = 30000
  SpawnTable.NumOfMeleeMinionsPerWave = 3
  SpawnTable.NumOfArcherMinionsPerWave = 3
  SpawnTable.SingleMinionSpawnDelay = 800
  SpawnTable.DidPowerGroup = false
end

OnLevelInit = l_0_0
l_0_0 = function()
  InitTimer("UpgradeMinionTimer", UPGRADE_MINION_TIMER, true)
  InitTimer("IncreaseCannonMinionSpawnRate", INCREASE_CANNON_RATE_TIMER, false)
  InitTimer("AllowDamageOnBuildings", 10, false)
end

OnLevelInitServer = l_0_0
l_0_0 = function()
  LoadLevelScriptIntoScript("CreateLevelProps.lua", 1)
  CreateLevelProps()
end

OnPostLevelLoad = l_0_0
l_0_0 = function(l_5_0)
  if l_5_0 == TEAM_CHAOS then
    return TEAM_ORDER
  else
    return TEAM_CHAOS
  end
end

OppositeTeam = l_0_0
l_0_0 = function()
  for l_6_3 = 1, 3 do
    OrderBarracksBonuses[l_6_3].MeleeHPBonus = OrderBarracksBonuses[l_6_3].MeleeHPBonus + MELEE_HEALTH_UPGRADE
    OrderBarracksBonuses[l_6_3].MeleeDamageBonus = OrderBarracksBonuses[l_6_3].MeleeDamageBonus + MELEE_DAMAGE_UPGRADE
    OrderBarracksBonuses[l_6_3].MeleeGoldBonus = OrderBarracksBonuses[l_6_3].MeleeGoldBonus + MELEE_GOLD_UPGRADE
    OrderBarracksBonuses[l_6_3].MeleeMinionArmor = OrderBarracksBonuses[l_6_3].MeleeMinionArmor + MELEE_ARMOR_UPGRADE
    OrderBarracksBonuses[l_6_3].MeleeMinionMagicResistance = OrderBarracksBonuses[l_6_3].MeleeMinionMagicResistance + MELEE_MR_UPGRADE
    if MAXIMUM_MELEE_GOLD_BONUS < OrderBarracksBonuses[l_6_3].MeleeGoldBonus then
      OrderBarracksBonuses[l_6_3].MeleeGoldBonus = MAXIMUM_MELEE_GOLD_BONUS
    end
    OrderBarracksBonuses[l_6_3].MeleeExpBonus = OrderBarracksBonuses[l_6_3].MeleeExpBonus + MELEE_EXP_UPGRADE
    OrderBarracksBonuses[l_6_3].MeleeGoldGiven = OrderBarracksBonuses[l_6_3].MeleeGoldBonus + MELEE_GOLD_GIVEN
    OrderBarracksBonuses[l_6_3].MeleeExpGiven = OrderBarracksBonuses[l_6_3].MeleeExpBonus + MELEE_EXP_GIVEN
    OrderBarracksBonuses[l_6_3].ArcherHPBonus = OrderBarracksBonuses[l_6_3].ArcherHPBonus + ARCHER_HEALTH_UPGRADE
    OrderBarracksBonuses[l_6_3].ArcherDamageBonus = OrderBarracksBonuses[l_6_3].ArcherDamageBonus + ARCHER_DAMAGE_UPGRADE
    OrderBarracksBonuses[l_6_3].ArcherGoldBonus = OrderBarracksBonuses[l_6_3].ArcherGoldBonus + ARCHER_GOLD_UPGRADE
    OrderBarracksBonuses[l_6_3].ArcherMinionArmor = OrderBarracksBonuses[l_6_3].ArcherMinionArmor + ARCHER_ARMOR_UPGRADE
    OrderBarracksBonuses[l_6_3].ArcherMinionMagicResistance = OrderBarracksBonuses[l_6_3].ArcherMinionMagicResistance + ARCHER_MR_UPGRADE
    if MAXIMUM_ARCHER_GOLD_BONUS < OrderBarracksBonuses[l_6_3].ArcherGoldBonus then
      OrderBarracksBonuses[l_6_3].ArcherGoldBonus = MAXIMUM_ARCHER_GOLD_BONUS
    end
    OrderBarracksBonuses[l_6_3].ArcherExpBonus = OrderBarracksBonuses[l_6_3].ArcherExpBonus + ARCHER_EXP_UPGRADE
    OrderBarracksBonuses[l_6_3].ArcherGoldGiven = OrderBarracksBonuses[l_6_3].ArcherGoldBonus + ARCHER_GOLD_GIVEN
    OrderBarracksBonuses[l_6_3].ArcherExpGiven = OrderBarracksBonuses[l_6_3].ArcherExpBonus + ARCHER_EXP_GIVEN
    OrderBarracksBonuses[l_6_3].CasterHPBonus = OrderBarracksBonuses[l_6_3].CasterHPBonus + CASTER_HEALTH_UPGRADE
    OrderBarracksBonuses[l_6_3].CasterDamageBonus = OrderBarracksBonuses[l_6_3].CasterDamageBonus + CASTER_DAMAGE_UPGRADE
    OrderBarracksBonuses[l_6_3].CasterGoldBonus = OrderBarracksBonuses[l_6_3].CasterGoldBonus + CASTER_GOLD_UPGRADE
    OrderBarracksBonuses[l_6_3].CasterMinionArmor = OrderBarracksBonuses[l_6_3].CasterMinionArmor + CASTER_ARMOR_UPGRADE
    OrderBarracksBonuses[l_6_3].CasterMinionMagicResistance = OrderBarracksBonuses[l_6_3].CasterMinionMagicResistance + CASTER_MR_UPGRADE
    if MAXIMUM_CASTER_GOLD_BONUS < OrderBarracksBonuses[l_6_3].CasterGoldBonus then
      OrderBarracksBonuses[l_6_3].CasterGoldBonus = MAXIMUM_CASTER_GOLD_BONUS
    end
    OrderBarracksBonuses[l_6_3].CasterExpBonus = OrderBarracksBonuses[l_6_3].CasterExpBonus + CASTER_EXP_UPGRADE
    OrderBarracksBonuses[l_6_3].CasterGoldGiven = OrderBarracksBonuses[l_6_3].CasterGoldBonus + CASTER_GOLD_GIVEN
    OrderBarracksBonuses[l_6_3].CasterExpGiven = OrderBarracksBonuses[l_6_3].CasterExpBonus + CASTER_EXP_GIVEN
    OrderBarracksBonuses[l_6_3].SuperHPBonus = OrderBarracksBonuses[l_6_3].SuperHPBonus + SUPER_HEALTH_UPGRADE
    OrderBarracksBonuses[l_6_3].SuperDamageBonus = OrderBarracksBonuses[l_6_3].SuperDamageBonus + SUPER_DAMAGE_UPGRADE
    OrderBarracksBonuses[l_6_3].SuperGoldBonus = OrderBarracksBonuses[l_6_3].SuperGoldBonus + SUPER_GOLD_UPGRADE
    OrderBarracksBonuses[l_6_3].SuperMinionArmor = OrderBarracksBonuses[l_6_3].SuperMinionArmor + SUPER_ARMOR_UPGRADE
    OrderBarracksBonuses[l_6_3].SuperMinionMagicResistance = OrderBarracksBonuses[l_6_3].SuperMinionMagicResistance + SUPER_MR_UPGRADE
    if MAXIMUM_SUPER_GOLD_BONUS < OrderBarracksBonuses[l_6_3].SuperGoldBonus then
      OrderBarracksBonuses[l_6_3].SuperGoldBonus = MAXIMUM_SUPER_GOLD_BONUS
    end
    OrderBarracksBonuses[l_6_3].SuperExpBonus = OrderBarracksBonuses[l_6_3].SuperExpBonus + SUPER_EXP_UPGRADE
    OrderBarracksBonuses[l_6_3].SuperGoldGiven = OrderBarracksBonuses[l_6_3].SuperGoldBonus + SUPER_GOLD_GIVEN
    OrderBarracksBonuses[l_6_3].SuperExpGiven = OrderBarracksBonuses[l_6_3].SuperExpBonus + SUPER_EXP_GIVEN
    ChaosBarracksBonuses[l_6_3].MeleeHPBonus = ChaosBarracksBonuses[l_6_3].MeleeHPBonus + MELEE_HEALTH_UPGRADE
    ChaosBarracksBonuses[l_6_3].MeleeDamageBonus = ChaosBarracksBonuses[l_6_3].MeleeDamageBonus + MELEE_DAMAGE_UPGRADE
    ChaosBarracksBonuses[l_6_3].MeleeGoldBonus = ChaosBarracksBonuses[l_6_3].MeleeGoldBonus + MELEE_GOLD_UPGRADE
    ChaosBarracksBonuses[l_6_3].MeleeMinionArmor = ChaosBarracksBonuses[l_6_3].MeleeMinionArmor + MELEE_ARMOR_UPGRADE
    ChaosBarracksBonuses[l_6_3].MeleeMinionMagicResistance = ChaosBarracksBonuses[l_6_3].MeleeMinionMagicResistance + MELEE_MR_UPGRADE
    if MAXIMUM_MELEE_GOLD_BONUS < ChaosBarracksBonuses[l_6_3].MeleeGoldBonus then
      ChaosBarracksBonuses[l_6_3].MeleeGoldBonus = MAXIMUM_MELEE_GOLD_BONUS
    end
    ChaosBarracksBonuses[l_6_3].MeleeExpBonus = ChaosBarracksBonuses[l_6_3].MeleeExpBonus + MELEE_EXP_UPGRADE
    ChaosBarracksBonuses[l_6_3].MeleeGoldGiven = ChaosBarracksBonuses[l_6_3].MeleeGoldBonus + MELEE_GOLD_GIVEN
    ChaosBarracksBonuses[l_6_3].MeleeExpGiven = ChaosBarracksBonuses[l_6_3].MeleeExpBonus + MELEE_EXP_GIVEN
    ChaosBarracksBonuses[l_6_3].ArcherHPBonus = ChaosBarracksBonuses[l_6_3].ArcherHPBonus + ARCHER_HEALTH_UPGRADE
    ChaosBarracksBonuses[l_6_3].ArcherDamageBonus = ChaosBarracksBonuses[l_6_3].ArcherDamageBonus + ARCHER_DAMAGE_UPGRADE
    ChaosBarracksBonuses[l_6_3].ArcherGoldBonus = ChaosBarracksBonuses[l_6_3].ArcherGoldBonus + ARCHER_GOLD_UPGRADE
    ChaosBarracksBonuses[l_6_3].ArcherMinionArmor = ChaosBarracksBonuses[l_6_3].ArcherMinionArmor + ARCHER_ARMOR_UPGRADE
    ChaosBarracksBonuses[l_6_3].ArcherMinionMagicResistance = ChaosBarracksBonuses[l_6_3].ArcherMinionMagicResistance + ARCHER_MR_UPGRADE
    if MAXIMUM_ARCHER_GOLD_BONUS < ChaosBarracksBonuses[l_6_3].ArcherGoldBonus then
      ChaosBarracksBonuses[l_6_3].ArcherGoldBonus = MAXIMUM_ARCHER_GOLD_BONUS
    end
    ChaosBarracksBonuses[l_6_3].ArcherExpBonus = ChaosBarracksBonuses[l_6_3].ArcherExpBonus + ARCHER_EXP_UPGRADE
    ChaosBarracksBonuses[l_6_3].ArcherGoldGiven = ChaosBarracksBonuses[l_6_3].ArcherGoldBonus + ARCHER_GOLD_GIVEN
    ChaosBarracksBonuses[l_6_3].ArcherExpGiven = ChaosBarracksBonuses[l_6_3].ArcherExpBonus + ARCHER_EXP_GIVEN
    ChaosBarracksBonuses[l_6_3].CasterHPBonus = ChaosBarracksBonuses[l_6_3].CasterHPBonus + CASTER_HEALTH_UPGRADE
    ChaosBarracksBonuses[l_6_3].CasterDamageBonus = ChaosBarracksBonuses[l_6_3].CasterDamageBonus + CASTER_DAMAGE_UPGRADE
    ChaosBarracksBonuses[l_6_3].CasterGoldBonus = ChaosBarracksBonuses[l_6_3].CasterGoldBonus + CASTER_GOLD_UPGRADE
    ChaosBarracksBonuses[l_6_3].CasterMinionArmor = ChaosBarracksBonuses[l_6_3].CasterMinionArmor + CASTER_ARMOR_UPGRADE
    ChaosBarracksBonuses[l_6_3].CasterMinionMagicResistance = ChaosBarracksBonuses[l_6_3].CasterMinionMagicResistance + CASTER_MR_UPGRADE
    if MAXIMUM_CASTER_GOLD_BONUS < ChaosBarracksBonuses[l_6_3].CasterGoldBonus then
      ChaosBarracksBonuses[l_6_3].CasterGoldBonus = MAXIMUM_CASTER_GOLD_BONUS
    end
    ChaosBarracksBonuses[l_6_3].CasterExpBonus = ChaosBarracksBonuses[l_6_3].CasterExpBonus + CASTER_EXP_UPGRADE
    ChaosBarracksBonuses[l_6_3].CasterGoldGiven = ChaosBarracksBonuses[l_6_3].CasterGoldBonus + CASTER_GOLD_GIVEN
    ChaosBarracksBonuses[l_6_3].CasterExpGiven = ChaosBarracksBonuses[l_6_3].CasterExpBonus + CASTER_EXP_GIVEN
    ChaosBarracksBonuses[l_6_3].SuperHPBonus = ChaosBarracksBonuses[l_6_3].SuperHPBonus + SUPER_HEALTH_UPGRADE
    ChaosBarracksBonuses[l_6_3].SuperDamageBonus = ChaosBarracksBonuses[l_6_3].SuperDamageBonus + SUPER_DAMAGE_UPGRADE
    ChaosBarracksBonuses[l_6_3].SuperGoldBonus = ChaosBarracksBonuses[l_6_3].SuperGoldBonus + SUPER_GOLD_UPGRADE
    ChaosBarracksBonuses[l_6_3].SuperMinionArmor = ChaosBarracksBonuses[l_6_3].SuperMinionArmor + SUPER_ARMOR_UPGRADE
    ChaosBarracksBonuses[l_6_3].SuperMinionMagicResistance = ChaosBarracksBonuses[l_6_3].SuperMinionMagicResistance + SUPER_MR_UPGRADE
    if MAXIMUM_SUPER_GOLD_BONUS < ChaosBarracksBonuses[l_6_3].SuperGoldBonus then
      ChaosBarracksBonuses[l_6_3].SuperGoldBonus = MAXIMUM_SUPER_GOLD_BONUS
    end
    ChaosBarracksBonuses[l_6_3].SuperExpBonus = ChaosBarracksBonuses[l_6_3].SuperExpBonus + SUPER_EXP_UPGRADE
    ChaosBarracksBonuses[l_6_3].SuperGoldGiven = ChaosBarracksBonuses[l_6_3].SuperGoldBonus + SUPER_GOLD_GIVEN
    ChaosBarracksBonuses[l_6_3].SuperExpGiven = ChaosBarracksBonuses[l_6_3].SuperExpBonus + SUPER_EXP_GIVEN
  end
end

UpgradeMinionTimer = l_0_0
l_0_0 = function()
  for l_7_3 = RIGHT_LANE, LEFT_LANE do
    for l_7_7 = BACK_TOWER, HQ_TOWER1 do
      orderTurret = GetTurret(TEAM_ORDER, l_7_3, l_7_7)
      if orderTurret ~= nil then
        if l_7_7 == FRONT_TOWER then
          SetInvulnerable(orderTurret, false)
          SetTargetable(orderTurret, true)
        end
      else
        SetInvulnerable(orderTurret, true)
        SetNotTargetableToTeam(orderTurret, true, TEAM_CHAOS)
      end
      chaosTurret = GetTurret(TEAM_CHAOS, l_7_3, l_7_7)
      if chaosTurret ~= nil then
        if l_7_7 == FRONT_TOWER then
          SetInvulnerable(chaosTurret, false)
          SetTargetable(chaosTurret, true)
        end
      else
        SetInvulnerable(chaosTurret, true)
        SetNotTargetableToTeam(chaosTurret, true, TEAM_ORDER)
      end
    end
  end
end

AllowDamageOnBuildings = l_0_0
l_0_0 = function(l_8_0, l_8_1, l_8_2, l_8_3, l_8_4)
  TableForBarrack = SpawnTable
  if TableForBarrack.DidPowerGroup then
    TableForBarrack.NumOfCasterMinionsPerWave = TableForBarrack.NumOfCasterMinionsPerWave - 1
    TableForBarrack.DidPowerGroup = false
  end
  if l_8_1 % CASTER_MINION_SPAWN_FREQUENCY == 0 then
    TableForBarrack.NumOfCasterMinionsPerWave = TableForBarrack.NumOfCasterMinionsPerWave + 1
    TableForBarrack.DidPowerGroup = true
  end
  local l_8_5 = 0
  if l_8_3 == TEAM_ORDER then
    l_8_5 = OrderBarracksBonuses[l_8_0 + 1]
  else
    l_8_5 = ChaosBarracksBonuses[l_8_0 + 1]
  end
  TableForBarrack.ExpRadius = EXP_GIVEN_RADIUS
  lNumOfMeleeMinionsPerWave = TableForBarrack.NumOfMeleeMinionsPerWave
  lNumOfArcherMinionsPerWave = TableForBarrack.NumOfArcherMinionsPerWave
  lNumOfCasterMinionsPerWave = TableForBarrack.NumOfCasterMinionsPerWave
  lNumOfSuperMinionsPerWave = TableForBarrack.NumOfSuperMinionsPerWave
  if l_8_4 ~= LAST_WAVE then
    BARRACKSCOUNT = 6
    totalMinionsRemaining = MAX_MINIONS_EVER - GetTotalTeamMinionsSpawned()
    if totalMinionsRemaining <= BARRACKSCOUNT * 7 then
      if totalMinionsRemaining <= 0 then
        SPECIAL_MINION_MODE = "None"
      else
        if BARRACKSCOUNT * 3 <= totalMinionsRemaining then
          SPECIAL_MINION_MODE = "3Archers"
        end
      else
        if BARRACKSCOUNT <= totalMinionsRemaining then
          SPECIAL_MINION_MODE = "SpecialPowerMinion"
        end
      else
        SPECIAL_MINION_MODE = "None"
      end
    else
      SPECIAL_MINION_MODE = ""
      LAST_WAVE = l_8_4
    end
    if SPECIAL_MINION_MODE == "3Archers" then
      lNumOfMeleeMinionsPerWave = 0
      lNumOfArcherMinionsPerWave = 3
      lNumOfCasterMinionsPerWave = 0
      lNumOfSuperMinionsPerWave = 0
    elseif SPECIAL_MINION_MODE == "SpecialPowerMinion" then
      lNumOfMeleeMinionsPerWave = 0
      lNumOfArcherMinionsPerWave = 0
      lNumOfCasterMinionsPerWave = 0
      lNumOfSuperMinionsPerWave = 2
    elseif SPECIAL_MINION_MODE == "None" then
      lNumOfMeleeMinionsPerWave = 0
      lNumOfArcherMinionsPerWave = 0
      lNumOfCasterMinionsPerWave = 0
      lNumOfSuperMinionsPerWave = 0
    end
    if l_8_5.WillSpawnSuperMinion == 1 then
      if (l_8_3 == TEAM_ORDER and totalNumberOfChaosBarracks == 0) or l_8_3 == TEAM_CHAOS and totalNumberOfOrderBarracks == 0 then
        lNumOfSuperMinionsPerWave = 2
      else
        lNumOfSuperMinionsPerWave = 1
      end
      lNumOfCasterMinionsPerWave = 0
    end
    if l_8_3 == TEAM_ORDER then
      l_8_5.MeleeMinionName = OrderNames.MeleeMinionName
      l_8_5.ArcherMinionName = OrderNames.ArcherMinionName
      l_8_5.CasterMinionName = OrderNames.CasterMinionName
      l_8_5.SuperMinionName = OrderNames.SuperMinionName
    else
      l_8_5.MeleeMinionName = ChaosNames.MeleeMinionName
      l_8_5.ArcherMinionName = ChaosNames.ArcherMinionName
      l_8_5.CasterMinionName = ChaosNames.CasterMinionName
      l_8_5.SuperMinionName = ChaosNames.SuperMinionName
    end
    do
      local l_8_6 = {}
      l_8_6.NumOfMeleeMinionsPerWave = lNumOfMeleeMinionsPerWave
      l_8_6.NumOfArcherMinionsPerWave = lNumOfArcherMinionsPerWave
      l_8_6.NumOfCasterMinionsPerWave = lNumOfCasterMinionsPerWave
      l_8_6.NumOfSuperMinionsPerWave = lNumOfSuperMinionsPerWave
      l_8_6.WaveSpawnRate = TableForBarrack.WaveSpawnRate
      l_8_6.SingleMinionSpawnDelay = TableForBarrack.SingleMinionSpawnDelay
      l_8_6.MeleeMinionName = l_8_5.MeleeMinionName
      l_8_6.ArcherMinionName = l_8_5.ArcherMinionName
      l_8_6.CasterMinionName = l_8_5.CasterMinionName
      l_8_6.SuperMinionName = l_8_5.SuperMinionName
      l_8_6.IsDestroyed = l_8_5.IsDestroyed
      l_8_6.MeleeMinionArmor = l_8_5.MeleeMinionArmor
      l_8_6.MeleeMinionMagicResistance = l_8_5.MeleeMinionMagicResistance
      l_8_6.MeleeHPBonus = l_8_5.MeleeHPBonus
      l_8_6.MeleeDamageBonus = l_8_5.MeleeDamageBonus
      l_8_6.MeleeExpGiven = l_8_5.MeleeExpGiven
      l_8_6.MeleeGoldGiven = l_8_5.MeleeGoldGiven
      l_8_6.ArcherMinionArmor = l_8_5.ArcherMinionArmor
      l_8_6.ArcherMinionMagicResistance = l_8_5.ArcherMinionMagicResistance
      l_8_6.ArcherHPBonus = l_8_5.ArcherHPBonus
      l_8_6.ArcherDamageBonus = l_8_5.ArcherDamageBonus
      l_8_6.ArcherExpGiven = l_8_5.ArcherExpGiven
      l_8_6.ArcherGoldGiven = l_8_5.ArcherGoldGiven
      l_8_6.CasterMinionArmor = l_8_5.CasterMinionArmor
      l_8_6.CasterMinionMagicResistance = l_8_5.CasterMinionMagicResistance
      l_8_6.CasterHPBonus = l_8_5.CasterHPBonus
      l_8_6.CasterDamageBonus = l_8_5.CasterDamageBonus
      l_8_6.CasterExpGiven = l_8_5.CasterExpGiven
      l_8_6.CasterGoldGiven = l_8_5.CasterGoldGiven
      l_8_6.SuperMinionArmor = l_8_5.SuperMinionArmor
      l_8_6.SuperMinionMagicResistance = l_8_5.SuperMinionMagicResistance
      l_8_6.SuperHPBonus = l_8_5.SuperHPBonus
      l_8_6.SuperDamageBonus = l_8_5.SuperDamageBonus
      l_8_6.SuperExpGiven = l_8_5.SuperExpGiven
      l_8_6.SuperGoldGiven = l_8_5.SuperGoldGiven
      l_8_6.ExperienceRadius = TableForBarrack.ExpRadius
      ReturnTable = l_8_6
      l_8_6 = ReturnTable
      return l_8_6
    end
     -- WARNING: missing end command somewhere! Added here
  end
end

GetMinionSpawnInfo = l_0_0
l_0_0 = function(l_9_0, l_9_1, l_9_2)
  local l_9_3 = nil
  if l_9_0 == TEAM_ORDER then
    l_9_3 = OrderBuildingStatus
  else
    l_9_3 = ChaosBuildingStatus
  end
  if l_9_2 == FRONT_TOWER then
    l_9_3[l_9_1 + 1].Turret3 = false
    SetInvulnerable(GetTurret(l_9_0, l_9_1, MIDDLE_TOWER), false)
    SetTargetable(GetTurret(l_9_0, l_9_1, MIDDLE_TOWER), true)
  elseif l_9_2 == MIDDLE_TOWER then
    l_9_3[l_9_1 + 1].Turret2 = false
    SetInvulnerable(GetTurret(l_9_0, l_9_1, BACK_TOWER), false)
    SetTargetable(GetTurret(l_9_0, l_9_1, BACK_TOWER), true)
  elseif l_9_2 == BACK_TOWER then
    l_9_3[l_9_1 + 1].Turret1 = false
    SetInvulnerable(GetDampener(l_9_0, l_9_1), false)
    SetTargetable(GetDampener(l_9_0, l_9_1), true)
  elseif l_9_2 == HQ_TOWER2 then
    l_9_3.HQTower2 = false
    if l_9_3.HQTower1 == false then
      SetInvulnerable(GetHQ(l_9_0), false)
      SetTargetable(GetHQ(l_9_0), true)
    end
  elseif l_9_2 == HQ_TOWER1 then
    l_9_3.HQTower1 = false
  end
  if l_9_3.HQTower2 == false then
    SetInvulnerable(GetHQ(l_9_0), false)
    SetTargetable(GetHQ(l_9_0), true)
  end
end

DeactivateCorrectStructure = l_0_0
l_0_0 = function(l_10_0, l_10_1)
  local l_10_2 = nil
  if l_10_0 == TEAM_ORDER then
    l_10_2 = OrderBarracksBonuses[l_10_1 + 1]
  else
    l_10_2 = ChaosBarracksBonuses[l_10_1 + 1]
  end
  return l_10_2
end

GetLuaBarracks = l_0_0
l_0_0 = function(l_11_0, l_11_1)
  barrack = GetLuaBarracks(l_11_1, l_11_0)
  return DISABLE_MINION_SPAWN_BASE_TIME + DISABLE_MINION_SPAWN_MAG_TIME * barrack.NumOfSpawnDisables
end

GetDisableMinionSpawnTime = l_0_0
l_0_0 = function(l_12_0, l_12_1)
  cLangBarracks = GetBarracks(l_12_1, l_12_0)
  luaBarrack = GetLuaBarracks(l_12_1, l_12_0)
  SetDisableMinionSpawn(cLangBarracks, GetDisableMinionSpawnTime(l_12_0, l_12_1))
  luaBarrack.NumOfSpawnDisables = luaBarrack.NumOfSpawnDisables + 1
end

DisableBarracksSpawn = l_0_0
l_0_0 = 0
BonusesCounter = l_0_0
l_0_0 = function(l_13_0, l_13_1)
  BonusesCounter = BonusesCounter + 1
  for l_13_5 = 1, 3 do
    if l_13_0 == TEAM_ORDER then
      OrderBarracksBonuses[l_13_5].MeleeHPBonus = OrderBarracksBonuses[l_13_5].MeleeHPBonus + MELEE_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_13_5].MeleeDamageBonus = OrderBarracksBonuses[l_13_5].MeleeDamageBonus + MELEE_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_13_5].ArcherHPBonus = OrderBarracksBonuses[l_13_5].ArcherHPBonus + ARCHER_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_13_5].ArcherDamageBonus = OrderBarracksBonuses[l_13_5].ArcherDamageBonus + ARCHER_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_13_5].CasterHPBonus = OrderBarracksBonuses[l_13_5].CasterHPBonus + CASTER_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_13_5].CasterDamageBonus = OrderBarracksBonuses[l_13_5].CasterDamageBonus + CASTER_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_13_5].SuperHPBonus = OrderBarracksBonuses[l_13_5].SuperHPBonus + SUPER_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_13_5].SuperDamageBonus = OrderBarracksBonuses[l_13_5].SuperDamageBonus + SUPER_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_13_5].MeleeExpGiven = OrderBarracksBonuses[l_13_5].MeleeExpGiven - MELEE_EXP_INHIBITOR
      OrderBarracksBonuses[l_13_5].MeleeGoldGiven = OrderBarracksBonuses[l_13_5].MeleeGoldGiven - MELEE_GOLD_INHIBITOR
      OrderBarracksBonuses[l_13_5].ArcherExpGiven = OrderBarracksBonuses[l_13_5].ArcherExpGiven - ARCHER_EXP_INHIBITOR
      OrderBarracksBonuses[l_13_5].ArcherGoldGiven = OrderBarracksBonuses[l_13_5].MeleeGoldGiven - ARCHER_GOLD_INHIBITOR
      OrderBarracksBonuses[l_13_5].CasterExpGiven = OrderBarracksBonuses[l_13_5].CasterExpGiven - CASTER_EXP_INHIBITOR
      OrderBarracksBonuses[l_13_5].CasterGoldGiven = OrderBarracksBonuses[l_13_5].MeleeGoldGiven - CASTER_EXP_INHIBITOR
      OrderBarracksBonuses[l_13_5].SuperExpGiven = OrderBarracksBonuses[l_13_5].SuperExpGiven - SUPER_EXP_INHIBITOR
      OrderBarracksBonuses[l_13_5].SuperGoldGiven = OrderBarracksBonuses[l_13_5].MeleeGoldGiven - SUPER_EXP_INHIBITOR
      if l_13_5 == l_13_1 + 1 then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks - 1
        OrderBarracksBonuses[l_13_5].WillSpawnSuperMinion = 1
      end
    elseif l_13_0 == TEAM_CHAOS then
      ChaosBarracksBonuses[l_13_5].MeleeHPBonus = ChaosBarracksBonuses[l_13_5].MeleeHPBonus + MELEE_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_13_5].MeleeDamageBonus = ChaosBarracksBonuses[l_13_5].MeleeDamageBonus + MELEE_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_13_5].ArcherHPBonus = ChaosBarracksBonuses[l_13_5].ArcherHPBonus + ARCHER_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_13_5].ArcherDamageBonus = ChaosBarracksBonuses[l_13_5].ArcherDamageBonus + ARCHER_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_13_5].CasterHPBonus = ChaosBarracksBonuses[l_13_5].CasterHPBonus + CASTER_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_13_5].CasterDamageBonus = ChaosBarracksBonuses[l_13_5].CasterDamageBonus + CASTER_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_13_5].SuperHPBonus = ChaosBarracksBonuses[l_13_5].SuperHPBonus + SUPER_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_13_5].SuperDamageBonus = ChaosBarracksBonuses[l_13_5].SuperDamageBonus + SUPER_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_13_5].MeleeExpGiven = ChaosBarracksBonuses[l_13_5].MeleeExpGiven - MELEE_EXP_INHIBITOR
      ChaosBarracksBonuses[l_13_5].MeleeGoldGiven = ChaosBarracksBonuses[l_13_5].MeleeGoldGiven - MELEE_GOLD_INHIBITOR
      ChaosBarracksBonuses[l_13_5].ArcherExpGiven = ChaosBarracksBonuses[l_13_5].ArcherExpGiven - ARCHER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_13_5].ArcherGoldGiven = ChaosBarracksBonuses[l_13_5].MeleeGoldGiven - ARCHER_GOLD_INHIBITOR
      ChaosBarracksBonuses[l_13_5].CasterExpGiven = ChaosBarracksBonuses[l_13_5].CasterExpGiven - CASTER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_13_5].CasterGoldGiven = ChaosBarracksBonuses[l_13_5].MeleeGoldGiven - CASTER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_13_5].SuperExpGiven = ChaosBarracksBonuses[l_13_5].SuperExpGiven - SUPER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_13_5].SuperGoldGiven = ChaosBarracksBonuses[l_13_5].MeleeGoldGiven - SUPER_EXP_INHIBITOR
    end
    if l_13_5 == l_13_1 + 1 then
      totalNumberOfOrderBarracks = totalNumberOfOrderBarracks - 1
      ChaosBarracksBonuses[l_13_5].WillSpawnSuperMinion = 1
    end
  end
end

ApplyBarracksDestructionBonuses = l_0_0
l_0_0 = 0
ReductionCounter = l_0_0
l_0_0 = function(l_14_0, l_14_1)
  ReductionCounter = ReductionCounter + 1
  for l_14_5 = 1, 3 do
    if l_14_0 == TEAM_ORDER then
      OrderBarracksBonuses[l_14_5].MeleeHPBonus = OrderBarracksBonuses[l_14_5].MeleeHPBonus - MELEE_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_14_5].MeleeDamageBonus = OrderBarracksBonuses[l_14_5].MeleeDamageBonus - MELEE_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_14_5].ArcherHPBonus = OrderBarracksBonuses[l_14_5].ArcherHPBonus - ARCHER_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_14_5].ArcherDamageBonus = OrderBarracksBonuses[l_14_5].ArcherDamageBonus - ARCHER_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_14_5].CasterHPBonus = OrderBarracksBonuses[l_14_5].CasterHPBonus - CASTER_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_14_5].CasterDamageBonus = OrderBarracksBonuses[l_14_5].CasterDamageBonus - CASTER_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_14_5].SuperHPBonus = OrderBarracksBonuses[l_14_5].SuperHPBonus - SUPER_HEALTH_INHIBITOR
      OrderBarracksBonuses[l_14_5].SuperDamageBonus = OrderBarracksBonuses[l_14_5].SuperDamageBonus - SUPER_DAMAGE_INHIBITOR
      OrderBarracksBonuses[l_14_5].MeleeExpGiven = OrderBarracksBonuses[l_14_5].MeleeExpGiven + MELEE_EXP_INHIBITOR
      OrderBarracksBonuses[l_14_5].MeleeGoldGiven = OrderBarracksBonuses[l_14_5].MeleeGoldGiven + MELEE_GOLD_INHIBITOR
      OrderBarracksBonuses[l_14_5].ArcherExpGiven = OrderBarracksBonuses[l_14_5].ArcherExpGiven + ARCHER_EXP_INHIBITOR
      OrderBarracksBonuses[l_14_5].ArcherGoldGiven = OrderBarracksBonuses[l_14_5].MeleeGoldGiven + ARCHER_GOLD_INHIBITOR
      OrderBarracksBonuses[l_14_5].CasterExpGiven = OrderBarracksBonuses[l_14_5].CasterExpGiven + CASTER_EXP_INHIBITOR
      OrderBarracksBonuses[l_14_5].CasterGoldGiven = OrderBarracksBonuses[l_14_5].MeleeGoldGiven + CASTER_EXP_INHIBITOR
      OrderBarracksBonuses[l_14_5].SuperExpGiven = OrderBarracksBonuses[l_14_5].SuperExpGiven + SUPER_EXP_INHIBITOR
      OrderBarracksBonuses[l_14_5].SuperGoldGiven = OrderBarracksBonuses[l_14_5].MeleeGoldGiven + SUPER_EXP_INHIBITOR
      if l_14_5 == l_14_1 + 1 then
        totalNumberOfChaosBarracks = totalNumberOfChaosBarracks + 1
        OrderBarracksBonuses[l_14_5].WillSpawnSuperMinion = 0
      end
      if totalNumberOfChaosBarracks == 3 then
        HQ = GetHQ(TEAM_CHAOS)
        SetInvulnerable(HQ, true)
        SetTargetable(HQ, false)
        for l_14_9 = RIGHT_LANE, LEFT_LANE do
          local l_14_10 = GetTurret(TEAM_CHAOS, l_14_9, HQ_TOWER1)
          local l_14_11 = GetTurret(TEAM_CHAOS, l_14_9, HQ_TOWER2)
          if l_14_10 ~= Nil then
            SetInvulnerable(l_14_10, true)
            SetTargetable(l_14_10, false)
          end
          if l_14_11 ~= Nil then
            SetInvulnerable(l_14_11, true)
            SetTargetable(l_14_11, false)
          end
        end
      end
    elseif l_14_0 == TEAM_CHAOS then
      ChaosBarracksBonuses[l_14_5].MeleeHPBonus = ChaosBarracksBonuses[l_14_5].MeleeHPBonus - MELEE_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_14_5].MeleeDamageBonus = ChaosBarracksBonuses[l_14_5].MeleeDamageBonus - MELEE_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_14_5].ArcherHPBonus = ChaosBarracksBonuses[l_14_5].ArcherHPBonus - ARCHER_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_14_5].ArcherDamageBonus = ChaosBarracksBonuses[l_14_5].ArcherDamageBonus - ARCHER_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_14_5].CasterHPBonus = ChaosBarracksBonuses[l_14_5].CasterHPBonus - CASTER_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_14_5].CasterDamageBonus = ChaosBarracksBonuses[l_14_5].CasterDamageBonus - CASTER_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_14_5].SuperHPBonus = ChaosBarracksBonuses[l_14_5].SuperHPBonus - SUPER_HEALTH_INHIBITOR
      ChaosBarracksBonuses[l_14_5].SuperDamageBonus = ChaosBarracksBonuses[l_14_5].SuperDamageBonus - SUPER_DAMAGE_INHIBITOR
      ChaosBarracksBonuses[l_14_5].MeleeExpGiven = ChaosBarracksBonuses[l_14_5].MeleeExpGiven + MELEE_EXP_INHIBITOR
      ChaosBarracksBonuses[l_14_5].MeleeGoldGiven = ChaosBarracksBonuses[l_14_5].MeleeGoldGiven + MELEE_GOLD_INHIBITOR
      ChaosBarracksBonuses[l_14_5].ArcherExpGiven = ChaosBarracksBonuses[l_14_5].ArcherExpGiven + ARCHER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_14_5].ArcherGoldGiven = ChaosBarracksBonuses[l_14_5].MeleeGoldGiven + ARCHER_GOLD_INHIBITOR
      ChaosBarracksBonuses[l_14_5].CasterExpGiven = ChaosBarracksBonuses[l_14_5].CasterExpGiven + CASTER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_14_5].CasterGoldGiven = ChaosBarracksBonuses[l_14_5].MeleeGoldGiven + CASTER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_14_5].SuperExpGiven = ChaosBarracksBonuses[l_14_5].SuperExpGiven + SUPER_EXP_INHIBITOR
      ChaosBarracksBonuses[l_14_5].SuperGoldGiven = ChaosBarracksBonuses[l_14_5].MeleeGoldGiven + SUPER_EXP_INHIBITOR
      if l_14_5 == l_14_1 + 1 then
        totalNumberOfOrderBarracks = totalNumberOfOrderBarracks + 1
        ChaosBarracksBonuses[l_14_5].WillSpawnSuperMinion = 0
      end
    end
    if totalNumberOfOrderBarracks == 3 then
      local l_14_12 = GetHQ(TEAM_ORDER)
      SetInvulnerable(l_14_12, true)
      SetTargetable(l_14_12, false)
      for l_14_16 = RIGHT_LANE, LEFT_LANE do
        local l_14_17 = GetTurret(TEAM_ORDER, l_14_16, HQ_TOWER1)
        local l_14_18 = GetTurret(TEAM_ORDER, l_14_16, HQ_TOWER2)
        if l_14_17 ~= Nil then
          SetInvulnerable(l_14_17, true)
          SetTargetable(l_14_17, false)
        end
        if l_14_18 ~= Nil then
          SetInvulnerable(l_14_18, true)
          SetTargetable(l_14_18, false)
        end
      end
    end
  end
end

ApplyBarracksRespawnReductions = l_0_0
l_0_0 = 0
ReactiveCounter = l_0_0
l_0_0 = function(l_15_0, l_15_1)
  local l_15_2 = nil
  ReactiveCounter = ReactiveCounter + 1
  l_15_2 = OppositeTeam(l_15_0)
  dampener = GetDampener(l_15_0, l_15_1)
  SetInvulnerable(dampener, false)
  SetTargetable(dampener, true)
  ApplyBarracksRespawnReductions(l_15_2, l_15_1)
end

BarrackReactiveEvent = l_0_0
l_0_0 = 0
DisactivatedCounter = l_0_0
l_0_0 = function(l_16_0)
  HQType = GetHQType(l_16_0)
  if HQType == ORDER_HQ or HQType == CHAOS_HQ then
    if HQType == CHAOS_HQ then
      EndOfGameCeremony(TEAM_ORDER, l_16_0)
    else
      EndOfGameCeremony(TEAM_CHAOS, l_16_0)
      return 
    end
    if IsDampener(l_16_0) then
      barrack = GetLinkedBarrack(l_16_0)
      barrackTeam = GetTeamID(barrack)
      barrackLane = GetLane(l_16_0)
      DisableBarracksSpawn(barrackLane, barrackTeam)
      SetDampenerState(l_16_0, DampenerRegenerationState)
      SetInvulnerable(l_16_0, true)
      SetTargetable(l_16_0, false)
      DisactivatedCounter = DisactivatedCounter + 1
      local l_16_1 = GetTurret(barrackTeam, 1, HQ_TOWER1)
      local l_16_2 = GetTurret(barrackTeam, 1, HQ_TOWER2)
      if l_16_1 ~= Nil then
        SetInvulnerable(l_16_1, false)
        SetTargetable(l_16_1, true)
      end
      if l_16_2 ~= Nil then
        SetInvulnerable(l_16_2, false)
        SetTargetable(l_16_2, true)
      end
      if l_16_1 == Nil and l_16_2 == Nil then
        local l_16_3 = GetHQ(barrackTeam)
        SetInvulnerable(l_16_3, false)
        SetTargetable(l_16_3, true)
      end
      local l_16_4 = nil
      if barrackTeam == TEAM_CHAOS then
        l_16_4 = TEAM_ORDER
      else
        l_16_4 = TEAM_CHAOS
      end
      ApplyBarracksDestructionBonuses(l_16_4, barrackLane)
    end
    if IsTurretAI(l_16_0) then
      local l_16_5 = GetTeamID(l_16_0)
      local l_16_6 = GetObjectLaneId(l_16_0)
      local l_16_7 = GetTurretPosition(l_16_0)
      DeactivateCorrectStructure(l_16_5, l_16_6, l_16_7)
      return 
    end
    do
      local l_16_8 = GetDampenerType(l_16_0)
      if l_16_8 > -1 then
        local l_16_9 = 0
        local l_16_10 = TEAM_ORDER
        local l_16_11 = TEAM_CHAOS
        local l_16_12 = l_16_8 % TEAM_CHAOS
        if RIGHT_LANE <= l_16_12 and l_16_12 <= LEFT_LANE then
          l_16_9 = ChaosBarracksBonuses[l_16_12 + 1]
          ChaosBuildingStatus[l_16_12 + 1].Barracks = false
        else
          l_16_12 = l_16_12 - TEAM_ORDER
          l_16_10 = TEAM_CHAOS
          l_16_11 = TEAM_ORDER
          l_16_9 = OrderBarracksBonuses[l_16_12 + 1]
          OrderBuildingStatus[l_16_12 + 1].Barracks = false
        end
      else
        Log("Could not find Linking barracks!")
      end
      return true
    end
     -- WARNING: missing end command somewhere! Added here
  end
end

HandleDestroyedObject = l_0_0
l_0_0 = function()
  CASTER_MINION_SPAWN_FREQUENCY = 2
end

IncreaseCannonMinionSpawnRate = l_0_0
l_0_0 = function(l_18_0)
  POST_GAME_EVENTS = {}
end

PostGameSetup = l_0_0
l_0_0 = function(l_19_0, l_19_1)
  for l_19_5,l_19_6 in pairs(POST_GAME_EVENTS) do
    if l_19_6.delay < l_19_0 then
      ClientSide_CameraMoveCameraFromCurrentPositionToPoint(l_19_6.cameraLocation, l_19_6.travelTime)
      if l_19_6.soundFile then
        ClientSide_PlaySoundFile(l_19_6.soundFile)
      end
      table.remove(POST_GAME_EVENTS, l_19_5)
  else
    end
  end
end

PostGameUpdate = l_0_0


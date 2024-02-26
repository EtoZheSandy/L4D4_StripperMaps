LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_mannequin_base,
			EntityGroup.SpawnTables.Level_mannequin_torso1,
			EntityGroup.SpawnTables.Level_mannequin_larm1,
			EntityGroup.SpawnTables.Level_mannequin_lleg,
			EntityGroup.SpawnTables.Level_mannequin_rarm1,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_mannequin_rarm1,
			EntityGroup.SpawnTables.Level_mannequin_larm1,
			EntityGroup.SpawnTables.Level_mannequin_base,
			EntityGroup.SpawnTables.Level_mannequin_lleg,
			EntityGroup.SpawnTables.Level_mannequin_torso1,
		]
		return spawnEnts
	}

	//-------------------------------------------------------
	function GetEntityGroup()
	{
		return EntityGroup
	}

	//-------------------------------------------------------
	// Table of entities that make up this group
	//-------------------------------------------------------
	EntityGroup =
	{
		SpawnTables =
		{
			Level_mannequin_base = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_mall/mall_mannequin_female_base.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "257"
					targetname = "Level_mannequin_base"
					origin = Vector( 0, 0, 0 )
					connections =
					{
						OnHealthChanged =
						{
							cmd1 = "Level_mannequin_torso1Wake0-1"
							cmd2 = "Level_mannequin_llegWake0-1"
						}
					}
				}
			}
			Level_mannequin_torso1 = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_mall/mall_mannequin_female_torso3.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "261"
					targetname = "Level_mannequin_torso1"
					origin = Vector( -0.0705825, -0.180933, 47.6216 )
					connections =
					{
						OnAwakened =
						{
							cmd1 = "Level_mannequin_larm1Wake0-1"
							cmd2 = "Level_mannequin_rarm1Wake0-1"
						}
					}
				}
			}
			Level_mannequin_larm1 = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, -89.5 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_mall/mall_mannequin_female_larm1.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "261"
					targetname = "Level_mannequin_larm1"
					origin = Vector( -4.30924, 6.44699, 60.2417 )
				}
			}
			Level_mannequin_lleg = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, -180 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_mall/mall_mannequin_female_lleg.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "261"
					targetname = "Level_mannequin_lleg"
					origin = Vector( -2.03633, 3.7782, 35.0717 )
					connections =
					{
						OnHealthChanged =
						{
							cmd1 = "Level_mannequin_torso1Wake0-1"
						}
					}
				}
			}
			Level_mannequin_rarm1 = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 88.5 )
					body = "0"
					BreakableType = "0"
					damagetoenablemotion = "0"
					Damagetype = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					inertiaScale = "1.0"
					massScale = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props_mall/mall_mannequin_female_rarm2.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "261"
					targetname = "Level_mannequin_rarm1"
					origin = Vector( -4.25342, -6.87984, 61.0594 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )
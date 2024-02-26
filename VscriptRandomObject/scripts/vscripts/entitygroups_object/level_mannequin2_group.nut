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
			EntityGroup.SpawnTables.Level_mannequin_lhand,
			EntityGroup.SpawnTables.Level_mannequin_rarm1,
			EntityGroup.SpawnTables.Level_mannequin_rhand,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_mannequin_rhand,
			EntityGroup.SpawnTables.Level_mannequin_rarm1,
			EntityGroup.SpawnTables.Level_mannequin_lleg,
			EntityGroup.SpawnTables.Level_mannequin_torso1,
			EntityGroup.SpawnTables.Level_mannequin_larm1,
			EntityGroup.SpawnTables.Level_mannequin_base,
			EntityGroup.SpawnTables.Level_mannequin_lhand,
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
					model = "models/props_mall/mall_mannequin_base.mdl"
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
					model = "models/props_mall/mall_mannequin_torso2.mdl"
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
					origin = Vector( -0.0705825, -0.552179, 43.4142 )
					connections =
					{
						OnAwakened =
						{
							cmd1 = "Level_mannequin_larm1Wake0-1"
							cmd2 = "Level_mannequin_lhandWake0-1"
							cmd3 = "Level_mannequin_rarm1Wake0-1"
							cmd4 = "Level_mannequin_rhandWake0-1"
						}
					}
				}
			}
			Level_mannequin_larm1 = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, -97.5 )
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
					model = "models/props_mall/mall_mannequin_larm2.mdl"
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
					origin = Vector( -1.95443, 8.35482, 57.4665 )
					connections =
					{
						OnAwakened =
						{
							cmd1 = "Level_mannequin_lhandWake0-1"
						}
					}
				}
			}
			Level_mannequin_lleg = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 180 )
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
					model = "models/props_mall/mall_mannequin_lleg.mdl"
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
					origin = Vector( 0.318477, 3.23142, 31.9269 )
				}
			}
			Level_mannequin_lhand = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( -9.69932, 278.698, -132.239 )
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
					model = "models/props_mall/mall_mannequin_lhand.mdl"
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
					targetname = "Level_mannequin_lhand"
					origin = Vector( 0.255021, 10.9058, 40.9043 )
				}
			}
			Level_mannequin_rarm1 = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 101.5 )
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
					model = "models/props_mall/mall_mannequin_rarm1.mdl"
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
					origin = Vector( -1.77785, -8.61059, 57.6959 )
					connections =
					{
						OnAwakened =
						{
							cmd1 = "Level_mannequin_rhandWake0-1"
						}
					}
				}
			}
			Level_mannequin_rhand = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( -15.5, 0, -179.5 )
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
					model = "models/props_mall/mall_mannequin_rhand.mdl"
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
					targetname = "Level_mannequin_rhand"
					origin = Vector( -1.77785, -12.2441, 39.0456 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )
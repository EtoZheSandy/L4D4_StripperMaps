LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.unnamed,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.steamsound1,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.steam1,
			EntityGroup.SpawnTables.steam2,
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
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					targetname = "Level_extinguisher"
					angles = Vector( 0, 180, 0 )
					damagetoenablemotion = "0"
					Damagetype = "0"
					disableshadows = "1"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "1250"
					fademindist = "1050"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					inertiaScale = "1.0"
					massScale = "0"
					minhealthdmg = "0"
					model = "models/props/cs_office/Fire_Extinguisher.mdl"
					nodamageforces = "0"
					PerformanceMode = "0"
					physdamagescale = "0.1"
					pressuredelay = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "261"
					origin = Vector( 0, 0, -10.82 )
					connections =
					{
						OnHealthChanged =
						{
							cmd1 = "steam1TurnOn01"
							cmd2 = "steam1TurnOff41"
							cmd3 = "steam2TurnOn01"
							cmd4 = "steam2TurnOff41"
							cmd5 = "steamsound1PlaySound01"
							cmd6 = "steamsound1StopSound41"
							cmd7 = "unnamedWake01"
						}
					}
				}
			}
			steamsound1 = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					parentname = "Level_extinguisher"
					cspinup = "0"
					health = "10"
					lfomodpitch = "0"
					lfomodvol = "0"
					lforate = "0"
					lfotype = "0"
					message = "PhysicsCannister.ThrusterLoop"
					pitch = "100"
					pitchstart = "100"
					preset = "0"
					radius = "256"
					spawnflags = "16"
					spindown = "0"
					spinup = "0"
					targetname = "steamsound1"
					volstart = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			steam1 = 
			{
				SpawnInfo =
				{
					classname = "env_steam"
					parentname = "Level_extinguisher"
					angles = Vector( 0, 150, 0 )
					EndSize = "50"
					InitialState = "0"
					JetLength = "80"
					Rate = "26"
					renderamt = "128"
					rendercolor = "227 232 232"
					rollspeed = "8"
					spawnflags = "1"
					Speed = "120"
					SpreadSpeed = "45"
					StartSize = "3"
					targetname = "steam1"
					type = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			steam2 = 
			{
				SpawnInfo =
				{
					classname = "env_steam"
					parentname = "Level_extinguisher"
					angles = Vector( 0, 210, 0 )
					EndSize = "50"
					InitialState = "0"
					JetLength = "80"
					Rate = "26"
					renderamt = "128"
					rendercolor = "227 232 232"
					rollspeed = "8"
					spawnflags = "1"
					Speed = "120"
					SpreadSpeed = "45"
					StartSize = "3"
					targetname = "steam2"
					type = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )

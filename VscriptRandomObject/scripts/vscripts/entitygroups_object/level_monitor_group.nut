PrecacheModel("models/props_interiors/computer_monitor.mdl");
LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.prop,
			EntityGroup.SpawnTables.physbox,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.prop,
			EntityGroup.SpawnTables.physbox,
			//EntityGroup.SpawnTables.sound,
			EntityGroup.SpawnTables.spark,
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
			prop = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					body = "0"
					fadescale = "1"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_interiors/computer_monitor.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
				//	renderamt = "255"
				//	rendercolor = "170 180 255"
				//	renderfx = "0"
				//	rendermode = "0"
					SetBodyGroup = "0"
					skin = RandomInt(0,1)
					solid = "5"
					spawnflags = "4"
					StartDisabled = "0"
					targetname = "manacat_prop"
					parentname = "Level_physbox"
					updatechildren = "0"
					angles = Vector( 0, 180, 0 )
					origin = Vector( 0, 0, 0 )
				}
			}
			physbox =
			{
				SpawnInfo =
				{
					classname = "func_physbox"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 180, 0 )
					disableshadows = "1"
					model = "models/props_interiors/computer_monitor.mdl"
					targetname = "Level_physbox"
					spawnflags = "16384"
					effects = "32"
					connections =
					{
						OnDamaged =
						{
							cmd1 = "manacat_propSkin10-1"
						//	cmd2 = "manacat_soundPlaySound01"
							cmd2 = "manacat_sparkSparkOnce01"
						}
					}
				}
			}
			sound =
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					angles = Vector( 0, 0, 0 )
					health = "10"
					message = "LoudSpark"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					SourceEntityName = "manacat_prop"
					spawnflags = "48"
					targetname = "manacat_sound"
					origin = Vector( 0, 0, 0 )
				}
			}
			spark =
			{
				SpawnInfo =
				{
					classname = "env_spark"
					angles = Vector( 0, 0, 0 )
					Magnitude = "2"
					TrailLength = "1"
					MaxDelay = "0"
					parentname = "manacat_prop"
					spawnflags = "128"
					targetname = "manacat_spark"
					origin = Vector( 0, 0, 10 )
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )
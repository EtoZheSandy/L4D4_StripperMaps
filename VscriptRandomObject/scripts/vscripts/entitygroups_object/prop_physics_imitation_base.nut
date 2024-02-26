PrecacheModel(::modelName);
Obj <-
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
					model = ::modelName
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					SetBodyGroup = "0"
					skin = RandomInt(0,1)
					solid = "5"
					spawnflags = "4"
					StartDisabled = "0"
					targetname = "manacat_prop"
					parentname = "manacat_physbox"
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
					model = ::modelName
					targetname = "manacat_physbox"
					spawnflags = "16384"
					effects = "32"
					health = ::modelHealth
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )
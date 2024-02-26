PrecacheModel("models/props_c17/substation_transformer01a.mdl");
PrecacheModel("models/props_c17/substation_transformer01b.mdl");
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
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.physbox1,
			EntityGroup.SpawnTables.physbox2,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.origin,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.physbox1,
			EntityGroup.SpawnTables.physbox2,
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
			origin =
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					parentname = "Level_transformer01a"
					angles = Vector( 0, 0, 0 )
					model = "models/brokenglass_piece.mdl"
					renderamt = "0"
					rendercolor = "0 0 0"
					rendermode = "1"
					origin = Vector( 0, 0, 0 )
					targetname = "Level_origin"
				}
			}
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					body = "0"
					fadescale = "1"
					disableshadows = "1"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_c17/substation_transformer01a.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					SetBodyGroup = "0"
					solid = "5"
					spawnflags = "4"
					StartDisabled = "0"
					targetname = "manacat_prop"
					parentname = "manacat_physbox"
					updatechildren = "0"
					angles = Vector( 0, 0, 0 )
					origin = Vector( 0, 0, 76 )
					rendercolor = "255 255 255"
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					body = "0"
					fadescale = "1"
					disableshadows = "1"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_c17/substation_transformer01b.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					SetBodyGroup = "0"
					solid = "5"
					spawnflags = "4"
					StartDisabled = "0"
					targetname = "manacat_prop2"
					parentname = "manacat_physbox2"
					updatechildren = "0"
					angles = Vector( -90, 0, 0 )
					origin = Vector( -28, 8, 182 )
					rendercolor = "255 255 255"
				}
			}
			physbox1 = 
			{
				SpawnInfo =
				{
					classname = "func_physbox"
					origin = Vector( 0, 0, 76 )
					angles = Vector( 0, 0, 0 )
					disableshadows = "1"
					model = "models/props_c17/substation_transformer01a.mdl"
					targetname = "manacat_physbox1"
					spawnflags = "32768"
					effects = "32"
				}
			}
			physbox2 = 
			{
				SpawnInfo =
				{
					classname = "func_physbox"
					origin = Vector( -28, 8, 182 )
					angles = Vector( -90, 0, 0 )
					disableshadows = "1"
					model = "models/props_c17/substation_transformer01b.mdl"
					targetname = "manacat_physbox2"
					spawnflags = "32768"
					effects = "32"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )

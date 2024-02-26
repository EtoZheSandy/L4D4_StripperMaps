Obj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.guncabinet,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.guncabinet,
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
			guncabinet = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "1"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_unique/guncabinet01_dlc3.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "0"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "1"
					SetBodyGroup = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "manacat_guncabinet_block"
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Gunc

RegisterEntityGroup( "Obj", Obj )

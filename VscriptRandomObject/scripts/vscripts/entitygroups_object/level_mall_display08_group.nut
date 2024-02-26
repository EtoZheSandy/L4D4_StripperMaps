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
			EntityGroup.SpawnTables.unnamed2,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.unnamed2,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed,
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
					classname = "prop_dynamic"
					targetname = "Level_obj"
					angles = Vector( 0, 30, 0 )
					disableselfshadowing = "1"
					disableshadows = "1"
					disablevertexlighting = "1"
					disableX360 = "0"
					fademaxdist = "1200"
					fademindist = "1000"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_mall/clothing_shirts03.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					origin = Vector( 11.1925, 72.0461, 100.4 )
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_obj"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "1"
					disableshadows = "1"
					disablevertexlighting = "1"
					disableX360 = "0"
					fademaxdist = "1200"
					fademindist = "1000"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_mall/clothing_shirts01.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					origin = Vector( 7.19479, 94.0419, 87.4 )
				}
			}
			unnamed2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_obj"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "1"
					disableshadows = "1"
					disablevertexlighting = "1"
					disableX360 = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_mall/mall_display_08.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Display08

RegisterEntityGroup( "LvObj", LvObj )

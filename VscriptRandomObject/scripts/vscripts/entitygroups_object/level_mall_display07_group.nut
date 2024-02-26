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
			EntityGroup.SpawnTables.unnamed3,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.unnamed3,
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
					angles = Vector( 0, 165, 0 )
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
					model = "models/props_mall/clothing_pile02.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					origin = Vector( 3.56239, 29.7931, 3.91 )
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_obj"
					angles = Vector( 0, 75, 0 )
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
					model = "models/props_mall/clothing_pile03.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					origin = Vector( 3.97351, -3.44593, 26.91 )
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
					fademaxdist = "1200"
					fademindist = "1000"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_mall/clothing_shirts02.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					origin = Vector( 10.1802, -38.2378, 44.894 )
				}
			}
			unnamed3 = 
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
					fademindist = "1100"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_mall/mall_display_07.mdl"
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
} // Display07

RegisterEntityGroup( "LvObj", LvObj )

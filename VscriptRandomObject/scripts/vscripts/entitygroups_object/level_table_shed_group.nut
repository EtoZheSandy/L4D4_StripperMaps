//-------------------------------------------------------
// Autogenerated from 'table.vmf'
//-------------------------------------------------------
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
			EntityGroup.SpawnTables.unnamed4,
			EntityGroup.SpawnTables.block0,

		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.origin,
			EntityGroup.SpawnTables.unnamed,
			EntityGroup.SpawnTables.unnamed1,
			EntityGroup.SpawnTables.unnamed4,
			EntityGroup.SpawnTables.block0,
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
					parentname = "Level_Table"
					angles = Vector( 0, 0, 0 )
					model = "models/brokenglass_piece.mdl"
					renderamt = "0"
					rendercolor = "0 0 0"
					rendermode = "1"
					origin = Vector( 0, 0, 0 )
					targetname = "Level_origin"
				}
			}
			block0 =
			{//뒤
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "Level_Table"
					mins = Vector( -23, -48, 30 )
					boxmins = Vector( -23, -48, 30 )
					maxs = Vector( 23, 48, 34 )
					boxmaxs = Vector( 23, 48, 34 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			unnamed = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_Newspaper"
					parentname = "Level_Table"
					disableshadows = "1"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					glowbackfacemult = "1.0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props/cs_militia/newspaperstack01.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					solid = "6"
					spawnflags = "0"
					origin = Vector( 5.61343, -27.5766, 9.8224 )
				}
			}
			unnamed1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_Table"
					disableshadows = "1"
					angles = Vector( 0, 180, 0 )
					body = "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props/cs_militia/table_shed.mdl"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					solid = "6"
					spawnflags = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			unnamed4 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetName = "Level_circularsaw"
					parentname = "Level_Table"
					angles = Vector( -1.14257, 329.81, 3.51563 )
					disableshadows = "1"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "1000"
					fademindist = "800"
					fadescale = "1"
					forcetoenablemotion = "0"
					glowcolor = "0 0 0"
					inertiaScale = "1.0"
					massScale = "0"
					mincpulevel = "2"
					mingpulevel = "0"
					minhealthdmg = "0"
					model = "models/props/cs_militia/circularsaw01.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					shadowcastdist = "0"
					skin = "0"
					spawnflags = "261"
					origin = Vector( -1.59848, 27.5547, 10.1935 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Table

RegisterEntityGroup( "LvObj", LvObj )
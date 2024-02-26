LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_cargo_container,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_cargo_container,
			EntityGroup.SpawnTables.Level_cargo_block,
			EntityGroup.SpawnTables.Level_cargo_block1,
			EntityGroup.SpawnTables.Level_cargo_block2,
			EntityGroup.SpawnTables.Level_cargo_block3,
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
			Level_cargo_container = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					disableselfshadowing = "0"
					disableshadows = "1"
					disablevertexlighting = "0"
					disableX360 = "0"
					fademaxdist = "2100"
					fademindist = "2000"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_equipment/cargo_container04.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					disableshadows = true
					origin = Vector( 0, 0, 0 )
					targetname = "Level_cargo_container"
				}
			}
			Level_cargo_block =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -64, -192, 0 )
					boxmins = Vector( -64, -192, 0 )
					maxs = Vector( 64, 192, 7.5 )
					boxmaxs = Vector( 64, 192, 7.5 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_cargo_blockbottom"
					parentname = "Level_cargo"
				}
			}
			Level_cargo_block1 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -64, -192, 7.5 )
					boxmins = Vector( -64, -192, 7.5 )
					maxs = Vector( -57, 192, 120 )
					boxmaxs = Vector( -57, 192, 120 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_cargo_block"
					parentname = "Level_cargo"
				}
			}
			Level_cargo_block2 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 57, -192, 7.5 )
					boxmins = Vector( 57, -192, 7.5 )
					maxs = Vector( 64, 192, 120 )
					boxmaxs = Vector( 64, 192, 120 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_cargo_block"
					parentname = "Level_cargo"
				}
			}
			Level_cargo_block3 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -64, -192, 120 )
					boxmins = Vector( -64, -192, 120 )
					maxs = Vector( 64, 192, 125.5 )
					boxmaxs = Vector( 64, 192, 125.5 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_cargo_blockbottom"
					parentname = "Level_cargo"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )
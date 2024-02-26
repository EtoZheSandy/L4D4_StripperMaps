LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_outhouse_door,
			EntityGroup.SpawnTables.Level_outhouse,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_outhouse,
			EntityGroup.SpawnTables.block1, //바닥
			EntityGroup.SpawnTables.blockrooftop1,
			EntityGroup.SpawnTables.blockrooftop2,
			EntityGroup.SpawnTables.blockrooftop3,
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
			Level_outhouse = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "1"
					disableX360 = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_urban/outhouse001.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "6"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "Level_outhouse"
					updatechildren = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			block1 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -28, -28, 0 )
					boxmins = Vector( -28, -28, 0 )
					maxs = Vector( 28, 28, 95 )
					boxmaxs = Vector( 28, 28, 95 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			blockrooftop1 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -29.5, -29.5, 95 )
					boxmins = Vector( -29.5, -29.5, 95 )
					maxs = Vector( 29.5, 29.5, 100 )
					boxmaxs = Vector( 29.5, 29.5, 100 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			blockrooftop2 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -27, -23.5, 95 )
					boxmins = Vector( -27, -23.5, 95 )
					maxs = Vector( 27, 23.5, 105 )
					boxmaxs = Vector( 27, 23.5, 105 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			blockrooftop3 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -27, -11, 95 )
					boxmins = Vector( -27, -11, 95 )
					maxs = Vector( 27, 11, 111 )
					boxmaxs = Vector( 27, 11, 111 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )

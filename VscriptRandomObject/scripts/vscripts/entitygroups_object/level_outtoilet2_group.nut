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
			EntityGroup.SpawnTables.Level_outhouse_door,
			EntityGroup.SpawnTables.block1, //바닥
			EntityGroup.SpawnTables.block2, //뒷벽
			EntityGroup.SpawnTables.block3, //옆
			EntityGroup.SpawnTables.block4, //옆
			EntityGroup.SpawnTables.block5, //앞1
			EntityGroup.SpawnTables.block6, //앞2
			EntityGroup.SpawnTables.block7, //앉는높이
			EntityGroup.SpawnTables.blockrooftop1,
			EntityGroup.SpawnTables.blockrooftop2,
			EntityGroup.SpawnTables.blockrooftop3,
			EntityGroup.SpawnTables.Level_rescue,
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
			Level_outhouse_door = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "-0 90 0"
					angles = Vector( 0, 0, 0 )
					axis = "-6559.5 -5844 -60.94, -6632 -5815.87 -96.94"
					body = "0"
					disableshadows = "1"
					distance = "90"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "1"
					health = "0"
					model = "models/props_urban/outhouse_door001.mdl"
					opendir = "1"
					parentname = "outhouse"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"//처음에 안부서지게 하려면 "532480"
					spawnpos = "0"
					speed = "200"
					targetname = "Level_outhouse_door"
					origin = Vector( 28, -17, 4 )
					connections =
					{
						OnOpen =
						{
							cmd1 = "Level_outhouse_doorSetBreakable0-1"
						}
					}
				}
			}
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
					model = "models/props_urban/outhouse002.mdl"
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
					maxs = Vector( 28, 28, 3.3 )
					boxmaxs = Vector( 28, 28, 3.3 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			block2 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -28, -28, 0 )
					boxmins = Vector( -28, -28, 0 )
					maxs = Vector( -25, 28, 100 )
					boxmaxs = Vector( -25, 28, 100 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			block3 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -28, -28, 0 )
					boxmins = Vector( -28, -28, 0 )
					maxs = Vector( 28, -25, 100 )
					boxmaxs = Vector( 28, -25, 100 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			block4 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -28, 25, 0 )
					boxmins = Vector( -28, 25, 0 )
					maxs = Vector( 28, 28, 100 )
					boxmaxs = Vector( 28, 28, 100 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			block5 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -28, -28, 0 )
					boxmins = Vector( -28, -28, 0 )
					maxs = Vector( -25, -18, 100 )
					boxmaxs = Vector( -25, -18, 100 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			block6 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -28, 18, 0 )
					boxmins = Vector( -28, 18, 0 )
					maxs = Vector( -25, 28, 100 )
					boxmaxs = Vector( -25, 28, 100 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_block"
					parentname = "Level_outhouse"
				}
			}
			block7 = 
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( -26, -26, 0 )
					boxmins = Vector( -26, -26, 0 )
					maxs = Vector( -7, 26, 30 )
					boxmaxs = Vector( -7, 26, 30 )
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
			Level_rescue = 
			{
				SpawnInfo =
				{
					classname = "info_survivor_rescue"
					parentname = "Level_outhouse"
					targetname = "Level_rescue"
					rescueEyePos = "rescueEyePos"
					angles = Vector(0, 0, 0)
					origin = Vector(12, 0, 4)
					model = "models/editor/playerstart.mdl"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "LvObj", LvObj )

Obj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			//EntityGroup.SpawnTables.origin,
			EntityGroup.SpawnTables.chest,
			EntityGroup.SpawnTables.icechest_door,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.chest,
			EntityGroup.SpawnTables.chestlid,
			EntityGroup.SpawnTables.chest_button
			EntityGroup.SpawnTables.snd_chest_open
			//EntityGroup.SpawnTables.block
			EntityGroup.SpawnTables.block1,
			EntityGroup.SpawnTables.block2,
			EntityGroup.SpawnTables.block3,
			EntityGroup.SpawnTables.block4,
			EntityGroup.SpawnTables.blockbottom,
			
			EntityGroup.SpawnTables.Level_box1,
			EntityGroup.SpawnTables.Level_box2,
			EntityGroup.SpawnTables.Level_box3
			EntityGroup.SpawnTables.Level_box4
			EntityGroup.SpawnTables.Level_box5
			EntityGroup.SpawnTables.Level_box6
			EntityGroup.SpawnTables.Level_box7
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
			/*origin =
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					model = "models/brokenglass_piece.mdl"
					renderamt = "0"
					rendercolor = "0 0 0"
					rendermode = "1"
					origin = Vector( 0, 0, 0 )
					targetname = "Level_origin"
				}
			}*/
			chest = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "1920"
					fademindist = "1501"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowstate = "0"
					LagCompensate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_urban/plastic_icechest001_static.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 215 205"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "chest"
					updatechildren = "0"
					origin = Vector( 0, 0, 0 )
				}
			}
			chestlid = 
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					disableshadows = "0"
					model = "models/props_urban/plastic_icechest_lid001.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "4"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "chest"
					updatechildren = "0"
					targetname = "chestlid"
					//parentname = "chest_button"
					spawnflags = "264"
					origin = Vector( 0, 0, 18.8 )
				}
			}
			chest_button = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 90 )
					axis = "0 0 0, 0 0 0"
					disableshadows = "1"
					distance = "4"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "0"
					health = "0"
					model = "models/props_windows/window_urban_sash_32_72_full_gib08.mdl"//"models/props_doors/doordm01_02.mdl"
					opendir = "0"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"
					spawnpos = "0"
					speed = "10"
					targetname = "chest_button"
					origin = Vector( -10, 10, 21.8 )
					rendermode = "1"
					renderamt = "0"
					connections =
					{
						OnOpen =
						{
							cmd1 = "chestlidClearParent0.11"
							cmd2 = "chestlidEnableMotion0.11"
							cmd3 = "snd_chest_openPlaySound01"
						}
						OnFullyOpen =
						{
							cmd1 = "!selfKill01"
						}
					}
				}
			}
			snd_chest_open =
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					angles = Vector( 0, 0, 0 )
					health = "10"
					message = "Plastic_Barrel.StepRight"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					SourceEntityName = "chest"
					spawnflags = "48"
					targetname = "snd_chest_open"
					origin = Vector( 0, 0, 12.5 )
				}
			}

			Level_box1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 20, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break05.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					spawnflags = "266"
					origin = Vector( -23, 0, 6 )
				}
			}
			Level_box2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 350, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break11.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					spawnflags = "266"
					origin = Vector( 45, -1, 6 )
				}
			}
			Level_box3 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 74, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break06.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -3, -8, 6 )
				}
			}
			Level_box4 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 307, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break02.mdl"
					renderamt = "255"
					rendercolor = "177 177 177"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -11, 31, 6 )
				}
			}
			Level_box5 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 155, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break08.mdl"
					renderamt = "255"
					rendercolor = "177 177 177"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -1, 0, 5 )
				}
			}
			Level_box6 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 177, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break07.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -7, -9, 5 )
				}
			}
			Level_box7 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 262, 90 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break09.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -5, -9, 5 )
				}
			}
			Level_box8 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 337, 70 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break11.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 27, -7, 15.1 )
				}
			}
			Level_box9 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 177, 70 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break01.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 37, -7, 15.1 )
				}
			}
			Level_box10 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 7, 80 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break02.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -22, 14, 15.1 )
				}
			}
			block =
			{//냉장고 블록
				SpawnInfo =
				{
					classname = "env_physics_bchest"
					targetname = "Level_block"
					parentname = "icechest"
					mins = Vector( -12, -16, 0 )
					boxmins = Vector( -12, -16, 0 )
					maxs = Vector( 12, 16, 70 )
					boxmaxs = Vector( 12, 16, 70 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			block =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "fridge"
					mins = Vector( -17, -10, 17 )
					boxmins = Vector( -17, -10, 17 )
					maxs = Vector( 17, 10, 18.2 )
					boxmaxs = Vector( 17, 10, 18.2 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			block1 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "fridge"
					mins = Vector( -17, -10, 0 )
					boxmins = Vector( -17, -10, 0 )
					maxs = Vector( -16, 10, 18.2 )
					boxmaxs = Vector( -16, 10, 18.2 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			block2 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "fridge"
					mins = Vector( 16, -10, 0 )
					boxmins = Vector( 16, -10, 0 )
					maxs = Vector( 17, 10, 18.2 )
					boxmaxs = Vector( 17, 10, 18.2 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			block3 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "fridge"
					mins = Vector( -17, -10, 0 )
					boxmins = Vector( -17, -10, 0 )
					maxs = Vector( 17, -9, 18.2 )
					boxmaxs = Vector( 17, -9, 18.2 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			block4 =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "fridge"
					mins = Vector( -17, 9, 0 )
					boxmins = Vector( -17, 9, 0 )
					maxs = Vector( 17, 10, 18.2 )
					boxmaxs = Vector( 17, 10, 18.2 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			blockbottom =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					targetname = "Level_block"
					parentname = "fridge"
					mins = Vector( -17, -10, 0 )
					boxmins = Vector( -17, -10, 0 )
					maxs = Vector( 17, 10, 5 )
					boxmaxs = Vector( 17, 10, 5 )
					initialstate = "1"
					BlockType = "4"
					origin = Vector( 0, 0, 0 )
				}
			}
			icechest_door = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					parentname = "icechest_doorent"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "-1.18 -1.19 -0.05, -1.18 -1.19 -0.05"
					disableshadows = "1"
					distance = "110"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "0"
					health = "0"
					model = "models/props_urban/plastic_icechest_lid001.mdl"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"
					solid = "4"
					targetname = "icechest_doortop"
					origin = Vector( 0, 0, 18.8 )
				}
			}
			Level_navblock =
			{
				SpawnInfo =
				{
					classname = "script_nav_bchest"
					extent = Vector(2, 2, 20)
					solid = "2"
					targetname = "Level_navblock"
					origin = Vector(0, 0, -10)
					angles = Vector(0, 0, 0)
					affectsFlow = "1"
					teamToBlock = "-1"
					StartDisabled = "1"
					//RecheckBreakables = "1"
				}
			}
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )
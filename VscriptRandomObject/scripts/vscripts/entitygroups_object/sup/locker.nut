Obj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.origin,
			EntityGroup.SpawnTables.locker,
			EntityGroup.SpawnTables.icechest_door,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.origin,
			EntityGroup.SpawnTables.locker,
			EntityGroup.SpawnTables.locker_button
			EntityGroup.SpawnTables.snd_locker_open
			
			EntityGroup.SpawnTables.Level_box1
			EntityGroup.SpawnTables.Level_box2
			EntityGroup.SpawnTables.Level_box3
			EntityGroup.SpawnTables.Level_box4
			EntityGroup.SpawnTables.Level_box5
			EntityGroup.SpawnTables.Level_box6
			EntityGroup.SpawnTables.Level_box7
			EntityGroup.SpawnTables.Level_box8
			EntityGroup.SpawnTables.Level_box9
			EntityGroup.SpawnTables.Level_box10
			//EntityGroup.SpawnTables.Level_navblock
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
					angles = Vector( 0, 0, 0 )
					model = "models/brokenglass_piece.mdl"
					renderamt = "0"
					rendercolor = "0 0 0"
					rendermode = "1"
					origin = Vector( 0, 0, 0 )
					disableshadows = "0"
					targetname = "Level_origin"
				}
			}
			locker = 
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
					model = "models/props_waterfront/footlocker01.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "170 180 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "locker"
					updatechildren = "0"
					origin = Vector( 0, 0, 12.1 )
				}
			}
			locker_button = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "0 0 0, 0 0 0"
					disableshadows = "1"
					distance = "90"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "0"
					health = "0"
					model = "models/props_waterfront/footlocker01.mdl"
					opendir = "1"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "1"
					spawnflags = "8192"
					spawnpos = "0"
					speed = "0"
					targetname = "box_open"
					origin = Vector( 0, 0, 12.1 )
					rendermode = "1"
					renderamt = "0"
					connections =
					{
						OnOpen =
						{
							cmd1 = "!selfKill0.11"
							cmd2 = "lockerSetAnimationopening01"
							cmd3 = "snd_locker_openPlaySound01"
							cmd4 = "case_locker5PickRandom01"
							cmd5 = "game_event5FireEvent01"
							cmd6 = "!activatorSpeakresponseconceptOpenLocker01"
						}
					}
				}
			}
			snd_locker_open =
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					angles = Vector( 0, 0, 0 )
					health = "10"
					message = "Trunk.Open"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					SourceEntityName = "locker"
					spawnflags = "48"
					targetname = "snd_locker_open"
					origin = Vector( 0, 0, 12.5 )
				}
			}

			Level_box1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 180, 0 )
					disableshadows = "0"
					model = "models/props_junk/cardboard_box05_static.mdl"
					renderamt = "255"
					rendercolor = "130 160 160"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 5.5, 9.5, 7.6 )
				}
			}
			Level_box2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 180 )
					disableshadows = "0"
					model = "models/props_junk/cardboard_box05_static.mdl"
					renderamt = "255"
					rendercolor = "130 160 160"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -5.5, -7, 2.6 )
				}
			}
			Level_box3 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 74, 0 )
					disableshadows = "0"
					model = "models/props_mall/clothing_pants_draping02.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 3, 18, 12 )
				}
			}
			Level_box4 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 267, 0 )
					disableshadows = "0"
					model = "models/props_mall/clothing_pile03.mdl"
					renderamt = "255"
					rendercolor = "177 177 177"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( -2, -5, 13.1 )
				}
			}
			Level_box5 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 177, 0 )
					disableshadows = "0"
					model = "models/props_mall/clothing_pants01.mdl"
					renderamt = "255"
					rendercolor = "177 177 177"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 2, 9, 13.1 )
				}
			}
			Level_box6 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 177, 70 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break06.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 2, 9, 15.1 )
				}
			}
			Level_box7 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 227, 70 )
					disableshadows = "0"
					model = "models/props_interiors/bottles_shelf_break10.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					targetname = "Level_box"
					solid = "6"
					origin = Vector( 2, -29, 15.1 )
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
					classname = "script_nav_blocker"
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
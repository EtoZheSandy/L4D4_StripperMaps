PrecacheModel("models/props_unique/guncabinet01_dlc3.mdl");
Obj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.guncabinetdoor_r,
			EntityGroup.SpawnTables.guncabinetdoor_l,
			EntityGroup.SpawnTables.guncabinetdoor_rm,
			EntityGroup.SpawnTables.guncabinetdoor_lm,
			EntityGroup.SpawnTables.doorset,
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
			EntityGroup.SpawnTables.guncabinetdoor_r,
			EntityGroup.SpawnTables.guncabinetdoor_l,
			EntityGroup.SpawnTables.guncabinetdoor_rm,
			EntityGroup.SpawnTables.guncabinetdoor_lm,
			EntityGroup.SpawnTables.doorset,
			EntityGroup.SpawnTables.physbox,
			EntityGroup.SpawnTables.block,
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
			guncabinetdoor_l = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					parentname = "manacat_guncabinet"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					origin = Vector( 11.25, -22.75, 45 )
					axis = "12.74 -22.08 0, 12.74 -22.08 0"
					renderamt = "0"
					rendermode = "1"
					body = "0"
					disableshadows = "0"
					distance = "138"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					hardware = "1"
					health = "0"
					model = "models/brokenglass_piece.mdl"//"models/props_unique/guncabinet01_ldoor.mdl"
					opendir = "2"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"
					spawnpos = "0"
					speed = "250"
					disableshadows = "1"
					targetname = "guncabinetdoor_l"
					soundopenoverride = "Doors.FullOpen8"
					soundcloseoverride = "Doors.FullClose8"
					connections =
					{
						OnFullyOpen =
						{
							cmd1 = "manacat_guncabinetBlockKill0-1"
							cmd2 = "guncabinetdoor_lLock-0-1"
							cmd3 = "guncabinetdoor_rLock-0-1"
						}
					}
				}
			}
			guncabinetdoor_r = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					parentname = "manacat_guncabinet"
					slavename = "guncabinetdoor_l"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					origin = Vector( 11.25, 22.75, 45 )
					axis = "12.74 23.51 0, 12.74 23.51 0"
					renderamt = "0"
					rendermode = "1"
					body = "0"
					disableshadows = "0"
					distance = "138"
					dmg = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowrangemin = "0"
					glowstate = "0"
					hardware = "1"
					health = "0"
					model = "models/brokenglass_piece.mdl"//"models/props_unique/guncabinet01_rdoor.mdl"
					opendir = "1"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"
					spawnpos = "0"
					speed = "250"
					disableshadows = "1"
					targetname = "guncabinetdoor_r"
					soundopenoverride = "Doors.FullOpen8"
					soundcloseoverride = "Doors.FullClose8"
				}
			}
			guncabinetdoor_lm = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					parentname = "guncabinetdoor_l"
					solid = "5"
					angles = Vector( 0, 0, 0 )
					disableshadows = "0"
					model = "models/props_unique/guncabinet01_ldoor.mdl"
					disableshadows = "1"
					targetname = "guncabinetdoor_lm"
					origin = Vector( 11.25, -22.75, 0 )
				}
			}
			guncabinetdoor_rm = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					parentname = "guncabinetdoor_r"
					solid = "5"
					angles = Vector( 0, 0, 0 )
					disableshadows = "0"
					model = "models/props_unique/guncabinet01_rdoor.mdl"
					disableshadows = "1"
					targetname = "guncabinetdoor_rm"
					origin = Vector( 11.25, 22.75, 0 )
				}
			}
			guncabinet = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
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
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "5"
					spawnflags = "4"
					StartDisabled = "0"
					targetname = "manacat_guncabinet"
					parentname = "manacat_physbox"
					origin = Vector( 0, 0, 0 )
				}
			}
			doorset =
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					solid = "6"
					model = "models/props_interiors/handrail_hospital01_32.mdl"
					targetname = "manacat_doorset"
					parentname = "manacat_guncabinet"
					rendermode = "1"
					renderamt = "0"
					angles = Vector( 0, 90, 90)
					origin = Vector( -5, 0, 3 )
				}
			}
			physbox =
			{
				SpawnInfo =
				{
					classname = "func_physbox"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					disableshadows = "1"
					model = "models/props_unique/guncabinet01_dlc3.mdl"
					targetname = "manacat_physbox"
					spawnflags = "32768"
					effects = "32"
				}
			}
			block =
			{
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					angles = Vector( 0, 0, 0 )
					mins = Vector( 12.5, -14, 20 )
					boxmins = Vector( 12.5, -14, 20 )
					maxs = Vector( 13, 14, 50 )
					boxmaxs = Vector( 13, 14, 50 )
					initialstate = "1"
					BlockType = "1"
					targetName = "manacat_guncabinet_block"
					parentname = "manacat_guncabinet"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Gunc

RegisterEntityGroup( "Obj", Obj )

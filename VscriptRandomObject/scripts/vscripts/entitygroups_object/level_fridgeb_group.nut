LvObj <- //이게 좌표수정
{
	//맵별로 문 열리는 방향이 달라서 opendir 차이로 A-B가 나뉨
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.fridge,
			EntityGroup.SpawnTables.fridge_doorbot,
			EntityGroup.SpawnTables.fridge_doortop,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.fridge,
			EntityGroup.SpawnTables.fridge_itemblock,
			EntityGroup.SpawnTables.fridge_doortop,
			EntityGroup.SpawnTables.fridge_doorbot,
			EntityGroup.SpawnTables.blocktop,
			EntityGroup.SpawnTables.blockbot,
			EntityGroup.SpawnTables.Level_navblock
			EntityGroup.SpawnTables.Level_worldOut
			EntityGroup.SpawnTables.fridge_doorenttop,
			EntityGroup.SpawnTables.fridge_doorentbot,
			EntityGroup.SpawnTables.fridge_light
			EntityGroup.SpawnTables.physbox
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
			fridge = 
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
					model = "models/props_interiors/refrigerator02_main.mdl"
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
					targetname = "manacat_fridge"
					origin = Vector( 0, 0, 0 )
				}
			}
			fridge_doorenttop = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "0 0 0, 0 0 0"
					disableshadows = "1"
					distance = "110"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "0"
					health = "0"
					model = "models/brokenglass_piece.mdl"
					opendir = "2"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"
					spawnpos = "0"
					speed = "200"
					targetname = "fridge_doorenttop"
					origin = Vector( 14.2, 14.7, 50 )
					rendermode = "1"
					renderamt = "0"
				}
			}
			fridge_doorentbot = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "0 0 0, 0 0 0"
					disableshadows = "1"
					distance = "110"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "0"
					health = "0"
					model = "models/brokenglass_piece.mdl"
					opendir = "2"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "1"
					spawnflags = "8192"
					spawnpos = "0"
					speed = "200"
					targetname = "fridge_doorentbot"
					origin = Vector( 14.2, 14.7, 35 )
					rendermode = "1"
					renderamt = "0"
					connections =
					{
						OnFullyClosed =
						{
							cmd1 = "manacat_fridgeSkin00-1"
							cmd2 = "fridge_lightTurnOff00-1"
						}
						OnOpen =
						{
							cmd1 = "manacat_fridgeSkin10-1"
							cmd2 = "fridge_lightTurnOn00-1"
							cmd3 = "fridge_itemblockKill00-1"
						}
					}
				}
			}
			fridge_itemblock = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 90, 90 )
					disableshadows = "1"
					parentname = "manacat_fridge"
					model = "models/props_junk/cardboard_box05_static.mdl"
					solid = "6"
					spawnflags = "0"
					targetname = "fridge_itemblock"
					weaponskin = "-1"
					rendermode = "1"
					renderamt = "0"
					origin = Vector( 1.1, -4.8, 34 )
				}
			}
			blocktop =
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_block"
					parentname = "fridge_doorenttop"
					model = "models/gibs/glass_shard04.mdl"
					solid = "6"
					disableshadows = "1"
					angles = Vector( 90, 0, 0 )
					origin = Vector( 14.2, 0, 64 )
				}
			}
			blockbot =
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					targetname = "Level_block"
					parentname = "fridge_doorentbot"
					model = "models/gibs/glass_shard04.mdl"
					solid = "6"
					disableshadows = "1"
					angles = Vector( 90, 0, 0 )
					origin = Vector( 14.2, 0, 43 )
				}
			}
			fridge_doorbot = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					parentname = "fridge_doorentbot"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "64 -0 -0.05, 0 -32 -0.05"
					disableshadows = "1"
					distance = "110"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "0"
					health = "0"
					model = "models/props_interiors/refrigerator02_lowerdoor.mdl"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "1"
					spawnflags = "8192"
					solid = "4"
					targetname = "fridge_doorbot"
					origin = Vector( 0, 0, 0 )
				}
			}
			fridge_doortop = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					parentname = "fridge_doorenttop"
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
					model = "models/props_interiors/refrigerator02_freezerdoor.mdl"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "8192"
					solid = "4"
					targetname = "fridge_doortop"
					origin = Vector( 0, 0, 0 )
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
			Level_worldOut =
			{
				SpawnInfo =
				{
					classname = "prop_physics"
					angles = Vector( 0, 0, 0 )
					origin = Vector( 0, 0, -50000 )
					model = "models/props_junk/wood_crate001a.mdl"
					targetname = "Level_worldOut"
					connections =
					{
						OnOutOfWorld =
						{
							cmd1 = "Level_navblockBlockNav0-1"
							cmd2 = "fridge_lightTurnOff00-1"
							cmd3 = "Level_worldOutKill0-1"
						}
					}
				}
			}
			fridge_light =
			{
				SpawnInfo =
				{
					classname = "light_dynamic"
					_castentityshadow = "1"
					_constant_attn = "100"
					_distance = "0"
					_fifty_percent_distance = "0"
					_inner_cone = "45"
					_light = "225 217 170 300"
					_lightHDR = "-1 -1 -1 1"
					_lightscaleHDR = "1"
					_linear_attn = "0"
					_quadratic_attn = "1"
					_shadoworiginoffset = Vector( 0, 0, 0 )
					_zero_percent_distance = "0"
					spotlight_radius = "60"
					distance = "60"
					brightness = 2
					angles = Vector( 0, 0, 0 )
					pitch = "0"
					style = "12"
					targetname = "fridge_light"
					parentname = "workspots"
					origin = Vector( 14.2, -4.8, 30 )
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
					model = "models/props_interiors/refrigerator02_main.mdl"
					targetname = "manacat_physbox"
					parentname = "manacat_fridge"
					spawnflags = "32768"
					effects = "32"
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Fridge

RegisterEntityGroup( "LvObj", LvObj )

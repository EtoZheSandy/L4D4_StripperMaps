LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_alarmlight1,
			EntityGroup.SpawnTables.Level_alarmdoor,
			EntityGroup.SpawnTables.Level_alarmdoor_sign1,
			EntityGroup.SpawnTables.Level_alarmdoor_sign2,
			EntityGroup.SpawnTables.Level_alarmdoor_sign3,
			EntityGroup.SpawnTables.Level_alarmdoor_sign4,
			EntityGroup.SpawnTables.Level_alarm_light1,
			EntityGroup.SpawnTables.Level_spot_doors1,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_alarmdoor,
			EntityGroup.SpawnTables.Level_alarmdoor_sign1,
			EntityGroup.SpawnTables.Level_alarmdoor_sign2,
			EntityGroup.SpawnTables.Level_alarmdoor_relay,
			EntityGroup.SpawnTables.Level_alarmlight1,
			EntityGroup.SpawnTables.Level_alarm_sound,
			EntityGroup.SpawnTables.Level_alarmdoor_proxy,
			EntityGroup.SpawnTables.Level_alarm_light1,
			EntityGroup.SpawnTables.Level_rot_redlight
			EntityGroup.SpawnTables.Level_spot_doors1,
			EntityGroup.SpawnTables.Level_spot_doors2,
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
			Level_alarmlight1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 90, 180, 0 )
					disableselfshadowing = "1"
					disableshadows = "1"
					disablevertexlighting = "1"
					disableX360 = "0"
					fademaxdist = "600"
					fademindist = "500"
					fadescale = "1"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props/de_nuke/emergency_lighta.mdl"
					renderamt = "255"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					targetname = "Level_alarmlight"
					origin = Vector( -14.5, 68, 48 )
				}
			}
			Level_alarm_light1 = 
			{
				SpawnInfo =
				{
					classname = "env_sprite"
					disablereceiveshadows = "0"
					fademindist = "-1"
					fadescale = "1"
					framerate = "10.0"
					GlowProxySize = "8"
					HDRColorScale = ".5"
					model = "sprites/light_glow02.vmt"
					renderamt = "200"
					rendercolor = "250 44 14"
					renderfx = "0"
					rendermode = "9"
					scale = ".9"
					spawnflags = "0"
					targetname = "Level_alarm_light"
					origin = Vector( -15, 68, 48 )
				}
			}
			Level_rot_redlight = 
			{
				SpawnInfo =
				{
					classname = "func_rotating"
					angles = Vector( 0, 90, 0 )
					disablereceiveshadows = "1"
					disableshadows = "1"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					fanfriction = "20"
					maxspeed = "350"
					origin = Vector( -29, 68, 48 )
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					spawnflags = "8"
					targetname = "Level_rot_redlight"
					volume = "0"
				}
			}
			Level_spot_doors1 = 
			{
				SpawnInfo =
				{
					classname = "point_spotlight"
					angles = Vector( 0, 90, 0 )
					fademindist = "-1"
					fadescale = "1"
					HaloScale = "25"
					HDRColorScale = "1.0"
					parentname = "Level_rot_redlight"
					renderamt = "255"
					rendercolor = "240 0 0"
					spawnflags = "2"
					spotlightlength = "32"
					spotlightwidth = "16"
					targetname = "Level_spot_doors"
					origin = Vector( -15, 68, 48 )
				}
			}
			Level_spot_doors2 = 
			{
				SpawnInfo =
				{
					classname = "point_spotlight"
					angles = Vector( 0, 270, 0 )
					fademindist = "-1"
					fadescale = "1"
					HaloScale = "25"
					HDRColorScale = "1.0"
					parentname = "Level_rot_redlight"
					renderamt = "255"
					rendercolor = "240 0 0"
					spawnflags = "2"
					spotlightlength = "32"
					spotlightwidth = "16"
					targetname = "Level_spot_doors"
					origin = Vector( -15, 68, 48 )
				}
			}
			Level_alarmdoor = 
			{
				SpawnInfo =
				{
					classname = "prop_door_rotating"
					ajarangles = "0 0 0"
					angles = Vector( 0, 0, 0 )
					axis = "-3.99 0 4.67, -3.99 0 4.67"
					body = "1"
					disableshadows = "1"
					distance = "90"
					dmg = "0"
					fademindist = "-1"
					fadescale = "1"
					forceclosed = "0"
					glowcolor = "0 0 0"
					hardware = "2"
					health = "0"
					model = "models/props_doors/doormainmetal01.mdl"
					opendir = "1"
					rendercolor = "255 255 255"
					returndelay = "-1"
					skin = "0"
					spawnflags = "532480"
					spawnpos = "0"
					speed = "200"
					targetname = "Level_alarmdoor"
					origin = Vector( 0, 0, 0 )
					connections =
					{
						OnOpen =
						{
							cmd1 = "Level_alarmdoor_relayTrigger0-1"
							cmd2 = "Level_alarmdoorSetBreakable0-1"
						}
						OnBreak =
						{
							cmd1 = "Level_alarmdoor_signBreak0-1"
						}
					}
				}
			}
			Level_alarmdoor_sign1 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 180, 0 )
					body = "1"
					disableshadows = "1"
					glowbackfacemult = "1.0"
					model = "models/props_downtown/sign_donotenter.mdl"
					parentname = "Level_alarmdoor"
					renderamt = "255"
					rendercolor = "255 255 255"
					solid = "4"
					spawnflags = "0"
					targetname = "Level_alarmdoor_sign"
					origin = Vector( 0.8, 28, 24 )
				}
			}
			Level_alarmdoor_sign2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( 0, 0, 0 )
					body = "1"
					disableshadows = "1"
					glowbackfacemult = "1.0"
					model = "models/props_interiors/medicinecabinet01_mirror.mdl"
					parentname = "Level_alarmdoor"
					renderamt = "255"
					rendercolor = "255 255 255"
					solid = "4"
					spawnflags = "0"
					targetname = "Level_alarmdoor_sign"
					origin = Vector( 0.5, 37, 26 )
				}
			}
			Level_alarmdoor_proxy = 
			{
				SpawnInfo =
				{
					classname = "info_game_event_proxy"
					event_name = "explain_emergency_door"
					range = "50"
					spawnflags = "1"
					targetname = "Level_alarmdoor_proxy"
					origin = Vector( 0, 0, 0 )
				}
			}
			Level_alarmdoor_relay = 
			{
				SpawnInfo =
				{
					classname = "logic_relay"
					spawnflags = "1"
					targetname = "Level_alarmdoor_relay"
					origin = Vector( 0, 0, 0 )
					connections =
					{
						OnTrigger =
						{
							cmd1 = "Level_alarm_soundPlaySound0-1"
							cmd2 = "directorRunScriptCodeZSpawn( { type = 10, pos = Vector(0,0,0), ang = QAngle(0,0,0) } );1-1"//"directorPanicEvent1-1"
							cmd3 = "directorRunScriptCodeDirector.PlayMegaMobWarningSounds();1-1"//"directorForcePanicEvent1-1"
							cmd4 = "@directorRunScriptCodeZSpawn( { type = 10, pos = Vector(0,0,0), ang = QAngle(0,0,0) } );1-1"//"directorPanicEvent1-1"
							cmd5 = "@directorRunScriptCodeDirector.PlayMegaMobWarningSounds();1-1"//"directorForcePanicEvent1-1"
							cmd6 = "Level_alarm_soundStopSound20-1"
							cmd7 = "Level_alarmdoor_proxyKill0-1"
							cmd8 = "Level_alarm_lightShowSprite0-1"
							cmd9 = "Level_alarm_lightHideSprite20-1"
							cmd10 = "Level_alarmlightSkin10-1"
							cmd11 = "Level_alarmlightSkin020-1"
							cmd12 = "Level_rot_redlightStart0-1"
							cmd13 = "Level_rot_redlightStop20-1"
							cmd14 = "Level_spot_doorsLightOn0-1"
							cmd15 = "Level_spot_doorsLightOff20-1"
						}
					}
				}
			}
			Level_alarm_sound = 
			{
				SpawnInfo =
				{
					classname = "ambient_generic"
					health = "10"
					message = "Objects.emergency_alarm_loop"
					pitch = "100"
					pitchstart = "100"
					radius = "1250"
					spawnflags = "17"
					targetname = "Level_alarm_sound"
					origin = Vector( 0, 0, 0 )
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Alarmdoor

RegisterEntityGroup( "LvObj", LvObj )

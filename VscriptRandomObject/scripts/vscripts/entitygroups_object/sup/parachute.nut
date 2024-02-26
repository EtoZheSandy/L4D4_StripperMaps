Obj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.parachute_ragdoll,
			EntityGroup.SpawnTables.parachute,
			EntityGroup.SpawnTables.parachute_bag2,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.parachute_ragdoll,
			EntityGroup.SpawnTables.parachute_rope_1_top,
			EntityGroup.SpawnTables.parachute_rope_1_bottom,
			EntityGroup.SpawnTables.parachute_rope_1_top1,
			EntityGroup.SpawnTables.parachute_rope_1_top2,
			EntityGroup.SpawnTables.parachute_rope_bottom, 
			EntityGroup.SpawnTables.parachute_rope_top,
			EntityGroup.SpawnTables.parachute_rope_top1,
			EntityGroup.SpawnTables.parachute_rope_top2,
			EntityGroup.SpawnTables.parachute,
			EntityGroup.SpawnTables.parachute_bag2,
			//EntityGroup.SpawnTables.parachute_items,
			//EntityGroup.SpawnTables.parachute_remarkable,
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
			parachute_ragdoll = 
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
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowstate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/DeadBodies/parachutist.mdl"
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
					targetname = "manacat_parachute_ragdoll"
					updatechildren = "0"
					origin = Vector( -2.28882e-005, -4.76837e-006, 0 )
				}
			}
			parachute_rope_1_top = 
			{
				SpawnInfo =
				{
					classname = "move_rope"
					angles = Vector( 0, 225, 0 )
					Barbed = "0"
					Breakable = "0"
					Collide = "0"
					Dangling = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSpeed = "64"
					NextKey = "manacat_parachute_rope_1_bottom"
					parentname = "manacat_parachute"
					PositionInterpolator = "2"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					spawnflags = "0"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_1_top"
					TextureScale = "1"
					Type = "0"
					UseWind = "0"
					Width = "1"
					origin = Vector( 53.6266, -139.965, 242.315 )
				}
			}
			parachute_rope_1_bottom = 
			{
				SpawnInfo =
				{
					classname = "keyframe_rope"
					angles = Vector( 0, 180, 0 )
					MoveSpeed = "64"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					spawnflags = "0"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_1_bottom"
					TextureScale = "1"
					Width = "2"
					origin = Vector( 0.459175, -3.06183, 59.3146 )
				}
			}
			parachute_rope_1_top1 = 
			{
				SpawnInfo =
				{
					classname = "move_rope"
					angles = Vector( 0, 225, 0 )
					Barbed = "0"
					Breakable = "0"
					Collide = "0"
					Dangling = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSpeed = "64"
					NextKey = "manacat_parachute_rope_1_bottom"
					parentname = "manacat_parachute"
					PositionInterpolator = "2"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					spawnflags = "0"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_1_top"
					TextureScale = "1"
					Type = "0"
					UseWind = "0"
					Width = "1"
					origin = Vector( -63.7532, -77.7393, 182.315 )
				}
			}
			parachute_rope_1_top2 = 
			{
				SpawnInfo =
				{
					classname = "move_rope"
					angles = Vector( 0, 225, 0 )
					Barbed = "0"
					Breakable = "0"
					Collide = "0"
					Dangling = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSpeed = "64"
					NextKey = "manacat_parachute_rope_1_bottom"
					parentname = "manacat_parachute"
					PositionInterpolator = "2"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					spawnflags = "0"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_1_top"
					TextureScale = "1"
					Type = "0"
					UseWind = "0"
					Width = "1"
					origin = Vector( 136.358, -34.6059, 236.315 )
				}
			}
			parachute_rope_bottom = 
			{
				SpawnInfo =
				{
					classname = "keyframe_rope"
					angles = Vector( 0, 180, 0 )
					MoveSpeed = "64"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_bottom"
					TextureScale = "1"
					Width = "2"
					origin = Vector( 0.459179, 4.94283, 59.3146 )
				}
			}
			parachute_rope_top = 
			{
				SpawnInfo =
				{
					classname = "move_rope"
					angles = Vector( 0, 225, 0 )
					Barbed = "0"
					Breakable = "0"
					Collide = "0"
					Dangling = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSpeed = "64"
					NextKey = "manacat_parachute_rope_bottom"
					parentname = "manacat_parachute"
					PositionInterpolator = "2"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					spawnflags = "0"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_top"
					TextureScale = "1"
					Type = "0"
					UseWind = "0"
					Width = "1"
					origin = Vector( -59.5104, 77.8241, 225.315 )
				}
			}
			parachute_rope_top1 = 
			{
				SpawnInfo =
				{
					classname = "move_rope"
					angles = Vector( 0, 225, 0 )
					MoveSpeed = "64"
					NextKey = "manacat_parachute_rope_bottom"
					parentname = "manacat_parachute"
					PositionInterpolator = "2"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_top"
					TextureScale = "1"
					Width = "1"
					origin = Vector( 115.145, 31.8624, 155.315 )
				}
			}
			parachute_rope_top2 = 
			{
				SpawnInfo =
				{
					classname = "move_rope"
					angles = Vector( 0, 225, 0 )
					Barbed = "0"
					Breakable = "0"
					Collide = "0"
					Dangling = "0"
					maxcpulevel = "0"
					maxgpulevel = "0"
					mincpulevel = "0"
					mingpulevel = "0"
					MoveSpeed = "64"
					NextKey = "manacat_parachute_rope_bottom"
					parentname = "manacat_parachute"
					PositionInterpolator = "2"
					RopeMaterial = "cable/cable.vmt"
					Slack = "25"
					spawnflags = "0"
					Subdiv = "2"
					targetname = "manacat_parachute_rope_top"
					TextureScale = "1"
					Type = "0"
					UseWind = "0"
					Width = "1"
					origin = Vector( 59.2834, 77.8242, 148.315 )
				}
			}
			parachute = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic_override"
					angles = Vector( 0, 210, 0 )
					body = "0"
					disablereceiveshadows = "0"
					disableshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademaxdist = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowstate = "0"
					health = "0"
					MaxAnimTime = "10"
					maxcpulevel = "0"
					maxgpulevel = "0"
					MinAnimTime = "5"
					mincpulevel = "0"
					mingpulevel = "0"
					model = "models/props_swamp/parachute01.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					targetname = "manacat_parachute"
					updatechildren = "0"
					origin = Vector( 22.443, -5.68513, 169.591 )
				}
			}
			parachute_bag2 = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
					angles = Vector( -24.5, 180, 0 )
					body = "0"
					disablereceiveshadows = "0"
					ExplodeDamage = "0"
					ExplodeRadius = "0"
					fademindist = "-1"
					fadescale = "1"
					glowbackfacemult = "1.0"
					glowcolor = "0 0 0"
					glowrange = "0"
					glowstate = "0"
					MaxAnimTime = "10"
					MinAnimTime = "5"
					model = "models/props_swamp/parachute_bag01.mdl"
					PerformanceMode = "0"
					pressuredelay = "0"
					RandomAnimation = "0"
					renderamt = "255"
					rendercolor = "255 255 255"
					renderfx = "0"
					rendermode = "0"
					SetBodyGroup = "0"
					skin = "0"
					solid = "0"
					spawnflags = "0"
					StartDisabled = "0"
					targetname = "manacat_parachute_bag2"
					updatechildren = "0"
					origin = Vector( -3.88911, -4.29153e-006, 50.0796 )
				}
			}
			/*parachute_items = 
			{
				SpawnInfo =
				{
					classname = "weapon_pipe_bomb_spawn"
					angles = Vector( 0, 251.5, 23.5 )
					body = "0"
					count = "1"
					disableshadows = "0"
					skin = "0"
					solid = "6"
					spawnflags = "2"
					targetname = "manacat_parachute_items"
					weaponskin = "-1"
					origin = Vector( -2.362, 9.20654, 37.0796 )
				}
			}
			parachute_remarkable = 
			{
				SpawnInfo =
				{
					classname = "info_remarkable"
					contextsubject = "c3m2_parachutist"
					origin = Vector( 1.29, 0.56, -10.79 )
					targetname = "manacat_parachute_remarkable"
				}
			}*/
		} // SpawnTables
	} // EntityGroup
}

RegisterEntityGroup( "Obj", Obj )
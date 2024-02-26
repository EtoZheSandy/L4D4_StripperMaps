LvObj <-
{
	//-------------------------------------------------------
	// Required Interface functions
	//-------------------------------------------------------
	function GetPrecacheList()
	{
		local precacheModels =
		[
			EntityGroup.SpawnTables.Level_ceda_trailer,
		]
		return precacheModels
	}

	//-------------------------------------------------------
	function GetSpawnList()
	{
		local spawnEnts =
		[
			EntityGroup.SpawnTables.Level_ceda_trailer,
			EntityGroup.SpawnTables.Level_ceda_trailer_block0,
			EntityGroup.SpawnTables.Level_ceda_trailer_block1,
			EntityGroup.SpawnTables.Level_ceda_trailer_block2,
			EntityGroup.SpawnTables.Level_ceda_trailer_block3,
			EntityGroup.SpawnTables.Level_ceda_trailer_block4,
			EntityGroup.SpawnTables.Level_ceda_trailer_block5,
			EntityGroup.SpawnTables.Level_ceda_trailer_block6,
			EntityGroup.SpawnTables.Level_ceda_trailer_block7,
			EntityGroup.SpawnTables.Level_ceda_trailer_navblock,
			EntityGroup.SpawnTables.Level_worldOut,
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
			Level_ceda_trailer_navblock =
			{//아래
				SpawnInfo =
				{
					classname = "script_nav_blocker"
					extent = Vector(270, 10, 20)
					solid = "2"
					targetName = "Level_ceda_trailer_navblock"
					parentname = "Level_ceda_trailer"
					origin = Vector(0, 0, 0)
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
							cmd1 = "Level_ceda_trailer_navblockBlockNav0-1"
							cmd3 = "Level_worldOutKill0-1"
						}
					}
				}
			}
			Level_ceda_trailer_block7 =
			{//아래
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					mins = Vector( -318.8, -65.1, 11 )
					boxmins = Vector( -318.8, -65.1, 11 )
					maxs = Vector( 124.6, 65.1, 57 )
					boxmaxs = Vector( 124.6, 65.1, 57 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block5 =
			{//지붕 구조물
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					mins = Vector( 164.9, -11.4, 100 )
					boxmins = Vector( 164.9, -11.4, 100 )
					maxs = Vector( 196.45, 31.9, 184.63 )
					boxmaxs = Vector( 196.45, 31.9, 184.63 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block6 =
			{//지붕 구조물 빗면
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 153.1, 0, 178.7 )
					angles = Vector( 322, 0, 0 )
					mins = Vector( -100, -11.4, -40 )
					boxmins = Vector( -100, -11.4, -40 )
					maxs = Vector( 12, 31.9, -4 )
					boxmaxs = Vector( 12, 31.9, -4 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block3 =
			{//지붕 구조물
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					mins = Vector( -67.1, -47.5, 100 )
					boxmins = Vector( -67.1, -47.5, 100 )
					maxs = Vector( -35.5, -4, 184.63 )
					boxmaxs = Vector( -35.5, -4, 184.63 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block4 =
			{//지붕 구조물 빗면
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -78.1, 0, 178.6 )
					angles = Vector( 322, 0, 0 )
					mins = Vector( -100, -47.5, -40 )
					boxmins = Vector( -100, -47.5, -40 )
					maxs = Vector( 12, -4, -4 )
					boxmaxs = Vector( 12, -4, -4 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block0 =
			{//지붕
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					mins = Vector( -318.8, -65.1, 56.35 )
					boxmins = Vector( -318.8, -65.1, 56.35 )
					maxs = Vector( 291.1, 65.1, 165.45 )
					boxmaxs = Vector( 291.1, 65.1, 165.45 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block1 =
			{//지붕 높은곳
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( 0, 0, 0 )
					mins = Vector( -318.8, -65.1, 56.35 )
					boxmins = Vector( -318.8, -65.1, 56.35 )
					maxs = Vector( -183.7, 65.1, 177.7 )
					boxmaxs = Vector( -183.7, 65.1, 177.7 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer_block2 =
			{//지붕 빗면
				SpawnInfo =
				{
					classname = "env_physics_blocker"
					origin = Vector( -169.6, 0, 169 )
					angles = Vector( 22, 0, 0 )
					mins = Vector( -18, -65.1, -20 )
					boxmins = Vector( -18, -65.1, -20 )
					maxs = Vector( 18, 65.1, -0.1 )
					boxmaxs = Vector( 18, 65.1, -0.1 )
					initialstate = "1"
					BlockType = "4"
					targetName = "Level_ceda_trailer_block"
					parentname = "Level_ceda_trailer"
				}
			}
			Level_ceda_trailer = 
			{
				SpawnInfo =
				{
					classname = "prop_dynamic"
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
					model = "models/props_vehicles/ceda_trailer_closed.mdl"
					rendercolor = "255 255 255"
					screenspacefade = "0"
					skin = "0"
					solid = "6"
					disableshadows = true
					origin = Vector( 0, 0, 0 )
					targetName = "Level_ceda_trailer"
					lightingorigin = ::info_targetV
				}
			}
		} // SpawnTables
	} // EntityGroup
} // Train

RegisterEntityGroup( "LvObj", LvObj )
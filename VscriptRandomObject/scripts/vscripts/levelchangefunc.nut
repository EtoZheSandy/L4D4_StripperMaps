::mp_gamemode <- Convars.GetStr("mp_gamemode").tolower();

Convars.SetValue("sv_consistency", 0);
Convars.SetValue("sv_pure_kick_clients", 0);

if (!("MANACAT" in getroottable())){
	::MANACAT <-{
	}
}

if(!("objectSpawner" in ::MANACAT)){
	::MANACAT.objectSpawner <- {
		check = false
		ver = "02/04/2024"
	}
	::MANACAT.slot1 <- function(ent){
		local msg = Convars.GetClientConvarValue("cl_language", ent.GetEntityIndex());
		switch(msg){
			case "korean":case "koreana":	msg = "랜덤 오브젝트 생성";	break;
			case "japanese":				msg = "ランダムオブジェクト生成";	break;
			case "spanish":					msg = "Random Object Spawner";	break;
			case "schinese":				msg = "随机事物生成";	break;
			case "tchinese":				msg = "隨機事物生成";	break;
			default:						msg = "Random Object Spawner";	break;
		}
		ClientPrint( ent, 5, "\x02 - "+msg+" \x01 v"+::MANACAT.objectSpawner.ver);
	};
}

printl( "<MANACAT> Object Spawner Loaded. v"+::MANACAT.objectSpawner.ver);

IncludeScript("manacat_object/info");
if (!("manacatInfo" in getroottable())){
	IncludeScript("manacat/info");
}

IncludeScript("manacat_object/manacatTimer");
if (!("manacatTimers" in getroottable())){
	IncludeScript("manacat/manacatTimer");
}

IncludeScript("manacat_object/caralarmTalker");
if (!("CaralarmVocalVars" in getroottable())){
	IncludeScript("manacat/caralarmTalker");
}

IncludeScript("manacat_object/objectTalker");
if (!("objVocalVars" in getroottable())){
	IncludeScript("manacat/objectTalker");
}

IncludeScript("manacat_object/spawn_supply");
if (!("spawn_supply" in getroottable())){
	IncludeScript("manacat/spawn_supply");
}

::entitygroups_obj <- "entitygroups/";
IncludeScript("entitygroups_object/__object");
if ("EG_obj" in getroottable()){
	::entitygroups_obj <- "entitygroups_object/";
}else{
	::entitygroups_obj <- "entitygroups/";
}

IncludeScript("manacat_object/colorSet");
if (!("colorSet" in getroottable())){
	IncludeScript("manacat/colorSet");
}
IncludeScript("manacat_object/alarmSound");
if (!("caralarmRNG" in getroottable())){
	IncludeScript("manacat/alarmSound");
}

::modelskin <- 0
::info_targetV <- ""

::LevelChangeVar <- {
	m_objectlist = {}
	m_objectindex = {}
	m_ladderlist = [] //사다리를 복제 생성할 떄 참조할 리스트
	m_condition = [] //그룹스폰된 조건상태

	createNo = 0
	ladderNo = 0
	clipArray = [] //클립브러쉬 리스트
	spawnArray = [] //스폰되는 모든 엔티티들
	doorlist = {} //클린업 할때 잠금 풀어줄 문 리스트. 세이브는 하지 않는다
	doorlistIndex = -1
	latespawnlist = [] //다 처리한 뒤 마지막으로 천천히 스폰해줄 엔티티 리스트 (엔티티그룹 너무 빨리 스폰하면 스폰이 안 되는 경우가 있음)
	startspawnlist = [] //다 처리한 뒤 마지막으로 천천히 스폰해줄 엔티티 리스트 (엔티티그룹 너무 빨리 스폰하면 스폰이 안 되는 경우가 있음)
	delspawnlist = [] //삭제해줘야 할 엔티티 리스트 (너무 빨리 삭제시 삭제가 안되기 때문에 주기적으로)
	delspawnNow = 0 // 10번 시도함

	damageArea = []//데미지 영역(trigger_hurt 대체)
	jumpArea = []//점프 영역

	sessionData = {}
}
::callLevelChanger <- function(params){
	local allspawn = params["allspawn"];
	if(allspawn != true)allspawn = false;
	::levelChanger();
}
::spawnArray_create <- function(allspawn = false){
	local gamemode = ::LevelChangeFunc.gamemode();
	local activate = false;
	if(gamemode != null)activate = true;
	if(activate)printl("<Object Spawner> Execute object spawn.");
	::MANACAT.objectSpawner.check <- true;

	local objectlist = {};
	local objectindex = {};

	if(::LevelChangeVar.m_objectindex != {})::cleanupObj();

	local map = ::LevelChangeFunc.GetMapName();
	map = map[0];

	IncludeScript("objectspawn/"+map);
	objectlist =	::LevelChangeVar.m_objectlist;
	objectindex =	::LevelChangeVar.m_objectindex;

	if(objectlist.len() == 0){
		printl("<Object Spawner> Load Failed.")
		return;
	}

	::objVocalVars.objList = []
	::objVocalVars.objListLen = 0
	::objVocalVars.chkObj = [];
	::objVocalVars.chkObjLen = 0;

	::LevelChangeVar.spawnArray = [];
	::LevelChangeVar.m_condition = [];
	
	local save = false;
	local per = 4;//1/4 = 25%
	if(gamemode == "versus")per = 2;//1/2 = 50%

	//맵리스트에 현재 플레이중인 맵이 있으면 세이브 있는 걸로 인식
	RestoreTable("objspawn", ::LevelChangeVar.sessionData);
	if("maps" in ::LevelChangeVar.sessionData){
		local maps = split(::LevelChangeVar.sessionData["maps"], "|");
		local mapslen = maps.len();
		for(local i = 0; i < mapslen; i++){
			if(maps[i] == map){	save = true;	break;	}
		}
	}
	local spawndata = "";

	//세이브가 있을 경우 로드(장대비)(대전)
	if(save && activate){
		spawndata = split(::LevelChangeVar.sessionData[map], "|");
		local spawndatalen = spawndata.len();
	//	printl("["+spawndata[0]+"]");

		spawndata[0] = split(spawndata[0], " ");
		if(spawndatalen > 1){
		//	printl("["+spawndata[1]+"]");
			spawndata[1] = split(spawndata[1], " ");
			local spawnlen = spawndata[1].len();
			for(local i = 0; i < spawnlen; i++){
				try{
					spawndata[1][i] = split(spawndata[1][i], "-");
				}catch(e){
				}
			}
			objectindex = spawndata[1];
		}

		local spawnlen = spawndata[0].len();
		if(spawnlen != 0 && spawndata[0][0] != "X"){
			for(local i = 0; i < spawnlen; i++){
				local tgObj = spawndata[0][i].tointeger();
				::LevelChangeVar.spawnArray.append([objectlist[0][(tgObj*6)+1],
									objectlist[0][(tgObj*6)+2],
									objectlist[0][(tgObj*6)+3],
									objectlist[0][(tgObj*6)+4],
									objectlist[0][(tgObj*6)+5]]);
			}
		}
	}else{
		local arraylen = (objectlist[0].len()/6);
		if(arraylen != 0){
			local existObj = false;
			if(activate){
				for(local i = 0; i < arraylen; i++){
					if(objectlist[0][i*6] == true || RandomInt(1,per) == 1 || allspawn){
						::LevelChangeVar.spawnArray.append([objectlist[0][(i*6)+1],
											objectlist[0][(i*6)+2],
											objectlist[0][(i*6)+3],
											objectlist[0][(i*6)+4],
											objectlist[0][(i*6)+5]]);
						spawndata += i+" ";
						existObj = true;
					}
				}
			}else{
				for(local i = 0; i < arraylen; i++){
					if(objectlist[0][(i*6)+3].find("//void") != null){
						::LevelChangeVar.spawnArray.append([objectlist[0][(i*6)+1],
											objectlist[0][(i*6)+2],
											objectlist[0][(i*6)+3],
											objectlist[0][(i*6)+4],
											objectlist[0][(i*6)+5]]);
					}
				}
			}
			if(!existObj)spawndata += "X ";
		}else{
			spawndata += "X ";
		}
	}

	spawndata += "|";
	local objgrplen = objectlist.len();
	for(local i = 1; i < objgrplen; i++){
		local objlen = objectindex[i-1].len();
		if(objlen != null){
			local indexarray = [];
			local empty = true;
			if(save && activate){
				for(local j = 0; j < objlen; j++){
					empty = false;
					indexarray.append(objectindex[i-1][j].tointeger());
					spawndata += objectindex[i-1][j].tointeger()+"-";
				}
				if(empty == true)	spawndata += "0-";
			}else{
				local key = RandomInt(1,objlen);
				try{
					if(objectindex[i-1][key-1].len() != null){ //배열 다종
						for(local j = objectindex[i-1][key-1][0]; j <= objectindex[i-1][key-1][1]; j++){
							if(RandomInt(1,2) == 1){
								empty = false;
								indexarray.append((key*100)+j);
								spawndata += ((key*100)+j)+"-";
							}
						}
						if(empty == true)	spawndata += "0-";
					}
				}catch(e){ //랜덤 1종
					indexarray.append((key*100)+objectindex[i-1][key-1]);
					spawndata += ((key*100)+objectindex[i-1][key-1])+"-";
				}
			}
			spawndata += " ";
			local cancel = false;	local objectlistlen = objectlist[i].len();	local indexarraylen = indexarray.len();
			for(local j = 0; j < objectlistlen; j++){
				for(local k = 0; k < indexarraylen; k++){
					if(objectlist[i][j] == indexarray[k] && objectlist[i][j+3] == "cancel" && !allspawn)cancel = true;
				}
			}
			if(!cancel){
				if(activate){
					for(local j = 0; j < objectlistlen; j+=6){
						for(local k = 0; k < indexarraylen; k++){
							if(objectlist[i][j] == indexarray[k] || objectlist[i][j] == k*100 || allspawn){
								if((objectlist[i][j+3].slice(0, 4).tostring() == "vsp_" || objectlist[i][j+3].slice(0, 4).tostring() == "vsb_") && gamemode == "versus" && !allspawn)continue;// vsp_ <- 대전에서는 확률상 걸려도 취소
									::LevelChangeVar.spawnArray.append([objectlist[i][j+1],
														objectlist[i][j+2],
														objectlist[i][j+3],
														objectlist[i][j+4],
														objectlist[i][j+5]]);
							}
						}
					}
					for(local j = 0; j < objectlistlen; j+=6){
						if(!allspawn){
							if(objectlist[i][j+3].slice(0, 4).tostring() == "vsb_" && gamemode == "versus"){//vsb <- 대전에서 무조건
								::LevelChangeVar.spawnArray.append([objectlist[i][j+1],
													objectlist[i][j+2],
													objectlist[i][j+3],
													objectlist[i][j+4],
													objectlist[i][j+5]]);
							}
						}
					}
					for(local j = 0; j < objectlistlen; j+=6){
						if(objectlist[i][j] < 0){
							cancel = false;
							for(local k = 0; k < indexarraylen; k++){
								if(objectlist[i][j]*-1 == indexarray[k])	cancel = true;
							}
							if(!cancel){
								::LevelChangeVar.spawnArray.append([objectlist[i][j+1],
													objectlist[i][j+2],
													objectlist[i][j+3],
													objectlist[i][j+4],
													objectlist[i][j+5]]);
							}
						}
					}
				}else{
					for(local j = 0; j < objectlistlen; j+=6){
						if(objectlist[i][j+3].find("//void") != null){
							::LevelChangeVar.spawnArray.append([objectlist[i][j+1],
													objectlist[i][j+2],
													objectlist[i][j+3],
													objectlist[i][j+4],
													objectlist[i][j+5]]);
						}
					}
				}
			}
		}
	}

	local spawnArrayLen = ::LevelChangeVar.spawnArray.len();
	for(local i = 0; i < spawnArrayLen; i++){
		::spawnObj_pre(::LevelChangeVar.spawnArray[i][0],
						::LevelChangeVar.spawnArray[i][1],
						::LevelChangeVar.spawnArray[i][2],
						::LevelChangeVar.spawnArray[i][3],
						::LevelChangeVar.spawnArray[i][4]);
	}

	if(!save){
		//맵 스폰정보 저장
		::LevelChangeVar.sessionData[map] <- spawndata;
	
		//맵 이름도 맵 리스트에 저장
		if("maps" in ::LevelChangeVar.sessionData)map = ::LevelChangeVar.sessionData["maps"]+"|"+map;
		::LevelChangeVar.sessionData["maps"] <- map;
	}//else{												printl("배열 복원 : "+::LevelChangeVar.sessionData[map]);	}
	SaveTable("objspawn", ::LevelChangeVar.sessionData);

	if(::LevelChangeFunc.debug && "maps" in ::LevelChangeVar.sessionData){
		local maps = split(::LevelChangeVar.sessionData["maps"], "|");
		local mapslen = maps.len();
		printl("<Object Spawner> Map List");
		printl("---------------");
		for(local i = 0; i < mapslen; i++){
			printl(maps[i])
			if(maps[i] in ::LevelChangeVar.sessionData)printl(::LevelChangeVar.sessionData[maps[i]])
		}
		printl("---------------");
	}
}
::levelChanger <- function(){
	::LevelChangeFunc.clipArray_create();
	local spawnArrayLen = ::LevelChangeVar.spawnArray.len();
	for(local i = 0; i < spawnArrayLen; i++){
		if(::LevelChangeVar.spawnArray[i][2].find("del_") != null){
			::delObj(::LevelChangeVar.spawnArray[i][0],
					::LevelChangeVar.spawnArray[i][1],
					::LevelChangeVar.spawnArray[i][2],
					::LevelChangeVar.spawnArray[i][3],
					::LevelChangeVar.spawnArray[i][4]);
		}
	}
	::delspawn({afterStart = false});
	for(local i = 0; i < spawnArrayLen; i++){
		if(::LevelChangeVar.spawnArray[i][2].find("del_") == null){
			::spawnObj(::LevelChangeVar.spawnArray[i][0],
						::LevelChangeVar.spawnArray[i][1],
						::LevelChangeVar.spawnArray[i][2],
						::LevelChangeVar.spawnArray[i][3],
						::LevelChangeVar.spawnArray[i][4]);
		}
	}

	::manacatAddTimer(0.1, false, ::latespawn, { });
	::LevelChangeVar.delspawnNow = 0;
	//::manacatAddTimer(0.1, false, ::delspawn, { });
	::manacatAddTimerByName("levelChange_dmgfield", 0.1, true, ::dmgfield);
	::manacatAddTimerByName("levelChange_jumpfield", 0.1, true, ::jumpfield);

	/*
	local maps = split(::LevelChangeVar.sessionData["maps"], "|");
	local mapslen = maps.len();
	for(local i = 0; i < mapslen; i++){
		printl("["+maps[i]+"]\n"+::LevelChangeVar.sessionData[maps[i]]);
	}//*/
	//if("carController" in ::MANACAT)if(::MANACAT.carController.check == false)::carChanger();
}

::dmgfield<-function(params){
	local ent = null;	local len = ::LevelChangeVar.damageArea.len();
	if(len == 0)return;
	while ( ent = Entities.FindByClassname(ent, "player") ){
		if(ent != null && ent.IsValid() && NetProps.GetPropInt( ent, "m_iTeamNum" ) == 2){
			local ori = ent.GetOrigin();
			for(local i = 0; i < len; i++){
				if(::LevelChangeVar.damageArea[i][1].x <= ori.x && ori.x <= ::LevelChangeVar.damageArea[i][2].x
				&& ::LevelChangeVar.damageArea[i][1].y <= ori.y && ori.y <= ::LevelChangeVar.damageArea[i][2].y
				&& ::LevelChangeVar.damageArea[i][1].z <= ori.z && ori.z <= ::LevelChangeVar.damageArea[i][2].z){
					ent.TakeDamage(::LevelChangeVar.damageArea[i][3], 128, null);
				}
			}
		}
	}
}

::jumpfield<-function(params){
	local ent = null;	local len = ::LevelChangeVar.jumpArea.len();
	if(len == 0)return;
	while ( ent = Entities.FindByClassname(ent, "player") ){
		if(ent != null && ent.IsValid()){
			if(!IsPlayerABot(ent))continue;
			local ori = ent.GetOrigin();
			for(local i = 0; i < len; i++){
				if(::LevelChangeVar.jumpArea[i][1].x <= ori.x && ori.x <= ::LevelChangeVar.jumpArea[i][2].x
				&& ::LevelChangeVar.jumpArea[i][1].y <= ori.y && ori.y <= ::LevelChangeVar.jumpArea[i][2].y
				&& ::LevelChangeVar.jumpArea[i][1].z <= ori.z && ori.z <= ::LevelChangeVar.jumpArea[i][2].z){
					if(!((NetProps.GetPropInt( ent, "m_nButtons") & 2) == 2)){
						local key = (NetProps.GetPropInt( ent, "m_afButtonForced") | 2);
						NetProps.SetPropInt( ent, "m_afButtonForced", key.tointeger());
						EntFire( "worldspawn", "RunScriptCode", "g_ModeScript.LevelChangeFunc.areaLeave("+ent.GetPlayerUserId()+", 2)", 0.1 );
					}
				}
			}
		}
	}
}

::cleanupObj<-function(trueclean = true){
	local gamemode = ::LevelChangeFunc.gamemode();
	if(gamemode != "versus"){
		RestoreTable("objspawn", ::LevelChangeVar.sessionData);
		if("maps" in ::LevelChangeVar.sessionData){
			local maparray = "";
			local map = ::LevelChangeFunc.GetMapName();
			local maps = split(::LevelChangeVar.sessionData["maps"], "|");
			local mapslen = maps.len();
			for(local i = 0; i < mapslen; i++){
				if(maps[i] != map[1])maparray += maps[i]+"|";
			}
			local maparraylen = maparray.len()-1;
			if(maparraylen > 0 && maparray[maparraylen].tochar() == "|")maparray = maparray.slice(0, maparraylen);
			::LevelChangeVar.sessionData["maps"] <- maparray;
			::LevelChangeVar.sessionData.rawdelete(map[1]);
		}
		SaveTable("objspawn", ::LevelChangeVar.sessionData);
	}
	if(!trueclean)return;
	local ent = null;
	::LevelChangeVar.latespawnlist = [];
	::LevelChangeVar.startspawnlist = [];
	::LevelChangeVar.m_objectlist = {};
	::LevelChangeVar.m_objectindex = {};
	::LevelChangeVar.damageArea = [];
	::LevelChangeVar.jumpArea = [];
	while ( ent = Entities.FindByName(ent, "levelChange*") ){
		if(ent.IsValid)ent.Kill();
	}
	while ( ent = Entities.FindByName(ent, "_*_Level_*") ){
		if(ent.IsValid)ent.Kill();
	}
	while ( ent = Entities.FindByName(ent, "Level_*") ){
		if(ent.IsValid)ent.Kill();
	}
	while ( ent = Entities.FindByClassname(ent, "prop_door_rotating"))
	{
		if(ent.IsValid()){
			for(local i = 0; i < ::LevelChangeVar.doorlistIndex; i++){
				if(ent == ::LevelChangeVar.doorlist[i]){
					DoEntFire("!self", "setBreakable", "", 0.0, null, ent);
					DoEntFire("!self", "unlock", "", 0.0, null, ent);
				}
			}
		}
	}
}

::latespawn<-function(params){
	local len = ::LevelChangeVar.latespawnlist.len();
	if(len > 0){
		for(local i = 0; i < len; i++){
			::spawnObj(::LevelChangeVar.latespawnlist[i][0],
						::LevelChangeVar.latespawnlist[i][1],
						::LevelChangeVar.latespawnlist[i][2],
						::LevelChangeVar.latespawnlist[i][3],
						::LevelChangeVar.latespawnlist[i][4]);
		}
	}
	return;
}

::startspawn<-function(params){
	local len = ::LevelChangeVar.startspawnlist.len();
	if(len > 0){
		for(local i = 0; i < len; i++){
			::spawnObj(::LevelChangeVar.startspawnlist[i][0],
						::LevelChangeVar.startspawnlist[i][1],
						::LevelChangeVar.startspawnlist[i][2],
						::LevelChangeVar.startspawnlist[i][3],
						::LevelChangeVar.startspawnlist[i][4]);
		}
	}
	return;
}

::delspawn<-function(params){
	/*if(Director.GetCommonInfectedCount() == 0 && Time() < 10){//필드 잡좀이 0마리면 준비가 안 된 것
		printl("<Object Spawner> Remove delayed.");
		::manacatAddTimer(0.1, false, ::delspawn, params);
		return;
	}*/
	local deltg = 0;
	local dellen = ::LevelChangeVar.delspawnlist.len();
	if(dellen > 0){
		for(local i = 0; i < dellen; i++){
			local obj = ::LevelChangeVar.delspawnlist[i][1];
			if((obj != "needfind" && obj != "del_etc") && (obj == null || !obj.IsValid()))continue;
			if(::LevelChangeVar.delspawnlist[i][0] == "models/rescue"
			|| ::LevelChangeVar.delspawnlist[i][0] == "models/brush"){
				if(obj != null && obj.IsValid()){
					obj.Kill();
					deltg++;
				}
			}else if(::LevelChangeVar.delspawnlist[i][0] == "models/navblock"){
				if(obj == "needfind"){
					obj = ::findClip("func_nav_blocker", ::LevelChangeVar.delspawnlist[i][2], ::LevelChangeVar.delspawnlist[i][3]);
					if(obj != null)obj = obj[0];
				}
				if(obj != null && obj.IsValid()){
					DoEntFire("!self", "UnblockNav", "", 0.0, null, obj);
					obj.Kill();
					deltg++;
				}
			}else if(::LevelChangeVar.delspawnlist[i][0] == "models/clip"
			|| ::LevelChangeVar.delspawnlist[i][0] == "models/hurt"
			|| ::LevelChangeVar.delspawnlist[i][0] == "models/hurt_ghost"){
				if(obj == "needfind"){
					obj = ::findClip("any", ::LevelChangeVar.delspawnlist[i][2], ::LevelChangeVar.delspawnlist[i][3]);
					if(obj != null)obj = obj[0];
				}
				if(obj != null && obj.IsValid()){
					obj.Kill();
					deltg++;
				}
				continue;
			}else if(::LevelChangeVar.delspawnlist[i][0] == "models/health_cabinet"){
				::LevelChangeVar.delspawnlist[i][2] += Vector(0, 0, 38);//캐비닛은 실제보다 좌표 위에 떠있음
				obj = null;
				local tgclassname = ["prop_health_cabinet", "weapon_first_aid_kit_spawn", "weapon_pain_pills_spawn"];
				for(local j = 0; j < 3; j++){
					while (obj = Entities.FindByClassname(obj, tgclassname[j])){
						if(obj != null && obj.IsValid()){
							if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 40){
								obj.Kill();
								deltg++;
							}
						}
					}
				}
			}else if(::LevelChangeVar.delspawnlist[i][0] == "models/item"){
				obj = null;
				local tgclassname = ["weapon_first_aid_kit_spawn", "weapon_pain_pills_spawn", "weapon_adrenaline_spawn", "weapon_pipe_bomb_spawn", "weapon_molotov_spawn", "weapon_vomitjar_spawn"];
				for(local j = 0; j < 3; j++){
					while (obj = Entities.FindByClassname(obj, tgclassname[j])){
						if(obj != null && obj.IsValid()){
							if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 40){
								obj.Kill();
								deltg++;
							}
						}
					}
				}
			}else if(::LevelChangeVar.delspawnlist[i][0] == "damage_prop"){
				if(obj != null && obj.IsValid()){
					if(obj.GetHealth() == ::LevelChangeVar.delspawnlist[i][3]){
						obj.TakeDamage( ::LevelChangeVar.delspawnlist[i][3] , 0 , null );
						deltg++;
					}
				}
			}else if(::LevelChangeVar.delspawnlist[i][0] == "damage_door"){
				if(obj != null && obj.IsValid()){
					if(obj.GetHealth() == 1000){
						obj.TakeDamage( ::LevelChangeVar.delspawnlist[i][3] , 0 , null );
						deltg++;
					}
				}
			}else if(::LevelChangeVar.delspawnlist[i][0] == "models/caralarm"){
				obj = null;
				while (obj = Entities.FindByClassname(obj, "prop_car_alarm")){
					if(obj != null && obj.IsValid()){
						if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 40){
							obj.Kill();
							deltg++;
						}
					}
				}
			}else if(obj == "del_etc"){
				obj = null;
				while (obj = Entities.FindByClassname(obj, "prop_physics")){
					if(obj != null && obj.IsValid()){
						if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 40 && obj.GetModelName() == ::LevelChangeVar.delspawnlist[i][0]){
							obj.Kill();
							deltg++;
						}
					}
				}
				obj = null;
				while (obj = Entities.FindByClassname(obj, "prop_car_alarm")){
					if(obj != null && obj.IsValid()){
						if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 40){
							obj.Kill();
							deltg++;
						}
					}
				}
				obj = null;
				while (obj = Entities.FindByClassname(obj, "prop_dynamic")){
					if(obj != null && obj.IsValid()){
						if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 40 && obj.GetModelName() == ::LevelChangeVar.delspawnlist[i][0]){
							obj.Kill();
							deltg++;
						}
					}
				}
				obj = null;
				while (obj = Entities.FindByClassname(obj, "prop_door_rotating")){
					if(obj != null && obj.IsValid()){
						if((obj.GetOrigin() - ::LevelChangeVar.delspawnlist[i][2]).Length() < 2 && obj.GetModelName() == ::LevelChangeVar.delspawnlist[i][0] && obj.GetName().find("Level_") == null && obj.GetName().find("levelChange") == null){
							obj.Kill();
							deltg++;
						}
					}
				}
			}
		}
	}
	if(deltg != 0 || ::LevelChangeVar.delspawnNow < 40){
		::LevelChangeVar.delspawnNow++;
	//	::manacatAddTimer(1, false, ::delspawn, { });
	}
}
::delObj<-function(visible, proptype, modelName, vecV, angV){
	local headKey = modelName.slice(0, 4).tostring();
	local afterStart = false;
	if(headKey == "sta_"){
		afterStart = true;
		modelName = modelName.slice(4).tostring();
	}
	headKey = modelName.slice(0, 4).tostring();
	if(headKey == "del_"){
		modelName = "models/"+modelName.slice(4).tostring();
		local obj = null;
		local objclassname = "";
		local process = 0;
		if(modelName == "models/rescue"){
			process = 1;	objclassname = "info_survivor_rescue";
		}else if(modelName == "models/navblock"){
			process = 2;	objclassname = "func_nav_blocker";
		}else if(modelName == "models/clip"){
			process = 2;	objclassname = "any";
		}else if(modelName == "models/hurt"){
			process = 2;	objclassname = "trigger_hurt";
		}else if(modelName == "models/hurt_ghost"){
			process = 2;	objclassname = "trigger_hurt_ghost";
		}else if(modelName == "models/brush"){
			process = 3;	objclassname = "func_brush";
		}

		if(process == 1){
			while (obj = Entities.FindByClassname(obj, objclassname)){
				if(obj != null && obj.IsValid()){
					if((NetProps.GetPropVector( obj, "m_vecOrigin" ) - vecV).Length() < 40){
						::LevelChangeVar.delspawnlist.append([modelName, obj, vecV, angV, afterStart]);
						return;
					}
				}
			}
			return;
		}else if(process == 2){
			local clip = ::findClip(objclassname, vecV, angV);
			if(clip != null){
				::LevelChangeVar.delspawnlist.append([modelName, clip[0], vecV, angV, afterStart]);
				return;
			}else{
				::LevelChangeVar.delspawnlist.append([modelName, "needfind", vecV, angV, afterStart]);
				return;
			}
		}else if(process == 3){
			local brush = ::findBrush(vecV);
			if(brush != null && brush.IsValid())::LevelChangeVar.delspawnlist.append([modelName, brush, vecV, angV, afterStart]);
			return;
		}
		::LevelChangeVar.delspawnlist.append([modelName, "del_etc", vecV, angV, afterStart]);

		return;
	}
}
::spawnObj_pre<-function(visible, proptype, modelName, vecV, angV){
	if(modelName.find("lad_") != null || modelName.find("lao_") != null){
		::spawnObj(visible, proptype, modelName, vecV, angV);
	}
}
::spawnObj<-function(visible, proptype, modelName, vecV, angV){
	if(angV == "X")angV = Vector(0, 0, 0);
	local rendmode = "0";
	local rendamt = "255";
	local noshadows = true;
	local overlap = false;//같은 위치에 뭐가 있을 경우 기본적으로는 스폰 취소되는데, 무시하고 그냥 스폰할 것인지
	local noreshadows = "false";
	local noflash = "false";
	::modelskin <- 0;
	::modelName <- "";
	::modelHealth <- 0;
	local model2 = ""; // (위치고정일 때) 차량인 경우 유리도 같은 위치에 스폰해줘야 해서 (위치 고정이 아니면 정의된 엔티티그룹으로 스폰)
	local model3 = ""; // (위치고정일 때) 경찰차의 경우 라이트 바가 존재함
	local model3skin = "";
	::modelcolor <- "255 255 255";
	::modeleffect <- "0";
	::info_targetV <- "";//조명원점
	local breakable = false;
	if(visible == false){//안보인다
		rendmode = "1";
		rendamt = "0";
		/*noshadows = "true";
		noreshadows = "true";
		noflash = "true";*/
	}

	local obj = null;

	local carEntityGroup = null;
	local solidtype = "6";
	local ptype = "prop_dynamic";
	local flagtype = "1";
	local fixAng = false;

	local obstacle = "0"; //봇이 회피해야 한다고 인식하는 장애물, 1일때 회피

	//블로커 용도
	local boxmin = null;
	local boxmax = null;
	local BType = "1";
	if(visible == true || visible == false)visible = 1; //높이 배율로 사용

	//사다리
	local ladderType = 2;//좀비

	local objName = "levelChange"+::LevelChangeVar.createNo;
	::LevelChangeVar.createNo++;

	if(modelName == "cancel")return;
	if(modelName.find("//void") != null)modelName = modelName.slice(0, modelName.len()-6);

	local headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "vsb_" : case "vsp_" :
			modelName = modelName.slice(4).tostring();
		break;
		case "vso_" : // vso_ <- 대전에서만
			if(::mp_gamemode != "versus" && ::mp_gamemode != "mutation12")return;
			modelName = modelName.slice(4).tostring();
		break;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "coc_" ://조건 체크
			local condition = modelName.slice(4).tostring();
			local cons = condition.find("|");
			modelName = condition.slice(cons+1).tostring();
			cons = condition.slice(0, cons).tostring();
			cons = split(cons, "+");
			local len = cons.len();
			local len2 = ::LevelChangeVar.m_condition.len();
			for(local c = 0; c < len; c++){
				local match = false;
				for(local d = 0; d < len2; d++){
					if(cons[c] == ::LevelChangeVar.m_condition[d]){
						match = true;	break;
					}
				}
				if(!match){	//printl("스폰 조건이 일치하지 않음");
					return;
				}/*else{	printl("스폰 조건 일치 : "+modelName);	}//*/
			}
		break;
		case "coe_" ://조건 배제
			local condition = modelName.slice(4).tostring();
			local cons = condition.find("|");
			modelName = condition.slice(cons+1).tostring();
			cons = condition.slice(0, cons).tostring();
			cons = split(cons, "+");
			local len = cons.len();
			local len2 = ::LevelChangeVar.m_condition.len();
			for(local c = 0; c < len; c++){
				local match = false;
				for(local d = 0; d < len2; d++){
					if(cons[c] == ::LevelChangeVar.m_condition[d]){
						match = true;	break;
					}
				}
				if(match){	//printl("배제할 스폰 조건이 일치함");
					return;
				}/*else{	printl("스폰 조건 배제 : "+modelName);	}//*/
			}
		break;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "con_" ://조건 추가
			local condition = modelName.slice(4).tostring();
			local len = ::LevelChangeVar.m_condition.len();
			for(local c = 0; c < len; c++){
				if(::LevelChangeVar.m_condition[c] == condition)return;
			}
			::LevelChangeVar.m_condition.append(condition);
			return;
		break;
		case "lap_" :
			modelName = modelName.slice(4).tostring();
			overlap = true;
		break;
		case "nav_" :
			modelName = modelName.slice(4).tostring();
			local extentbox = Vector(4, 4, 30);
			obstacle = "1";
			vecV.z -= 10;
			obj = SpawnEntityFromTable("script_nav_blocker",
			{
				extent = extentbox
				targetname = objName
				origin = vecV
				angles = Vector( 0, 0, 0 )
				solid = "2"
				affectsFlow = "1"
				teamToBlock = "-1"
				StartDisabled = "1"
			});
			DoEntFire("!self", "BlockNav", "", 0.0, null, obj);
			vecV.z += 10;
		break;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "rag_" :
			modelName = modelName.slice(4).tostring();
			solidtype = "0";
			flagtype = "4";
			ptype = "prop_ragdoll";
		break;
		case "imi_" :
			modelName = modelName.slice(4).tostring();
			solidtype = "5";
		break;
		case "deb_" :
			modelName = modelName.slice(4).tostring();
			flagtype = "260";
			ptype = "prop_physics";
		break;
		case "wea_" :
			modelName = modelName.slice(4).tostring();
			flagtype = "260";
			ptype = "weapon_";
		break;
		case "par_" :
			modelName = modelName.slice(4).tostring();
			local particle = SpawnEntityFromTable( "info_particle_system",
			{
				effect_name = modelName
				origin = vecV
				angles = angV
				start_active = "1"
				fademaxdist = "3250"
				fademindist = "3050"
				targetname = "Level_particle"
			});
		return;
		case "bre_" : //부술 수 있는 문, 오브젝트
			modelName = modelName.slice(4).tostring();
			breakable = true;
		break;
		case "ldq_" ://logic_director_query
			modelName = modelName.slice(4).tostring();
			while (obj = Entities.FindByClassname(obj, "logic_director_query")){
				if(obj.IsValid() && obj.GetName() == modelName){
					//벡터의 x값으로 Min, Max Anger 조절
					obj.__KeyValueFromInt("maxAngerRange", vecV.x);
					obj.__KeyValueFromInt("minAngerRange", vecV.x);
					//printl("logic_director_query ["+modelName+"] : " +vecV.x);
				}
			}
		return;
		case "rem_" ://remark - 언급 지점 추가
			modelName = modelName.slice(4).tostring();
			local remarkName = modelName.find("_");
			remarkName = modelName.slice(0, remarkName).tostring();
			modelName = modelName.slice(remarkName.len()+1).tostring();
			::objVocalVars.objList.append([remarkName, vecV, modelName]);
			::objVocalVars.objListLen++;
		return;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "dec_" :
			modelName = modelName.slice(4).tostring();
			local decal = SpawnEntityFromTable( "info_projecteddecal",
			{
				texture = modelName
				origin = vecV
				angles = angV
			});
			DoEntFire("!self", "Activate", "", 1.0, null, decal);
			return;
		break;
		case "cor_" :
			modelName = modelName.slice(4).tostring();
			::modelcolor = modelName.slice(0,3).tostring()+" "+modelName.slice(3,6).tostring()+" "+modelName.slice(6,9).tostring();
			modelName = modelName.slice(9).tostring();
		break;
		case "tra_" :
			modelName = modelName.slice(4).tostring();
			::modeleffect = "32";
		break;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "sk1_" :case "sk2_" :case "sk3_" :case "sk4_" :case "sk5_" :case "sk6_" :
			::modelskin <- modelName.slice(2,3).tointeger();
			modelName = modelName.slice(4).tostring();
		break;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "sur_" :
			modelName = modelName.slice(4).tostring();
			BType = "1";
			ladderType = 0;
		break;
		case "zsi_" :
			modelName = modelName.slice(4).tostring();
			BType = "2";
		break;
		case "pla_" :
			modelName = modelName.slice(4).tostring();
			BType = "3.5";
		break;
		case "zom_" :
			modelName = modelName.slice(4).tostring();
			BType = "3";
		break;
		case "all_" :
			modelName = modelName.slice(4).tostring();
			BType = "4";
		break;
		case "fix_" :
			modelName = modelName.slice(4).tostring();
			fixAng = true;
		break;
		case "hol_" :
			modelName = modelName.slice(4).tostring();
			flagtype = "264";
		break;
		case "sha_" :
			modelName = modelName.slice(4).tostring();
			noshadows = false;
		break;
		case "noc_" :
			modelName = modelName.slice(4).tostring();
			solidtype = "4";
		break;
		case "dmg_" :
			modelName = "models/"+modelName.slice(4).tostring();
			while (obj = Entities.FindByClassname(obj, "prop_physics")){
				if(obj.IsValid()){
					if((obj.GetOrigin() - vecV).Length() < 2 && obj.GetModelName() == modelName){
						DoEntFire("!self", "break", "", 0.0, null, obj);
					}
				}
			}
		return;
		case "dmf_" ://func
			while (obj = Entities.FindByClassname(obj, "func_breakable")){
				if(obj.IsValid()){
					if((obj.GetOrigin() - vecV).Length() < 1){
						DoEntFire("!self", "break", "", 0.0, null, obj);
					}
				}
			}
		return;
		case "dmp_" ://prop_physics - 피해량과 내구도가 같아야만 피해를 줌
			modelName = modelName.slice(4).tointeger();
			while (obj = Entities.FindByClassname(obj, "prop_physics")){
				if(obj.IsValid()){
					if((obj.GetOrigin() - vecV).Length() < 1){
						::LevelChangeVar.delspawnlist.append(["damage_prop", obj, vecV, modelName, false]);
					}
				}
			}
		return;
		case "dmd_" ://door
			modelName = modelName.slice(4).tointeger();
			while (obj = Entities.FindByClassname(obj, "prop_door_rotating")){
				if(obj.IsValid()){
					if((obj.GetOrigin() - vecV).Length() < 1){
						::LevelChangeVar.delspawnlist.append(["damage_door", obj, vecV, modelName, false]);
					}
				}
			}
		return;
		case "lao_" ://사다리 복제 원점
			modelName = "levelChange_ladder_origin";
			//if(ladderType != 2)modelName = "levelChange_ladder_origin_surv";
			local newladderOrigin = SpawnEntityFromTable( "prop_dynamic",
			{
				targetname = modelName
				model = "models/props_street/police_barricade.mdl"
				origin = vecV
				angles = angV
				solid = "5"
				rendermode = "1"
				renderamt = "0"
			});
		return;
		case "inf_" ://조명 원점 생성
			modelName = "levelChange_info_target_"+modelName.slice(4).tostring();
			//if(ladderType != 2)modelName = "levelChange_ladder_origin_surv";
			local newladderOrigin = SpawnEntityFromTable( "info_target",
			{
				targetname = modelName
				origin = vecV
			});
		return;
		case "ino_" ://조명 원점 설정
			modelName = modelName.slice(4).tostring();
			local info_target_ori = modelName.find("_");
			info_target_ori = modelName.slice(0, info_target_ori).tostring();
			modelName = modelName.slice(info_target_ori.len()+1).tostring();
			::info_targetV <- "levelChange_info_target_"+info_target_ori;

		//	ClientPrint( null, 5, "[" + ::info_targetV + "]  [" + modelName + "]");
		break;
		case "lgt_" ://light_spot
			modelName = modelName.slice(4).tostring();
			headKey = modelName.slice(0, 2).tostring();
			modelName = modelName.slice(2).tostring();
			obj = null;
			while (obj = Entities.FindByClassname(obj, "light_spot")){
				if(obj.IsValid()){
					if(obj.GetName() == modelName){
						if(headKey == "1_"){
							DoEntFire("!self", "TurnOff", "", 0.0, null, obj);
						}else{
							DoEntFire("!self", "TurnOn", "", 0.0, null, obj);
						}
					}
				}
			}
		return;
		case "sim_" :
			modelName = modelName.slice(4).tostring();
			vecV.z += 100;
			simpleEnt("models/"+modelName+".mdl", objName, vecV, angV);		return;
		case "lat_" :
			modelName = modelName.slice(4).tostring();
			::LevelChangeVar.latespawnlist.append([visible, proptype, modelName, vecV, angV]);
			return;
		case "sta_" :
			modelName = modelName.slice(4).tostring();
			::LevelChangeVar.startspawnlist.append([visible, proptype, modelName, vecV, angV]);
			return;
		break;
	}
	headKey = modelName.slice(0, 4).tostring();
	switch(headKey){
		case "grp_" :
			modelName = modelName.slice(4).tostring();
			headKey = modelName.slice(0,2);
			if(headKey == "p_"){
				::modelName <- modelName.slice(2);
				::modelName <- split(::modelName,":");
				::modelHealth <- 0;
				if(::modelName.len() == 2){
					::modelHealth <- ::modelName[1];
				}
				::modelName <- "models/"+::modelName[0];
				IncludeScript(::entitygroups_obj+"prop_physics_imitation_base", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "Obj" );
			}else if(headKey == "c_"){
				::modelName <- modelName.slice(2);
				::modelName <- split(::modelName,":");
				if(::modelName[2] == "R")::modelName[2] = ::colorSet();
				else	::modelName[2] = "255 255 255";
				::modelName[0] = "models/"+::modelName[0]+".mdl";	::modelName[1] = "models/"+::modelName[1]+".mdl";
				IncludeScript(::entitygroups_obj+"prop_car_base", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "Obj" );
			}else{
				IncludeScript(::entitygroups_obj+"level_"+modelName+"_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "obj_" :
			::modelName <- "models/"+modelName.slice(4).tostring();
			if(::mp_gamemode == "versus" || ::mp_gamemode == "mutation12"){
				IncludeScript(::entitygroups_obj+"prop_physbox_base_vs", g_MapScript);
			}else{
				IncludeScript(::entitygroups_obj+"prop_physbox_base", g_MapScript);
			}
			carEntityGroup = g_MapScript.GetEntityGroup( "Obj" );
			local ent = g_MapScript.SpawnSingleAt( carEntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
			return;
		break;
		case "sup_" :
			modelName = modelName.slice(4).tostring();
			::spawn_supply(modelName, vecV, angV);
			return;
		break;
		case "dor_" :
			modelName = modelName.slice(4).tostring();
			
			local doorinfo = split(modelName, ":");
			local len = doorinfo.len();
			local doorname = "";
			local doorslave = "";
			local doorspawnpos = "0";
			local dooropensound = "";
			local doormovesound = "";
			local doorclosesound = "";
			if(len > 2){
				doorname = "levelChange_"+doorinfo[0].tostring();
				doorslave = "levelChange_"+doorinfo[1].tostring();
				doorspawnpos = doorinfo[2].tostring();
				dooropensound = doorinfo[3].tostring();
				doormovesound = doorinfo[4].tostring();
				doorclosesound = doorinfo[5].tostring();
			}

			modelName = doorinfo[len-1];

			modelName = "models/props_doors/"+modelName+".mdl";
			obj = SpawnEntityFromTable("prop_door_rotating",
			{
				targetname = doorname
				slavename = doorslave
				model = modelName
				origin = vecV
				angles = angV
				CanObstructNav = obstacle
				skin = ::modelskin
				hardware = "1"
				axis = "-1692 -2016 -376.21, -1692 -2016 -376.21"
				body = "0"
				distance = "90"
				fademindist = "-1"
				fadescale = "1"
				forceclosed = "0"
				health = "0"
				returndelay = "-1"
				spawnpos = doorspawnpos
				soundopenoverride = dooropensound
				soundmoveoverride = doormovesound
				soundcloseoverride = doorclosesound
				speed = "200"
				spawnflags = "8192"
				disableshadows = true
				/*,
				disableshadows = noshadows,
				disablereceiveshadows = noreshadows,
				disableflashlight = noflash*/
			});
			if(breakable == true)DoEntFire("!self", "SetBreakable", "", 0.0, null, obj);
		return;
		case "phy_" :
			modelName = modelName.slice(4).tostring();
			local proptype = modelName.slice(0, 1).tostring();
			modelName = modelName.slice(2).tostring();
			switch(proptype){
				case "0":proptype="prop_physics";break;
				case "1":proptype="prop_physics_multiplayer";break;
			}
			local mass = modelName.find("_");
			mass = modelName.slice(0, mass).tostring();
			modelName = modelName.slice(mass.len()+1).tostring();
			local ent = g_ModeScript.CreateSingleSimpleEntityFromTable( {
				classname = "prop_physics_multiplayer",
				targetName = objName,
				model = "models/"+modelName,
				origin = vecV,
				angles = angV,
				massscale = mass
			} );
			if(fixAng == false){angV.x += RandomInt(0,3)*90; angV.y += RandomInt(0,3)*90; angV.z += RandomInt(0,3)*90;}
		return;
		case "lad_" ://사다리 복제 생성
			modelName = modelName.slice(4).tointeger();
			headKey = ::LevelChangeVar.m_ladderlist.len();
			for(local i = 0; i < headKey; i+=4){
				if(::LevelChangeVar.m_ladderlist[i] == modelName){		//printl("사다리 생성"+modelName);
					local ladder = ::findLadder(::LevelChangeVar.m_ladderlist[i+1], ::LevelChangeVar.m_ladderlist[i+2]);

					local vecMax = ladder[1];
					local vecMin = ladder[2];
					//local ori = Vector(-1*((vecMax.x+vecMin.x)/2)+vecV.x,-1*((vecMax.y+vecMin.y)/2)+vecV.y,vecV.z-vecMin.z);
					local ori = Vector(
						-1*((vecMax.x+vecMin.x)/2),
						-1*((vecMax.y+vecMin.y)/2),
						-1*vecMin.z);//(vecV.z-vecMin.z) //vecV.z+(-1*vecMin.z));
					
					local vectorX = ori.x;		local vectorY = ori.y;		local vectorZ = ori.z;

					local angleX = ( angV.z * PI ) / 180;		local angleY = ( angV.x * PI ) / 180;		local angleZ = ( angV.y * PI ) / 180;

					local cosX = cos( angleX );		local cosY = cos( angleY );		local cosZ = cos( angleZ );
					local sinX = sin( angleX );		local sinY = sin( angleY );		local sinZ = sin( angleZ );

					local transformedX = 0;		local transformedY = 0;		local transformedZ = 0;

					transformedY = ( cosX * vectorY ) - ( sinX * vectorZ );
					transformedZ = ( cosX * vectorZ ) + ( sinX * vectorY );
					vectorY = transformedY;
					vectorZ = transformedZ;

					transformedX = ( cosY * vectorX ) + ( sinY * vectorZ );
					transformedZ = ( cosY * vectorZ ) - ( sinY * vectorX );
					vectorX = transformedX;
					vectorZ = transformedZ;

					transformedX = ( cosZ * vectorX ) - ( sinZ * vectorY );
					transformedY = ( cosZ * vectorY ) + ( sinZ * vectorX );
					vectorX = transformedX;
					vectorY = transformedY;

					ori = Vector(vectorX + vecV.x, vectorY + vecV.y, vectorZ + vecV.z);

					while (obj = Entities.FindByClassname(obj, "func_simpleladder")){
						if(obj.IsValid()){
							if((obj.GetOrigin() - ori).Length() < 5){
								return;//이미 그 위치에 사다리가 있음
							}
						}
					}

					local newladder = SpawnEntityFromTable( "func_simpleladder",
					{
						targetname	=	"levelChange_ladder"+::LevelChangeVar.ladderNo,
						model		=	ladder[0].GetModelName(),
						origin		=	ori,
						angles		=	angV,
						team		=	ladderType
					});
				//	printl("오르는 면" + ::LevelChangeVar.m_ladderlist[i+3] );
					local climbVec = Vector(::LevelChangeVar.m_ladderlist[i+3].x, ::LevelChangeVar.m_ladderlist[i+3].y, ::LevelChangeVar.m_ladderlist[i+3].z);//그냥 = ::LevelChangeVar.m_ladderlist[i+3] 으로 대입하면 원래값에 영향을 주더라
					local oriang = atan2(climbVec.y, climbVec.x)//*(180/PI));
				//	printl(cos(angV.y*(PI/180))+","+sin(angV.y*(PI/180))+","+tan(angV.y*(PI/180)));
					climbVec.x = cos(oriang+angV.y*(PI/180));		climbVec.y = sin(oriang+angV.y*(PI/180));
					NetProps.SetPropVector( newladder, "m_climbableNormal", climbVec );

					//if(ladderType == 2){
						EntFire( "levelChange_ladder"+::LevelChangeVar.ladderNo, "SetParent", "levelChange_ladder_origin" );
					//}else{
					//	EntFire( "levelChange_ladder"+::LevelChangeVar.ladderNo, "SetParent", "levelChange_ladder_origin_surv" );
					//}
					
					::LevelChangeVar.ladderNo++;
					return;
				}
			}
		return;
		case "hur_" ://trigger_hurt 대용품
			modelName = modelName.slice(4);

			modelName = modelName.slice(4).tostring();
			local hurt_name = modelName.find("_");
			hurt_name = modelName.slice(0, hurt_name).tostring();
			modelName = modelName.slice(hurt_name.len()+1).tointeger();

			local len = ::LevelChangeVar.damageArea.len();
			local find = false;
			for(local i = 0; i < len; i++){
				if(::LevelChangeVar.damageArea[i][0] == hurt_name)find = true;
			}
			if(!find){
				::LevelChangeVar.damageArea.append([hurt_name, vecV, angV, modelName]);//피해영역 이름, min, max, 피해량
			}
		return;
		case "jum_" ://점프 내비게이션
			modelName = modelName.slice(4);

			local jump_name = modelName.slice(4).tostring();

			local len = ::LevelChangeVar.jumpArea.len();
			local find = false;
			for(local i = 0; i < len; i++){
				if(::LevelChangeVar.jumpArea[i][0] == jump_name)find = true;
			}
			if(!find){
				local vecMins = Vector(angV.x/2*-1, angV.y/2*-1, angV.z/2*-1);
				local vecMaxs = Vector(angV.x/2, angV.y/2, angV.z/2);
				if(::LevelChangeFunc.debug)DebugDrawBoxAngles(vecV, vecMins, vecMaxs, QAngle(0, 0, 0), Vector(255, 0, 255), 64, 60.0);
				::LevelChangeVar.jumpArea.append([jump_name, vecMins+vecV, vecMaxs+vecV]);//점프영역 이름, 좌표, min, max
				
			}
		return;
	}

	if(modelName.find("_") != null){
		headKey = modelName.slice(0, modelName.find("_")).tostring();
		switch(headKey){
			case "guncabinet" :
			case "locker" :
			case "icechest" :
			case "parachute" :
				::LevelChangeVar.latespawnlist.append([visible, proptype, "grp_"+headKey, vecV, angV]);
			break;
		}
	}

	if(ptype == "weapon_melee_spawn"){
	/*	obj = SpawnEntityFromTable(ptype,
		{
			targetname = objName,
			melee_weapon = weaponName,
			model = modelName,
			origin = vecV,
			angles = angV,
			solid = solidtype,
			spawnflags = flagtype
			count = "1"
		});*/
		return;
	}else if(ptype == "weapon_"){
		obj = SpawnEntityFromTable("weapon_"+modelName+"_spawn",
		{
			targetname = objName
			model = modelName
			origin = vecV
			angles = angV
			solid = "6"
			spawnflags = "2"
			weaponskin = ::modelskin
			count = "1"
		});
		return;
	}

	switch(modelName){
		case "ammo" :
			obj = SpawnEntityFromTable("weapon_ammo_spawn",
			{
				targetname = objName
				model = "models/props/terror/ammo_stack.mdl"
				origin = vecV
				angles = angV
				solid = "6"
				spawnflags = "0"
			});
			return;
		break;
		case "caralarm" :
			IncludeScript(::entitygroups_obj+"manacat_alarmcar95sedan_group", g_MapScript);
			carEntityGroup = g_MapScript.GetEntityGroup( "Obj" );
		break;
		case "rescue" :
			obj = SpawnEntityFromTable("info_survivor_rescue",
			{
				targetname = objName
				rescueEyePos = "rescueEyePos"
				angles = angV
				origin = vecV
				model = "models/editor/playerstart.mdl"
			});
		return;
		case "box1" :
			if(fixAng == false){angV.x += RandomInt(0,3)*90; angV.y += RandomInt(0,3)*90; angV.z += RandomInt(0,3)*90;}
			vecV.z += 30;	simpleEnt("models/props_junk/wood_crate001a.mdl", objName, vecV, angV);		return;
		case "box2" :
			if(fixAng == false){angV.x += RandomInt(0,3)*90; angV.y += RandomInt(0,3)*90; angV.z += RandomInt(0,3)*90;}
			vecV.z += 40;	simpleEnt("models/props_junk/wood_crate002a.mdl", objName, vecV, angV);		return;
		case "dump1" :
			if(fixAng == false){angV.x += RandomInt(0,3)*90; angV.y += RandomInt(0,3)*90; angV.z += RandomInt(0,1)*180;}
			vecV.z += 70;	simpleEnt("models/props_junk/dumpster.mdl", objName, vecV, angV);		return;
		case "dump2" :
			if(fixAng == false){angV.x += RandomInt(0,3)*90; angV.y += RandomInt(0,3)*90; angV.z += RandomInt(0,1)*180;}
			vecV.z += 70;	simpleEnt("models/props_junk/dumpster_2.mdl", objName, vecV, angV);		return;
		case "tree_trunk" :
			if(fixAng == false){angV.x += RandomInt(0,3)*90; angV.y += RandomInt(0,3)*90; angV.z += RandomInt(0,3)*90;}
			vecV.z += 150;	simpleEnt("models/props_foliage/tree_trunk_fallen.mdl", objName, vecV, angV);		return;
		case "props_vehicles/utility_truck.mdl" :
			model2 = "models/props_vehicles/utility_truck_windows.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_utility_truck_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_equipment/snack_machine.mdl" :
			model2 = "models/props_equipment/snack_machine_glass.mdl";
		break;
		case "props_vehicles/cara_95sedan.mdl" :
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_95sedan_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/cara_95sedan_wrecked.mdl" :
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_95sedanW_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/cara_82hatchback.mdl" :
			model2 = "models/props_vehicles/cara_82hatchback_glass.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_82hatchback_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/cara_82hatchback_wrecked.mdl" :
			model2 = "models/props_vehicles/cara_82hatchback_wrecked_glass.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_82hatchbackW_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/cara_69sedan.mdl" :
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_69sedan_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/cara_84sedan.mdl" :
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_84sedan_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/cara_95sedan.mdl" :
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_95sedan_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/suv_2001.mdl" :
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_suv2001_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/taxi_cab.mdl" :
			model2 = "models/props_vehicles/police_car_glass.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_taxicab_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/taxi_rural.mdl" :
			model2 = "models/props_vehicles/taxi_city_glass.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_taxirural_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/pickup_truck_2004.mdl" :
			model2 = "models/props_vehicles/pickup_truck_2004_glass.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_truck2004_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/pickup_truck_78.mdl" :
			model2 = "models/props_vehicles/pickup_truck_78_glass.mdl";
			if(proptype == false){
				IncludeScript(::entitygroups_obj+"level_truck78_group", g_MapScript);
				carEntityGroup = g_MapScript.GetEntityGroup( "LvObj" );
			}
		break;
		case "props_vehicles/pickup_regcab.mdl" :
			model2 = "models/props_vehicles/pickup_regcab_glass.mdl";
		break;
		case "forklift" :
			vecV.z += 20;	simpleEnt("models/props/cs_assault/forklift.mdl", objName, vecV, angV);		return;
		case "props_vehicles/cement_truck01.mdl" :
			model2 = "models/props_vehicles/cement_truck01_windows.mdl";
		break;
		case "fire" :
			obj = SpawnEntityFromTable("env_fire",
			{
				targetname = objName
				damagescale = "80.0"
				fireattack = "5"
				firesize = "30"
				firetype = "0"
				health = "30"
				ignitionpoint = "32"
				spawnflags = "31"
				StartDisabled = "0"
				fademaxdist = "3250"
				fademindist = "3050"
				LightColor = "115 164 0"
				LightRadiusScale = "3000.0"
				LightBrightness = "255"
				targetname = "Level_BarrelFire_fire1"
				origin = vecV
			});
			return;
		case "minigun1" :
		case "minigun2" :
			if(modelName == "minigun1")	{ptype = "prop_minigun_l4d1";	modelName = "models/w_models/weapons/w_minigun.mdl";}
			else						{ptype = "prop_minigun";		modelName = "models/w_models/weapons/50cal.mdl";}

			obj = SpawnEntityFromTable(ptype,
			{
				targetname = objName
				model = modelName
				origin = vecV
				angles = angV
				body = "0"
				fademindist = "-1"
				fadescale = "1"
				MaxAnimTime = "10"
				MaxPitch = "50"
				MaxYaw = "65"
				MinAnimTime = "5"
				MinPitch = "-25"
				spawnflags = "0"
				StartDisabled = "false"
			});
			return;

		//벽
		case "wall01" :
			modelName = "props_unique/zombiebreakwallhospitalexterior01_main.mdl";
			noshadows = true;
			noreshadows = "true";
		break;

		//문 잠그기
		case "doorlock" :
			while (obj = Entities.FindByClassname(obj, "prop_door_rotating"))
			{
				if(obj.IsValid()){
					if((obj.GetOrigin() - vecV).Length() < 5){
						DoEntFire("!self", "setUnbreakable", "", 0.0, null, obj);
						DoEntFire("!self", "close", "", 0.0, null, obj);
						DoEntFire("!self", "lock", "", 0.0, null, obj);

						local door = false;
						for(local i = 0; i < ::LevelChangeVar.doorlistIndex; i++){
							if(::LevelChangeVar.doorlist[i] == obj){
								door = true;
							}
						}
						if(door == false){
							::LevelChangeVar.doorlist[++::LevelChangeVar.doorlistIndex] <- obj;
						}
					}
				}
			}
			return;
		break;

		//블로커
		case "phyblock" :
			boxmin = Vector((proptype.x/2)*-1, (proptype.y/2)*-1, 0);
			boxmax = Vector(proptype.x/2, proptype.y/2, proptype.z);
		//	printl(boxmin);		printl(boxmax);
			if(BType != "1" && BType != "3.5")BType = "4";//생존자만 막으라고 지정되지 않았으면 모두 막기로 기본설정
		break;
		case "static_crate_40" :
			visible = visible*40;
			boxmin = Vector(-20, -20, 0);
			boxmax = Vector(20, 20, visible);
		break;
		case "navblock" :
			local extentbox = Vector(4, 4, 30);
			if(proptype != true){
			//	extentbox = Vector((proptype.x/2)*-1, (proptype.y/2)*-1, 0);
				extentbox = Vector(proptype.x/2, proptype.y/2, proptype.z);
			}
			local BTeam = "2";
			if(BType == "3")BTeam = "-1";
			obstacle = "1";
			vecV.z -= 10;
			obj = SpawnEntityFromTable("script_nav_blocker",
			{
				extent = extentbox
				targetname = objName
				origin = vecV
				angles = Vector( 0, 0, 0 )
				solid = "2"
				//mins = boxmin,
				//boxmins = boxmin,
				//maxs = boxmax,
				//boxmaxs = boxmax,
				affectsFlow = "1"
				teamToBlock = BTeam
				StartDisabled = "1"
			});
			DoEntFire("!self", "BlockNav", "", 0.0, null, obj);
			return;
		break;
	}

	//해당 위치에 이미 뭔가 있는지 체크 (있으면 취소)
	if(overlap == false){
		while (obj = Entities.FindByClassname(obj, "prop_dynamic")){
			if(obj.IsValid()){
				if((obj.GetOrigin() - vecV).Length() < 0.5){
					local objang = Vector(obj.GetAngles().x,obj.GetAngles().y,obj.GetAngles().z);
					local tmpang = QAngle(angV.x,angV.y,angV.z);
					tmpang = Vector(tmpang.x,tmpang.y,tmpang.z);
					if(objang.x <= 0)objang.x+=360;		if(objang.y <= 0)objang.y+=360;		if(objang.z <= 0)objang.z+=360;
					if(tmpang.x <= 0)tmpang.x+=360;		if(tmpang.y <= 0)tmpang.y+=360;		if(tmpang.z <= 0)tmpang.z+=360;
					if((objang - tmpang).Length() < 0.5){
						return;
					}
				}
			}
		}
		while (obj = Entities.FindByClassname(obj, "prop_door_rotating")){
			if(obj.IsValid() && obj.GetName().find("Level_") != null){
				if((obj.GetOrigin() - vecV).Length() < 0.5){
					return;
				}
			}
		}
	}

	if(proptype == false){//탱크 드리블 가능 객체
		ptype = "prop_physics";
		if(carEntityGroup != null){//탱크 드리블이 가능한 객체 중에 미리 그룹이 정의된 경우
			vecV.z += 5;
			local ent = g_MapScript.SpawnSingleAt( carEntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
			return;
		}
	}
	if(carEntityGroup != null){//탱크 드리블이 불가능한 객체 중에 미리 그룹이 정의된 경우
		local ent = g_MapScript.SpawnSingleAt( carEntityGroup, vecV, QAngle(angV.x,angV.y,angV.z) );
		return;
	}
	modelName = "models/" + modelName;

	if(boxmin != null){
		local blocklist = [BType];
		if(BType == "3.5")blocklist = ["1","3"];
		local len = blocklist.len();
		for(local i = 0; i < len; i++){
			obj = SpawnEntityFromTable("env_physics_blocker",
			{
				targetname = objName,
				origin = vecV,
				angles = angV,
				mins = boxmin,
				boxmins = boxmin,
				maxs = boxmax,
				boxmaxs = boxmax,
				initialstate = "1",
				CanObstructNav = obstacle,
				BlockType = blocklist[i]
			});
		}
	}else{
		obj = SpawnEntityFromTable(ptype,
		{
			targetname = objName,
			model = modelName,
			origin = vecV,
			angles = angV,
			solid = solidtype,
			spawnflags = flagtype,
			rendermode = rendmode,
			renderamt = rendamt,
			CanObstructNav = obstacle,
			skin = ::modelskin,
			disableshadows = noshadows,
			rendercolor = ::modelcolor
			lightingorigin = ::info_targetV
			/*,
			disableshadows = noshadows,
			disablereceiveshadows = noreshadows,
			disableflashlight = noflash*/
		});
		obj.TakeDamage( 0.0 , 0 , null );
	}
	
	if(visible == false){
		DoEntFire("!self", "DisableShadow", "", 0, null, obj);
		DoEntFire("!self", "DisableReceivingFlashlight", "", 0, null, obj);
	}

	if(model2 != ""){
		objName = "levelChange"+::LevelChangeVar.createNo;
		::LevelChangeVar.createNo++;
		local obj2 = SpawnEntityFromTable("prop_dynamic",
		{
			targetname = objName,
			model = model2,
			origin = vecV,
			angles = angV,
			solid = "6",
			spawnflags = "1",
			rendermode = rendmode,
			renderamt = rendamt,
			disableshadows = true,
			disablereceiveshadows = noreshadows/*,
			disableflashlight = noflash*/
		});
	}

	if(model3 != ""){
		objName = "levelChange"+::LevelChangeVar.createNo;
		::LevelChangeVar.createNo++;
		local obj2 = SpawnEntityFromTable("prop_dynamic",
		{
			targetname = objName,
			model = model3,
			skin = model3skin,
			origin = vecV,
			angles = angV,
			solid = "6",
			spawnflags = "1",
			rendermode = rendmode,
			renderamt = rendamt
			disableshadows = true,
		});
	}
}

::simpleEnt <- function(modelName, entName, vecV, angV = Vector( 0, 0, 0 ), skinV = "0"){
	local ent = g_ModeScript.CreateSingleSimpleEntityFromTable( {
		classname = "prop_physics",
		targetName = entName,
		model = modelName,
		origin = vecV,
		angles = angV,
		skin = skinV
	} );
	return ent;
}

::simpleEnt2 <- function(modelName, entName, vecV, angV = Vector( 0, 0, 0 ), skinV = "0"){
	local ent = g_ModeScript.CreateSingleSimpleEntityFromTable( {
		classname = "prop_physics_multiplayer",
		targetName = entName,
		model = modelName,
		origin = vecV,
		angles = angV,
		massscale = "0.3"
		skin = skinV
	} );
	return ent;
}

::findPhysics <- function(){
	local ent = null;
	while( ( ent = Entities.FindByClassname( ent, "prop_physics" ) ) != null ){
		printl(ent.GetModelName()+"  "+ent.GetOrigin());
	}
	return null;
}

::findLadder <- function(tgmax=Vector(0,0,0), tgmin=Vector(0,0,0)){//사다리 검색용
	local Ladder = null;
	local index = 0;
	while( ( Ladder = Entities.FindByClassname( Ladder, "func_simpleladder" ) ) != null ){
		if(Ladder.GetName() == "levelChange_ladder")continue;
		local vecMaxs = NetProps.GetPropVector( Ladder, "m_Collision.m_vecMaxs" );
		local vecMins = NetProps.GetPropVector( Ladder, "m_Collision.m_vecMins" );
		if((tgmax - vecMaxs).Length() < 10 && (tgmin - vecMins).Length() < 10){
			//목표하던 사다리를 찾았으면 그만
			return [Ladder, vecMaxs, vecMins];
		}
		local climb = NetProps.GetPropVector( Ladder, "m_climbableNormal" );
		//printl("model   "+Ladder.GetModelName()+"    name   "+Ladder.GetName());
		//printl("vecMax  "+vecMaxs);
		//printl("vecMin  "+vecMins);
		//printl("climb   "+NetProps.GetPropVector( Ladder, "m_climbableNormal" ));
		if(tgmax.x == 0 && tgmax.y == 0 && tgmax.z == 0)printl(index+", Vector("+vecMaxs.x+", "+vecMaxs.y+", "+vecMaxs.z+"), Vector("+vecMins.x+", "+vecMins.y+", "+vecMins.z+"), Vector("+climb.x+", "+climb.y+", "+climb.z+"), // height : "+(vecMaxs.z - vecMins.z));//+"  climb : "+climb);
		index++;
	}
	return null;
}

::findClip <- function(tgtype, tgmax=Vector(0,0,0), tgmin=Vector(0,0,0)){//func_nav_blocker 검색용
	local len = ::LevelChangeVar.clipArray.len();
	for(local i = len-1; i > 0; i--){
		if(::LevelChangeVar.clipArray[i][0] == null || !::LevelChangeVar.clipArray[i][0].IsValid()){
			::LevelChangeVar.clipArray.remove(i);
			continue;
		}
		if(tgtype == ::LevelChangeVar.clipArray[i][1] || (tgtype == "any" && (::LevelChangeVar.clipArray[i][1] == "env_physics_blocker" || ::LevelChangeVar.clipArray[i][1] == "env_player_blocker" || ::LevelChangeVar.clipArray[i][1] == "func_playerinfected_clip"))){
			local vecMaxs = null;
			local vecMins = null;
			if(::LevelChangeVar.clipArray[i][1] == "env_physics_blocker"){
				vecMaxs = NetProps.GetPropVector( ::LevelChangeVar.clipArray[i][0], "m_vMaxs" );
				vecMins = NetProps.GetPropVector( ::LevelChangeVar.clipArray[i][0], "m_vMins" );
			}else{
				vecMaxs = NetProps.GetPropVector( ::LevelChangeVar.clipArray[i][0], "m_Collision.m_vecMaxs" );
				vecMins = NetProps.GetPropVector( ::LevelChangeVar.clipArray[i][0], "m_Collision.m_vecMins" );
			}
			if(vecMaxs != null && vecMins != null){
				if((tgmax - vecMaxs).Length() < 10 && (tgmin - vecMins).Length() < 10){
					return [::LevelChangeVar.clipArray[i][0], vecMaxs, vecMins];
				}
			}
		}
	}
	return null;
}

::findBrush <- function(tgorigin=Vector(0,0,0)){//func_brush 검색용
	local Brush = null;
	local index = 0;
	while( ( Brush = Entities.FindByClassname( Brush, "func_brush" ) ) != null ){
		if(Brush.GetName() == "levelChange_brush")continue;
		local brushorigin = NetProps.GetPropVector( Brush, "m_vecOrigin" );
		if((tgorigin - brushorigin).Length() < 10){
			return Brush;
		}
	//	if(tgorigin.x == 0 && tgorigin.y == 0 && tgorigin.z == 0)printl(index+", Vector("+brushorigin.x+", "+brushorigin.y+", "+brushorigin.z+")");
		index++;
	}
	return null;
}

::LevelChangeFunc<-{
	debug = false

	function clipArray_create(){
		::LevelChangeVar.clipArray = [];
		local classnames = ["env_physics_blocker", "env_player_blocker", "func_playerinfected_clip", "func_nav_blocker", "trigger_hurt", "trigger_hurt_ghost"];
		for(local i = 0; i < 6; i++){
			local Clip = null;
			while( ( Clip = Entities.FindByClassname( Clip, classnames[i] ) ) != null ){
				::LevelChangeVar.clipArray.append([Clip, classnames[i]]);
			}
		}
	}

	function GetMapName(){
		local map = Director.GetMapName();
	
		if(map == "c4m3_sugarmill_b")map = "c4m2_sugarmill_a";
		else if(map == "c4m4_milltown_b" || map == "c4m5_milltown_escape")map = "c4m1_milltown_a";

		return [map, Director.GetMapName()];
	}

	function gamemode(){
		local mp_gamemode = Convars.GetStr("mp_gamemode").tolower();

		if(mp_gamemode == "coop" || mp_gamemode == "realism")return "coop";
		else if(mp_gamemode == "versus" || mp_gamemode == "mutation12"/*realism versus*/ || mp_gamemode == "tankrun")return "versus";
		else return null;
	}

	function OnGameEvent_round_start_post_nav(params){
		local gamemode = ::LevelChangeFunc.gamemode();
		local currentTime = Time();
		RestoreTable("objspawn", ::LevelChangeVar.sessionData);
		local gamerules = Entities.FindByClassname(null, "terror_gamerules");

		if(::LevelChangeVar.sessionData.len() == 0 || (gamemode == "coop" && currentTime < 10 && Director.IsSessionStartMap()) || 
		(gamemode == "versus" && currentTime < 10
		&& NetProps.GetPropInt(gamerules, "terror_gamerules_data.m_iCampaignScore.000") == 0
		&& NetProps.GetPropInt(gamerules, "terror_gamerules_data.m_iCampaignScore.001") == 0)){
			::LevelChangeVar.sessionData.clear();
		}
		SaveTable("objspawn", ::LevelChangeVar.sessionData);

		if(!::MANACAT.objectSpawner.check){
			::spawnArray_create(false);
			::manacatAddTimer(0.1, false, ::callLevelChanger, { allspawn = false });
		}
		if("carController" in ::MANACAT)if(!::MANACAT.carController.check)::carChanger();
		if("itemSpawner" in ::MANACAT)if(!::MANACAT.itemSpawner.check)::ItemSpawner(false);
	}

	function OnGameEvent_round_end(params){
		::MANACAT.objectSpawner.check <- false;

		::cleanupObj(false);
	}

	function areaLeave(userid, key){
		local player = GetPlayerFromUserID(userid);
		if((NetProps.GetPropInt( player, "m_nButtons") & key) == key){
			local key = (NetProps.GetPropInt( player, "m_afButtonForced") & ~key);
			NetProps.SetPropInt( player, "m_afButtonForced", key.tointeger());
		}
	}

	function OnGameEvent_player_say(params){
		local _chat = params.text;
		local _player = GetPlayerFromUserID(params.userid);
	
		if(_player == GetListenServerHost()){
			_chat = split( _chat, " " );
			local _chatlen = _chat.len();
		///*//개발중 확인용
			if(_chatlen > 0){
				if(_chat[0] == "!objrespawn"){
					::cleanupObj();
					::spawnArray_create(false);
					::manacatAddTimer(0.1, false, ::callLevelChanger, { allspawn = false });
					//::levelChanger();
					ClientPrint( null, 5, "Object Director: \x01Object respawned.");
				}else if(_chat[0] == "!objrespawnAll"){
					::cleanupObj();
					::spawnArray_create(true);
					::manacatAddTimer(0.1, false, ::callLevelChanger, { allspawn = true });
					//::levelChanger(true);
				}else if(_chat[0] == "!cleanup"){
					::cleanupObj();
				}else if(_chat[0] == "physics"){
					::findPhysics();	
				}else if(_chat[0] == "ladder"){
					if(_chat.len() == 1){
						::findLadder();	
					}else if(_chat.len() == 2){
						local ladder = null;
						while (ladder = Entities.FindByClassname(ladder, "func_simpleladder")){
							if(ladder.IsValid()){
								local vecMaxs = NetProps.GetPropVector( ladder, "m_Collision.m_vecMaxs" );
								local vecMins = NetProps.GetPropVector( ladder, "m_Collision.m_vecMins" );
								if((::LevelChangeVar.m_ladderlist[(_chat[1].tointeger()*4)+1] - vecMaxs).Length() < 2
								&& (::LevelChangeVar.m_ladderlist[(_chat[1].tointeger()*4)+2] - vecMins).Length() < 2){
									local climb = NetProps.GetPropVector( ladder, "m_climbableNormal" );
									//printl(Vector(vecMaxs.x - vecMins.x, vecMaxs.y - vecMins.y, vecMaxs.z - vecMins.z)+"  "+climbVec);
									
									local ori = ladder.GetOrigin();
									local ang = ladder.GetAngles();

									DebugDrawBoxAngles(ori, vecMins, vecMaxs, ang, Vector(255, 0, 255), 64, 5.0);
								//	_player.SetOrigin(vecMins);
								}
							}
						}
					}
				}else if(_chat[0] == "brush"){
					::findBrush();	
				}else if(_chat[0] == "nav"){
					::findClip("func_nav_blocker");	
				}else if(_chat[0] == "playerclip"){
					::findClip("func_playerinfected_clip");	
					::findClip("env_player_blocker");	
				}else if(_chat[0] == "damage"){
					::findClip("trigger_hurt");
				}else if(_chat[0] == "damageg"){
					::findClip("trigger_hurt_ghost");	
				}else if(_chat[0] == "sdata"){
					printl(::LevelChangeVar.sessionData["maps"]);
					printl(::LevelChangeFunc.GetMapName()[0]);
					printl(::LevelChangeVar.sessionData[::LevelChangeFunc.GetMapName()[0]]);
				}
			}
		}//*/
	}

	function OnGameEvent_player_left_safe_area(params){
		::manacatAddTimerByName("objtalker", 0.6, true, ::objTalkerUpdate);
		::startspawn(0);
		::LevelChangeFunc.clipArray_create();
		::delspawn({afterStart = true});

		local gamemode = ::LevelChangeFunc.gamemode();
		if(gamemode == "versus"){
			RestoreTable("objspawn", ::LevelChangeVar.sessionData);
			SaveTable("objspawn", ::LevelChangeVar.sessionData);
		}
	}
}

__CollectEventCallbacks(::LevelChangeFunc, "OnGameEvent_", "GameEventCallbacks", RegisterScriptGameEventListener);
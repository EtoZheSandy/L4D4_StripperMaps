Convars.SetValue("sv_consistency", 0);
Convars.SetValue("sv_pure_kick_clients", 0);

IncludeScript("manacat/manacatTimer");
IncludeScript("manacat/commonTalker");

::mapName <- Director.GetMapName();
::objVocalVars<-
{
	objList = []
	objListLen = 0
	chkObj = []
	chkObjLen = 0
	
	francisThisWay = ["FollowMe01" "FollowMe04"]
	francisLadder = ["GenericDirections03" "WorldFarmHouse0327" "GenericDirections11" "FollowMe01" "FollowMe04"]
	francisDoor = ["genericdirections05" "FollowMe01" "FollowMe04"]
	francisBlock = ["X"]
	
	louisThisWay = ["WorldHospital0107" "FollowMe04"]
	louisLadder = ["GenericDirections03" "GenericDirections17" "WorldHospital0107" "FollowMe04"]
	louisDoor = ["genericdirections05" "genericdirections06" "WorldHospital0107" "FollowMe04"]
	louisBlock = ["X"]
	
	billThisWay = ["WorldHospital0109" "FollowMe05"]
	billLadder = ["GenericDirections03" "WorldFarmHouse0313" "WorldHospital0109" "FollowMe05"]
	billDoor = ["genericdirections05" "WorldHospital0109" "FollowMe05"]
	billBlock = ["WorldHospital0209" "WorldHospital0210"]
	
	zoeyThisWay = ["FollowMe01" "FollowMe05" "FollowMe07" "GenericDirections05"]
	zoeyLadder = ["GenericDirections03" "WorldSmallTown0115" "WorldSmallTown0203" "FollowMe05"]
	zoeyDoor = ["genericdirections05" "FollowMe01" "FollowMe05" "FollowMe07" "GenericDirections05"]
	zoeyBlock = ["WorldSmallTown0112"]
	
	coachThisWay = ["miscdirectional09" "miscdirectional12" "FollowMe02" "FollowMe05" "World06" "DLC1_C6M1_BackAlley16"]
	coachLadder = ["dlc1_c6m2_upladder01" "dlc1_c6m2_upladder02" "miscdirectional23" "miscdirectional24" "miscdirectional32" "World06" "World12"]
	coachBlock = ["WorldC1M1B55" "WorldC2M206"]

	nickThisWay = ["miscdirectional03" "miscdirectional06" "miscdirectional11" "FollowMe08" "FollowMe09" "FollowMe10" "DLC1_C6M1_BackAlley13" "DLC1_C6M1_BackAlley15" "WorldC1M3B35" "WorldC4M137"]
	nickLadder = ["dlc1_c6m2_upladder01" "dlc1_c6m2_upladder02" "miscdirectional17" "miscdirectional18" "miscdirectional27" "WorldMisc01"]
	nickBlock = ["WorldC1M1B14" "WorldC2M312"]
	
	ellisThisWay = ["miscdirectional03" "miscdirectional06" "miscdirectional11" "WorldC3M178"]
	ellisLadder = ["dlc1_c6m2_upladder01" "dlc1_c6m2_upladder02" "dlc1_c6m2_upladder04" "miscdirectional18" "miscdirectional19" "miscdirectional28" "WorldMisc25" "WorldMisc26" "WorldMisc27" "WorldMisc28" "WorldMisc29" "WorldMisc30" "WorldMisc31" "WorldMisc32"]
	ellisDoor = ["MiscDirectional13" "MiscDirectional40"]
	ellisBlock = ["WorldC1M1B65" "World311"]//WorldC5M2B11
	
	rochelleThisWay = ["miscdirectional03" "miscdirectional06" "miscdirectional11" "FollowMe01" "World13" "WorldC3M235"]
	rochelleLadder = ["dlc1_c6m2_upladder02" "miscdirectional17" "miscdirectional18" "miscdirectional26"]
	rochelleBlock = ["WorldGenericProducer10" "WorldC3M149"]
}

::objTalkerUpdate <- function(params){
	local surv = null;
	while (surv = Entities.FindByClassname(surv, "player")){
		if(surv.IsValid()){
			if(surv.GetZombieType() == 9){
				local vecVision = surv.EyePosition();
				for(local i = 0; i < ::objVocalVars.objListLen; i++){
					if((::objVocalVars.objList[i][1] - vecVision).Length() <= 600){
						local chked = false;
						for(local j = 0; j < ::objVocalVars.chkObjLen; j++){
							if(::objVocalVars.chkObj[j][0] == ::objVocalVars.objList[i][0])chked = true;
						}
						if(!chked){
							local vecTarget = ::objVocalVars.objList[i][1];
							local vecTargetNorm = Vector(vecTarget.x, vecTarget.y, vecTarget.z);
							vecTargetNorm.x -= vecVision.x;
							vecTargetNorm.y -= vecVision.y;
							vecTargetNorm.z -= vecVision.z;
							vecTargetNorm.x = vecTargetNorm.x/vecTargetNorm.Norm();
							vecTargetNorm.y = vecTargetNorm.y/vecTargetNorm.Norm();
							vecTargetNorm.z = vecTargetNorm.z/vecTargetNorm.Norm();

						//	printl("시야벡터 : "+surv.EyeAngles().Forward());
						//	printl("타겟벡터 : "+vecTarget);

							if(180/PI*acos(surv.EyeAngles().Forward().Dot(vecTargetNorm)) < 15){
								local m_trace = { start = vecTarget, end = vecVision, mask = 33579137 };
								TraceLine(m_trace);
								if(m_trace.enthit == surv){
									local vocal = ::objVocalSelect({model = surv.GetModelName(), code = ::objVocalVars.objList[i][2]});
									if(!vocal || vocal == ""){
									}else{
										::objSpeakVocal({ model = surv.GetModelName(), code = ::objVocalVars.objList[i][2] });
										::objVocalVars.chkObj.append([::objVocalVars.objList[i][0], surv.GetModelName()]);
										::objVocalVars.chkObjLen++;
									}
								}
							}
						}
					}
				}
			}
		}
	}
}

::objSpeakVocal <- function(params){//대상 플레이어가 대사를 마치기를 기다리고 대사를 함.
	local speaker = Entities.FindByModel(null, params.model);
	if(speaker == null || !speaker.IsValid())return;

	local scene = null;
	if("waitscene" in params){
		local scene = speaker.GetCurrentScene();
		if(scene == null || scene != params["waitscene"]){//대상의 대사 끝
			local someplayer;
			local players = 0;
			while (someplayer = Entities.FindByClassname(someplayer, "player")){
				if(::VocalCommonFunc.speakable(someplayer)){
					if(someplayer.GetModelName() != params.model){
						local dist = (speaker.GetOrigin() - someplayer.GetOrigin()).Length();
						if(dist <= 1500){
							players++;
						}
					}
				}
			}
			if(players == 0){/*printl("아무도 없음");*/return;} //아무도 없음

			if(!speaker.IsIncapacitated() && !speaker.IsDominatedBySpecialInfected() && !speaker.IsStaggering()){
				local vocal = ::objVocalSelect({model = params.model, code = params.code});
			//	printl("["+speaker.GetPlayerName()+"]발화 "+vocal);
				if(!vocal || vocal == "")return;
				speaker.PlayScene(vocal, 0.0);
				return;
			}
		}else{//대상의 대사 진행중
			::manacatAddTimer(0.2, false, ::objSpeakVocal, params);
		}
	}else{
		params["waitscene"] <- speaker.GetCurrentScene();

		::manacatAddTimer(0.2, false, ::objSpeakVocal, params);
	}
}

::objVocalSelect <- function(params){
	local pmodel = params.model;
	if(pmodel == null || pmodel == false || pmodel == true)return;
	local code = params.code;
	local vocal = "scenes/";
	switch(pmodel){
		case "models/survivors/survivor_teenangst.mdl":		vocal += "teengirl/";	break;
		case "models/survivors/survivor_biker.mdl":			vocal += "biker/";		break;
		case "models/survivors/survivor_namvet.mdl":		vocal += "namvet/";		break;
		case "models/survivors/survivor_manager.mdl":		vocal += "manager/";	break;
		case "models/survivors/survivor_mechanic.mdl":		vocal += "mechanic/";	break;
		case "models/survivors/survivor_producer.mdl":		vocal += "producer/";	break;
		case "models/survivors/survivor_gambler.mdl":		vocal += "gambler/";	break;
		case "models/survivors/survivor_coach.mdl":			vocal += "coach/";		break;
		default:	return false;
	}
	switch(code){
		case "thisway" :
			switch(pmodel){
				case "models/survivors/survivor_teenangst.mdl":
					vocal += ::objVocalVars.zoeyThisWay[RandomInt(0,::objVocalVars.zoeyThisWay.len()-1)];		break;
				case "models/survivors/survivor_biker.mdl":
					vocal += ::objVocalVars.francisThisWay[RandomInt(0,::objVocalVars.francisThisWay.len()-1)];		break;
				case "models/survivors/survivor_namvet.mdl":
					vocal += ::objVocalVars.billThisWay[RandomInt(0,::objVocalVars.billThisWay.len()-1)];		break;
				case "models/survivors/survivor_manager.mdl":
					vocal += ::objVocalVars.louisThisWay[RandomInt(0,::objVocalVars.louisThisWay.len()-1)];		break;
				case "models/survivors/survivor_mechanic.mdl":
					vocal += ::objVocalVars.ellisThisWay[RandomInt(0,::objVocalVars.ellisThisWay.len()-1)];		break;
				case "models/survivors/survivor_producer.mdl":
					vocal += ::objVocalVars.rochelleThisWay[RandomInt(0,::objVocalVars.rochelleThisWay.len()-1)];		break;
				case "models/survivors/survivor_gambler.mdl":
					vocal += ::objVocalVars.nickThisWay[RandomInt(0,::objVocalVars.nickThisWay.len()-1)];		break;
				case "models/survivors/survivor_coach.mdl":
					vocal += ::objVocalVars.coachThisWay[RandomInt(0,::objVocalVars.coachThisWay.len()-1)];		break;
			}
		break;
		case "ladder" :
			switch(pmodel){
				case "models/survivors/survivor_teenangst.mdl":
					vocal += ::objVocalVars.zoeyLadder[RandomInt(0,::objVocalVars.zoeyLadder.len()-1)];		break;
				case "models/survivors/survivor_biker.mdl":
					vocal += ::objVocalVars.francisLadder[RandomInt(0,::objVocalVars.francisLadder.len()-1)];		break;
				case "models/survivors/survivor_namvet.mdl":
					vocal += ::objVocalVars.billLadder[RandomInt(0,::objVocalVars.billLadder.len()-1)];		break;
				case "models/survivors/survivor_manager.mdl":
					vocal += ::objVocalVars.louisLadder[RandomInt(0,::objVocalVars.louisLadder.len()-1)];		break;
				case "models/survivors/survivor_mechanic.mdl":
					vocal += ::objVocalVars.ellisLadder[RandomInt(0,::objVocalVars.ellisLadder.len()-1)];		break;
				case "models/survivors/survivor_producer.mdl":
					vocal += ::objVocalVars.rochelleLadder[RandomInt(0,::objVocalVars.rochelleLadder.len()-1)];		break;
				case "models/survivors/survivor_gambler.mdl":
					vocal += ::objVocalVars.nickLadder[RandomInt(0,::objVocalVars.nickLadder.len()-1)];		break;
				case "models/survivors/survivor_coach.mdl":
					vocal += ::objVocalVars.coachLadder[RandomInt(0,::objVocalVars.coachLadder.len()-1)];		break;
			}
		break;
		case "door" :
			switch(pmodel){
				case "models/survivors/survivor_teenangst.mdl":
					vocal += ::objVocalVars.zoeyDoor[RandomInt(0,::objVocalVars.zoeyDoor.len()-1)];		break;
				case "models/survivors/survivor_biker.mdl":
					vocal += ::objVocalVars.francisDoor[RandomInt(0,::objVocalVars.francisDoor.len()-1)];		break;
				case "models/survivors/survivor_namvet.mdl":
					vocal += ::objVocalVars.billDoor[RandomInt(0,::objVocalVars.billDoor.len()-1)];		break;
				case "models/survivors/survivor_manager.mdl":
					vocal += ::objVocalVars.louisDoor[RandomInt(0,::objVocalVars.louisDoor.len()-1)];		break;
				case "models/survivors/survivor_mechanic.mdl":
					vocal += ::objVocalVars.ellisDoor[RandomInt(0,::objVocalVars.ellisDoor.len()-1)];		break;
				case "models/survivors/survivor_producer.mdl":
					vocal += ::objVocalVars.rochelleDoor[RandomInt(0,::objVocalVars.rochelleDoor.len()-1)];		break;
				case "models/survivors/survivor_gambler.mdl":
					vocal += ::objVocalVars.nickDoor[RandomInt(0,::objVocalVars.nickDoor.len()-1)];		break;
				case "models/survivors/survivor_coach.mdl":
					vocal += ::objVocalVars.coachDoor[RandomInt(0,::objVocalVars.coachDoor.len()-1)];		break;
			}
		break;
		case "block" :
			switch(pmodel){
				case "models/survivors/survivor_teenangst.mdl":
					vocal += ::objVocalVars.zoeyBlock[RandomInt(0,::objVocalVars.zoeyBlock.len()-1)];		break;
				case "models/survivors/survivor_biker.mdl":
					vocal += ::objVocalVars.francisBlock[RandomInt(0,::objVocalVars.francisBlock.len()-1)];		break;
				case "models/survivors/survivor_namvet.mdl":
					vocal += ::objVocalVars.billBlock[RandomInt(0,::objVocalVars.billBlock.len()-1)];		break;
				case "models/survivors/survivor_manager.mdl":
					vocal += ::objVocalVars.louisBlock[RandomInt(0,::objVocalVars.louisBlock.len()-1)];		break;
				case "models/survivors/survivor_mechanic.mdl":
					vocal += ::objVocalVars.ellisBlock[RandomInt(0,::objVocalVars.ellisBlock.len()-1)];		break;
				case "models/survivors/survivor_producer.mdl":
					vocal += ::objVocalVars.rochelleBlock[RandomInt(0,::objVocalVars.rochelleBlock.len()-1)];		break;
				case "models/survivors/survivor_gambler.mdl":
					vocal += ::objVocalVars.nickBlock[RandomInt(0,::objVocalVars.nickBlock.len()-1)];		break;
				case "models/survivors/survivor_coach.mdl":
					vocal += ::objVocalVars.coachBlock[RandomInt(0,::objVocalVars.coachBlock.len()-1)];		break;
			}
		break;
	}
	if(vocal.slice(vocal.len()-1) == "X")return false;
	return vocal+".vcd";
}
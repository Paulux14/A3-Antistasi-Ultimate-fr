private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;

///////////////////////////
//   Rebel Information   //
///////////////////////////

["name", "Armée_Française"] call _fnc_saveToTemplate;

["flag", "Flag_EAF_F"] call _fnc_saveToTemplate;
["flagTexture", "\a3\Data_F_Enoch\Flags\flag_EAF_CO.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_EAF"] call _fnc_saveToTemplate;

["vehiclesBasic", ["I_C_Offroad_02_LMG_F", "C_Van_01_transport_F", "AMF_VB2L_CE_762_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["AMF_VB2L_CE_762_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["B_AMF_VAB_ULTIMA_TOP_X8_TDF_F"]] call _fnc_saveToTemplate;
["vehiclesTruck", ["AMF_GBC180_PERS_03"]] call _fnc_saveToTemplate;
["vehiclesAT", ["a3a_LSV_02_AT_black_F"]] call _fnc_saveToTemplate;
["vehiclesAA", ["AMF_VBL_CE_127_01_F"]] call _fnc_saveToTemplate;

["vehiclesBoat", ["UK3CB_MDF_B_RHIB"]] call _fnc_saveToTemplate;

["vehiclesPlane", ["B_AMF_PLANE_TRANSPORT_01_F"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["AMF_VBMR_SAN_CE"]] call _fnc_saveToTemplate;

["vehiclesCivCar", ["B_G_Offroad_01_F"]] call _fnc_saveToTemplate;
["vehiclesCivTruck", ["B_G_Van_01_transport_F"]] call _fnc_saveToTemplate;
["vehiclesCivHeli", []] call _fnc_saveToTemplate;
["vehiclesCivBoat", []] call _fnc_saveToTemplate;
["vehiclesCivPlane", []] call _fnc_saveToTemplate;
["vehiclesCivSupply", ["UK3CB_ADC_C_S1203"]] call _fnc_saveToTemplate;

["staticMGs", ["B_G_HMG_02_high_F"]] call _fnc_saveToTemplate;
["staticAT", ["AMF_WiredGuided_mmp_F"]] call _fnc_saveToTemplate;
["staticAA", ["UK3CB_MDF_B_Stinger_AA_pod"]] call _fnc_saveToTemplate;
["staticMortars", ["R3F_MO81_LLR"]] call _fnc_saveToTemplate;
["staticMortarMagHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["staticMortarMagSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;

["minesAT", ["ATMine"]] call _fnc_saveToTemplate;
["minesAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

["breachingExplosivesAPC", [["DemoCharge_Remote_Mag", 1]]] call _fnc_saveToTemplate;
["breachingExplosivesTank", [["SatchelCharge_Remote_Mag", 1], ["DemoCharge_Remote_Mag", 2]]] call _fnc_saveToTemplate;

//////////////////////////////////////
//       Antistasi Plus Stuff       //
//////////////////////////////////////

//vehicle class, price, type, unlock condition
["blackMarketStock", [
    ["UK3CB_LDF_I_RBS70", 250, "STATICAA", {tierWar > 3}],
    ["UK3CB_CW_US_B_LATE_TOW_TriPod", 300, "STATICAT", {tierWar > 3}],
    ["RHS_MK19_TriPod_USMC_WD", 300, "STATICMG", {tierWar > 3}],

    ["UK3CB_ARD_I_Hilux_Mortar", 1500, "ARTILLERY", {tierWar > 3}],
    ["UK3CB_ARD_I_Hilux_Rocket", 2500, "ARTILLERY", {tierWar > 7}],
    ["UK3CB_ARD_I_Hilux_Rocket_Arty", 3000, "ARTILLERY", {tierWar > 8}],

    ["AMF_VB2L_CE_762_01_F", 175, "CAR", {tierWar > 2}],
    ["AMF_VBL_CE_127_01_F", 250, "CAR", {tierWar > 2}],
    ["AMF_VBMR_L_CE_01", 350, "CAR", {tierWar > 2}],
    
    ["AMF_VBCI_CE_01_F", 175, "APC", {true}],
    ["AMF_EBRC_CE_01", 250, "APC", {true}],
    

    ["UK3CB_I_G_BMP1", 900, "APC", {tierWar > 3 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],
    ["UK3CB_I_G_BMP2K", 1250, "APC", {tierWar > 7 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}}],

    ["UK3CB_MDF_I_M60A3", 1000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}],
    ["UK3CB_I_G_T34", 10000, "TANK", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count seaports > 0}],

    ["B_APC_Tracked_01_AA_F", 750, "AA", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count (milbases + airportsX) > 0}],

    ["B_AMF_PLANE_FIGHTER_02_F", 1750, "PLANE", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}],
    ["UAMF_RAFALE_C_01_F", 2250, "PLANE", {tierWar > 5 && {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}],

    ["AMF_TIGRE_01", 1350, "HELI", {{sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}],
    ["amf_nh90_tth_cargo", 2000, "HELI", {tierWar > 5 &&{ {sidesX getVariable [_x,sideUnknown] isEqualTo teamPlayer} count airportsX > 0}}]
]] call _fnc_saveToTemplate;

///////////////////////////
//  Rebel Starting Gear  //
///////////////////////////

private _initialRebelEquipment = [
    "AMF_Samas_F1_01_F",
    "AMF_Samas_VALO_01_F",
    "rhs_weap_fnmag","hsusf_100Rnd_762x51",
    "UK3CB_FAMAS_F1","UK3CB_FAMAS_25rnd_556x45",
    "optic_Hamr",
    "AMF_Pamas","15Rnd_9x21_Mag",
    "AMF_Glock_17_TAN","16Rnd_9x21_Mag",
    "AMF_RFF2_01_F",
    "optic_AMS",
    "hgun_PDW2000_F",
    "AMF_AT4CS_F",["AMF_84mm_AT4CS",1],
    "75Rnd_mag58_mag","75Rnd_mag58_mag_Tracer_green","75Rnd_mag58_mag_Tracer_red",
    "10Rnd_762x51_Mag","25Rnd_samas_f1_mag", "25Rnd_samas_f1_mag_Tracer_green", "25Rnd_samas_f1_mag_Tracer_red", "25Rnd_samas_f1_mag_Tracer_yellow","15Rnd_9x21_Mag",
    "30Rnd_9x21_Mag", "30Rnd_9x21_Red_Mag","UK3CB_FAMAS_25rnd_556x45_RT","AMF_RFG_APAV40","AMF_RFG_AC58",
    "6Rnd_45ACP_Cylinder","HandGrenade","SmokeShell",
    ["DemoCharge_Remote_Mag", 40],
    "B_FieldPack_oli",
    "B_FieldPack_blk",
    "B_FieldPack_khk",
    "AMF_rush24_01_MTP",
    "AMF_rush24_01", 
    "AMF_rush24_01_TAN",
    "AMF_Quadrocopter_Backpack_F",
    "UK3CB_B_B_Backpack_Radio_Chem_OLI",
    "UK3CB_B_B_Backpack_Radio_Chem",
    "amf_S3_01_DA",
    "amf_S3_01_CE",
    "UK3CB_V_MBAV_RIFLEMAN_MULTI",
    "UK3CB_V_MBAV_LIGHT_MULTI",
    "UK3CB_V_MBAV_MG_MULTI",
    "UK3CB_V_MBAV_MEDIC_MULTI",
    "UK3CB_V_MBAV_LIGHT_OLI",
    "UK3CB_V_MBAV_MG_OLI",
    "UK3CB_V_MBAV_RIFLEMAN_OLI",
    "UK3CB_V_MBAV_MEDIC_OLI",
    "UK3CB_MDF_B_V_CREW_Vest_TAN",
    "V_Rangemaster_belt",
    "Anafi_UAV_Terminal",
    "I_UavTerminal",
    "Binocular",
    "acc_flashlight","acc_flashlight_smg_01","acc_flashlight_pistol",
    "rhs_1PN138"
];

if (A3A_hasTFAR) then {_initialRebelEquipment append ["tf_microdagr","tf_anprc154"]};
if (A3A_hasTFAR && startWithLongRangeRadio) then {_initialRebelEquipment append ["tf_anprc155","tf_anprc155_coyote"]};
if (A3A_hasTFARBeta) then {_initialRebelEquipment append ["TFAR_microdagr","TFAR_anprc154"]};
if (A3A_hasTFARBeta && startWithLongRangeRadio) then {_initialRebelEquipment append ["TFAR_anprc155","TFAR_anprc155_coyote"]};
_initialRebelEquipment append ["Chemlight_blue","Chemlight_green","Chemlight_red","Chemlight_yellow"];
["initialRebelEquipment", _initialRebelEquipment] call _fnc_saveToTemplate;

private _rebUniforms = [
 "amf_uniform_01_RE_SE_MD", 
 "amf_uniform_01_SE_MD", 
 "amf_uniform_03_NG_SE_HS", 
 "amf_uniform_02_NG_CE_HS",
 "amf_uniform_02_NG_BM_HS",
 "amf_uniform_01_NG_BM_HS",
 "amf_uniform_01_NG_OD_HX",
 "amf_uniform_01_DA_MD",
 "amf_uniform_02_DA_HS"
];         
private _headgear = [];

["uniforms", _rebUniforms ] call _fnc_saveToTemplate;         //These Items get added to the Arsenal

["headgear", [
 "AMF_TCNVG_DA",
 "AMF_TCNVG",
 "AMF_FELIN_05_CE",
 "AMF_FELIN_05_TAN",
 "AMF_F3_02"
 ]] call _fnc_saveToTemplate;          //Headgear used by Rebell Ai until you have Armored Headgear.

/////////////////////
///  Identities   ///
/////////////////////

//Faces and Voices given to Rebell AI
["faces", ["TanoanHead_A3_01","TanoanHead_A3_02","TanoanHead_A3_03","TanoanHead_A3_04","TanoanHead_A3_05","TanoanHead_A3_06","TanoanHead_A3_07","TanoanHead_A3_08"]] call _fnc_saveToTemplate;
["voices", ["Male02FRE", "Male01FRE", "Male03FRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["binoculars", ["Binocular"]];

_loadoutData set ["uniforms", _rebUniforms];

_loadoutData set ["glasses", ["G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Aviator", "G_Spectacles", "G_Spectacles_Tinted", "G_Sport_BlackWhite", "G_Sport_Blackyellow", "G_Sport_Greenblack", "G_Sport_Checkered", "G_Sport_Red", "G_Squares", "G_Squares_Tinted"]];
_loadoutData set ["goggles", ["G_Lowprofile"]];
_loadoutData set ["facemask", ["rhssaf_veil_Green", "G_Bandanna_blk", "G_Bandanna_oli", "G_Bandanna_khk", "G_Bandanna_tan", "G_Bandanna_beast", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_aviator"]];

_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

////////////////////////
//  Rebel Unit Types  //
///////////////////////.

private _squadLeaderTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2,"facewearSOG", 0.3,"facewearSPE", 0.2]] call _fnc_setFacewear;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["binoculars"] call _fnc_addBinoculars;
};

private _riflemanTemplate = {
    ["uniforms"] call _fnc_setUniform;
    [selectRandomWeighted [[], 1.25, "glasses", 1, "goggles", 0.75, "facemask", 1, "balaclavas", 1, "argoFacemask", 1 , "facewearWS", 0.75, "facewearContact", 0.3, "facewearLawsOfWar", 0.5, "facewearGM", 0.3, "facewearCLSA", 0.2, "facewearSOG", 0.3,"facewearSPE", 0.2]] call _fnc_setFacewear;
    
    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
};

private _prefix = "militia";
private _unitTypes = [
    ["Petros", _squadLeaderTemplate],
    ["SquadLeader", _squadLeaderTemplate],
    ["Rifleman", _riflemanTemplate],
    ["staticCrew", _riflemanTemplate],
    ["Medic", _riflemanTemplate, [["medic", true]]],
    ["Engineer", _riflemanTemplate, [["engineer", true]]],
    ["ExplosivesExpert", _riflemanTemplate, [["explosiveSpecialist", true]]],
    ["Grenadier", _riflemanTemplate],
    ["LAT", _riflemanTemplate],
    ["AT", _riflemanTemplate],
    ["AA", _riflemanTemplate],
    ["MachineGunner", _riflemanTemplate],
    ["Marksman", _riflemanTemplate],
    ["Sniper", _riflemanTemplate],
    ["Unarmed", _riflemanTemplate]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
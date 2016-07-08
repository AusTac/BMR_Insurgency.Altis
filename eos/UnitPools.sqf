private ["_faction","_tempArray","_InfPool","_MotPool","_ACHPool","_CHPool","_uavPool","_stPool","_shipPool","_diverPool","_crewPool","_heliCrew","_ArmPool"];
_faction=(_this select 0);
_type=(_this select 1);
_tempArray=[];

switch (_faction) do {
	case 0: {// EAST CSAT FACTION
	_InfPool=	["O_SoldierU_SL_F","O_Soldier_GL_F","O_soldierU_repair_F","O_soldierU_medic_F","O_sniper_F","O_Soldier_A_F","O_Soldier_AA_F","O_Soldier_AAA_F","O_Soldier_AAR_F","O_Soldier_AAT_F","O_Soldier_AR_F","O_Soldier_AT_F","O_soldier_exp_F","O_Soldier_F","O_engineer_F","O_engineer_U_F","O_medic_F","O_recon_exp_F","O_recon_F","O_recon_JTAC_F","O_recon_LAT_F","O_recon_M_F","O_recon_medic_F","O_recon_TL_F","O_HeavyGunner_F"];	
	_ArmPool=	["O_APC_Tracked_02_AA_F","O_APC_Tracked_02_cannon_F","O_APC_Wheeled_02_rcws_F","O_MBT_02_arty_F","O_MBT_02_cannon_F"];
	_MotPool=	["O_Truck_02_covered_F","O_MRAP_02_gmg_F","O_MRAP_02_hmg_F","O_G_Offroad_01_armed_F"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
	_CHPool=	["O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F","O_Heli_Transport_04_covered_F"];//"O_Heli_Transport_04_bench_F"
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["O_Mortar_01_F","O_Mortar_01_F","O_static_AT_F","O_static_AA_F","O_GMG_01_high_F","O_HMG_01_high_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_crew_F"];
	_heliCrew=	["O_helicrew_F","O_helipilot_F"];
};
	case 1: {// INDEPENDENT AAF FACTION
	_InfPool=	["I_engineer_F","I_Soldier_A_F","I_Soldier_AA_F","I_Soldier_AAA_F","I_Soldier_AAR_F","I_Soldier_AAT_F","I_Soldier_AR_F","I_Soldier_AT_F","I_Soldier_exp_F","I_soldier_F","I_Soldier_GL_F","I_Soldier_repair_F","I_Spotter_F","I_Sniper_F"];
	_ArmPool=	["I_APC_Wheeled_03_cannon_F","I_APC_tracked_03_cannon_F","I_MBT_03_cannon_F"];
	_MotPool=	["I_MRAP_03_gmg_F","I_MRAP_03_hmg_F","I_Truck_02_transport_F","I_G_Offroad_01_armed_F"];//"I_MRAP_03_F",
	_ACHPool=	["I_Heli_light_03_F"];
	_CHPool=	["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","O_Heli_Transport_04_covered_F"];
	_uavPool=	["I_UAV_01_F","I_UAV_02_CAS_F","I_UGV_01_rcws_F"];
	_stPool=	["I_Mortar_01_F","I_GMG_01_high_F","I_HMG_01_high_F","I_HMG_01_F","I_static_AT_F","I_static_AA_F","I_GMG_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["I_crew_F"];
	_heliCrew=	["I_helicrew_F","I_helipilot_F"];
};
	case 2: {// IMDEPENDENT FIA FACTION
	_InfPool=	["I_G_Soldier_F","I_G_Soldier_lite_F","I_G_Soldier_SL_F","I_G_Soldier_TL_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_engineer_F","I_G_Soldier_exp_F","I_G_Soldier_GL_F","I_G_Soldier_M_F","I_G_Soldier_LAT_F","I_G_Soldier_A_F","I_G_officer_F","I_G_Sharpshooter_F"];
	_ArmPool=	["I_APC_tracked_03_cannon_F"];
	_MotPool=	["I_G_Offroad_01_armed_F","O_G_Offroad_01_armed_F"];
	_ACHPool=	["I_Heli_light_03_F"];
	_CHPool=	["I_Heli_Transport_02_F","I_Heli_light_03_unarmed_F","O_Heli_Transport_04_covered_F"];
	_uavPool=	[];
	_stPool=	["I_G_Mortar_01_F","I_GMG_01_high_F","I_HMG_01_high_F","I_HMG_01_F","I_static_AT_F","I_static_AA_F","I_GMG_01_F"];
	_shipPool=	["I_Boat_Transport_01_F","I_G_Boat_Transport_01_F","I_Boat_Armed_01_minigun_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["I_G_engineer_F"];
	_heliCrew=	["I_G_Soldier_SL_F","I_G_Soldier_F","I_G_Soldier_AR_F","I_G_medic_F","I_G_Soldier_LAT_F","I_G_Soldier_GL_F"];
};
	case 3: {// Massi Africian Rebel Army (EAST)
	_InfPool= 	["O_mas_afr_Soldier_F","O_mas_afr_Soldier_GL_F","O_mas_afr_soldier_AR_F","O_mas_afr_soldier_MG_F","O_mas_afr_Soldier_lite_F","O_mas_afr_Soldier_off_F","O_mas_afr_Soldier_SL_F","O_mas_afr_soldier_M_F","O_mas_afr_soldier_LAT_F","O_mas_afr_soldier_LAA_F","O_mas_afr_medic_F","O_mas_afr_soldier_repair_F","O_mas_afr_soldier_exp_F","O_mas_afr_rusadv1_F","O_mas_afr_rusadv2_F","O_mas_afr_rusadv3_F"];//"O_mas_afr_Soldier_TL_Fn"
	_ArmPool= 	["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	_MotPool= 	["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23","O_mas_cars_Ural_open"];
	_ACHPool= 	[];
	_CHPool= 	["O_mas_MI8"];
	_uavPool= 	[];
	_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_mas_afr_crew_F","O_mas_afr_soldier_AR_F","O_mas_afr_rusadv1_F"];
	_heliCrew=	["O_mas_afr_Soldier_GL_F","O_mas_afr_soldier_AR_F","O_mas_afr_rusadv1_F"];
};
	case 4: {// Massi Armed African Civilians (Rebel supporters EAST)
	_InfPool= 	["O_mas_afr_Rebel1_F","O_mas_afr_Rebel2_F","O_mas_afr_Rebel3_F","O_mas_afr_Rebel4_F","O_mas_afr_Rebel5_F","O_mas_afr_Rebel6_F","O_mas_afr_Rebel6a_F","O_mas_afr_Rebel7_F","O_mas_afr_Rebel8_F","O_mas_afr_Rebel8a_F","O_mas_afr_Rebel_amort_F","O_mas_afr_Rebel_smort_F"];
	_ArmPool= 	["O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	_MotPool= 	["O_mas_afr_GMG_01_F","O_mas_afr_Offroad_01s_armed_F","O_mas_afr_Offroad_01_armed_F","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_AGS30","B_mas_cars_Hilux_SPG9","B_mas_cars_Hilux_RKTS","B_mas_cars_Hilux_M2"];
	_ACHPool= 	[];
	_CHPool=	["O_mas_MI8"];
	_uavPool= 	[];
	_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=  ["O_mas_afr_Rebel1_F","O_mas_afr_Rebel2_F","O_mas_afr_Rebel8a_F","O_mas_afr_Rebel_amort_F"];
	_heliCrew=  ["O_mas_afr_Rebel1_F","O_mas_afr_Rebel2_F","O_mas_afr_Rebel3_F","O_mas_afr_Rebel4_F"];
};
	case 5: {// Massi CSAT Army (EAST)
	_InfPool= 	["O_mas_irahd_Army_F","O_mas_irahd_Army_SL_F","O_mas_irahd_Army_LITE_F","O_mas_irahd_Army_OFF_F","O_mas_irahd_Army_EXP_F","O_mas_irahd_Army_GL_F","O_mas_irahd_Army_TL_F","O_mas_irahd_Army_MG_F","O_mas_irahd_Army_AR_F","O_mas_irahd_Army_LAT_F","O_mas_irahd_Army_AT_F","O_mas_irahd_Army_AA_F","O_mas_irahd_Army_M_F","O_mas_irahd_Army_MEDIC_F","O_mas_irahd_Army_ENG_F","O_mas_irahd_Army_amort_F","O_mas_irahd_Army_smort_F","O_mas_irahd_SOF_F","O_mas_irahd_SOF_SL_F","O_mas_irahd_SOF_EXP_F","O_mas_irahd_SOF_MEDIC_F","O_mas_irahd_SOF_M_F","O_mas_irahd_SOF_MO_F"];
	_ArmPool= 	["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	_MotPool= 	["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23","O_mas_cars_Ural_open"];
	_ACHPool= 	[];
	_CHPool= 	["O_mas_MI8"];
	_uavPool= 	[];
	_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["O_mas_irahd_Army_CREW_F","O_mas_irahd_Army_GL_F","O_mas_irahd_Army_ENG_F","O_mas_irahd_Army_F","O_mas_irahd_Army_LAT_F","O_mas_irahd_Army_AR_F"];
	_heliCrew=	["O_mas_irahd_Army_Pilot_F","O_mas_irahd_SOF_F","O_mas_irahd_SOF_SL_F","O_mas_irahd_SOF_EXP_F","O_mas_irahd_SOF_MEDIC_F","O_mas_irahd_Army_MG_F"];
};
	case 6: {// Massi Middle East Insurgents (EAST)
	_InfPool= 	["O_mas_med_Rebelhd1_F","O_mas_med_Rebelhd8a_F","O_mas_med_Rebelhd1a_F","O_mas_med_Rebelhd2_F","O_mas_med_Rebelhd3_F","O_mas_med_Rebelhd4_F","O_mas_med_Rebelhd_amort_F","O_mas_med_Rebelhd_smort_F","O_mas_med_Rebelhd5_F","O_mas_med_Rebelhd6_F","O_mas_med_Rebelhd6a_F","O_mas_med_Rebelhd7_F","O_mas_med_Rebelhd8_F"];
	_ArmPool= 	["O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	_MotPool= 	["O_mas_afr_GMG_01_F","O_mas_afr_Offroad_01_armed_F","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_AGS30","B_mas_cars_Hilux_SPG9","B_mas_cars_Hilux_RKTS","B_mas_cars_Hilux_M2"];//"O_mas_afr_Offroad_01s_armed_F",
	_ACHPool= 	[];
	_CHPool=	["O_mas_MI8"];
	_uavPool= 	[];
	_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=  ["O_mas_med_Rebelhd1_F","O_mas_med_Rebelhd8a_F","O_mas_med_Rebelhd1a_F","O_mas_med_Rebelhd2_F","O_mas_med_Rebelhd3_F","O_mas_med_Rebelhd4_F","O_mas_med_Rebelhd_amort_F"];
	_heliCrew=  ["O_mas_med_Rebelhd_smort_F","O_mas_med_Rebelhd5_F","O_mas_med_Rebelhd6_F","O_mas_med_Rebelhd6a_F","O_mas_med_Rebelhd7_F","O_mas_med_Rebelhd8_F"];
};
	case 7: {// Massi Takistan Army (EAST)
	_InfPool= 	["O_mas_med_Armyhd_F","O_mas_med_Armyhd_SL_F","O_mas_med_Armyhd_OFF_F","O_mas_med_Armyhd_EXP_F","O_mas_med_Armyhd_GL_F","O_mas_med_Armyhd_TL_F","O_mas_med_Armyhd_MG_F","O_mas_med_Armyhd_AR_F","O_mas_med_Armyhd_LAT_F","O_mas_med_Armyhd_AT_F","O_mas_med_Armyhd_AA_F","O_mas_med_Armyhd_M_F","O_mas_med_Armyhd_MEDIC_F","O_mas_med_Armyhd_ENG_F","O_mas_med_Armyhd_amort_F","O_mas_med_Armyhd_smort_F","O_mas_med_ArmyhdSF_F","O_mas_med_ArmyhdSF_EXP_F","O_mas_med_ArmyhdSF_TL_F","O_mas_med_ArmyhdSF_M_F","O_mas_med_ArmyhdSF_MEDIC_F"];//"O_mas_med_Armyhd_UNA_F"
	_ArmPool= 	["O_mas_T55_OPF_01","O_mas_T72_OPF_01","O_mas_T72B_OPF_01","O_mas_T72B_Early_OPF_01","O_mas_T72BM_OPF_01","O_mas_T90_OPF_01","O_mas_ZSU_OPF_01","O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	_MotPool= 	["O_mas_BRDM2","O_mas_BTR60","O_mas_cars_UAZ_AGS30","O_mas_cars_UAZ_MG","O_mas_cars_UAZ_SPG9","O_mas_cars_Ural_ZU23","O_mas_cars_Ural_open"];
	_ACHPool= 	[];
	_CHPool= 	["O_mas_MI8"];
	_uavPool= 	[];
	_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F","O_mas_med_Armyhd_MEDIC_F","O_mas_med_Armyhd_ENG_F"];
	_crewPool=	["O_mas_med_Armyhd_CREW_F","O_mas_med_Armyhd_GL_F","O_mas_med_Armyhd_LAT_F","O_mas_med_Armyhd_ENG_F","O_mas_med_Armyhd_AR_F"];
	_heliCrew=	["O_mas_med_Armyhd_Pilot_F","O_mas_med_ArmyhdSF_TL_F","O_mas_med_ArmyhdSF_M_F","O_mas_med_ArmyhdSF_MEDIC_F"];
};
	case 8: {// Massi Takistan Insurgents (EAST)
	_InfPool= 	["O_mas_med_Insuhd_F","O_mas_med_Insuhd_SL_F","O_mas_med_Insuhd_OFF_F","O_mas_med_Insuhd_EXP_F","O_mas_med_Insuhd_GL_F","O_mas_med_Insuhd_TL_F","O_mas_med_Insuhd_MG_F","O_mas_med_Insuhd_AR_F","O_mas_med_Insuhd_LAT_F","O_mas_med_Insuhd_AT_F","O_mas_med_Insuhd_AA_F","O_mas_med_Insuhd_M_F","O_mas_med_Insuhd_MEDIC_F","O_mas_med_Insuhd_ENG_F","O_mas_med_Insuhd_amort_F","O_mas_med_Insuhd_smort_F"];
	_ArmPool= 	["O_mas_BMP1_OPF_01","O_mas_BMP1P_OPF_01","O_mas_BMP2_OPF_01","O_mas_BMP2_HQ_OPF_01"];
	_MotPool= 	["O_mas_afr_Offroad_01s_armed_F","O_mas_afr_Offroad_01_armed_F","B_mas_cars_Hilux_MG","B_mas_cars_Hilux_AGS30","B_mas_cars_Hilux_SPG9","B_mas_cars_Hilux_RKTS","B_mas_cars_Hilux_M2"];
	_ACHPool= 	[];
	_CHPool=	["O_mas_MI8"];
	_uavPool= 	[];
	_stPool= 	["O_mas_ZU23_AAF","O_mas_DSHKM_AAF","O_mas_AGS_AAF","O_mas_DSHkM_Mini_TriPod","O_mas_KORD_AAF","O_mas_KORD_high_AAF","O_mas_Metis_AAF","O_mas_SPG9_AAF","O_mas_Igla_AA_pod_AAF","O_mas_2b14_82mm_AAF","O_mas_D30_AAF","O_mas_D30_AT_AAF"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool= ["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=  ["O_mas_med_Insuhd_ENG_F","O_mas_med_Insuhd_MEDIC_F","O_mas_med_Insuhd_F","O_mas_med_Insuhd_GL_F","O_mas_med_Insuhd_AR_F","O_mas_med_Insuhd_LAT_F"];
	_heliCrew=  ["O_mas_med_Insuhd_MEDIC_F","O_mas_med_Insuhd_AA_F","O_mas_med_Insuhd_F","O_mas_med_Insuhd_OFF_F","O_mas_med_Insuhd_EXP_F"];
};
	case 9: {// Leight's Opfor Pack - Islamic State of Takistan and Sahrani
	_InfPool=	["LOP_ISTS_Infantry_TL","LOP_ISTS_Infantry_SL","LOP_ISTS_Infantry_Corpsman","LOP_ISTS_Infantry_AR","LOP_ISTS_Infantry_AT","LOP_ISTS_Infantry_Marksman","LOP_ISTS_Infantry_Engineer","LOP_ISTS_Infantry_GL","LOP_ISTS_Infantry_Rifleman_3","LOP_ISTS_Infantry_Rifleman","LOP_ISTS_Infantry_AT"];
	_ArmPool=	["LOP_ISTS_BMP1","LOP_ISTS_BMP2","LOP_ISTS_BTR60","LOP_ISTS_M113_W","LOP_ISTS_T72BA","LOP_ISTS_ZSU234"];
	_MotPool=	["LOP_ISTS_Landrover_M2","LOP_ISTS_M1025_W_M2","LOP_ISTS_M1025_W_Mk19","LOP_ISTS_M1025_D","LOP_ISTS_M998_D_4DR","LOP_ISTS_Offroad_M2"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
	_CHPool=	["LOP_SLA_Mi8MT_Cargo","LOP_SLA_Mi8MTV3_FAB","LOP_SLA_Mi8MTV3_UPK23"];
	_uavPool=	[];
	_stPool=	["LOP_ISTS_Static_Mk19_TriPod","LOP_ISTS_Static_M2","LOP_ISTS_Static_M2_MiniTripod"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["LOP_ISTS_Infantry_SL","LOP_ISTS_Infantry_AR","LOP_ISTS_Infantry_AT","LOP_ISTS_Infantry_Engineer","LOP_ISTS_Infantry_GL"];
	_heliCrew=	["LOP_ISTS_Infantry_SL","LOP_ISTS_Infantry_AR","LOP_ISTS_Infantry_AT","LOP_ISTS_Infantry_Engineer","LOP_ISTS_Infantry_GL"];
};
	case 10: {// Leight's Opfor Pack - Afghan militia
	_InfPool=	["LOP_AM_Infantry_TL","LOP_AM_Infantry_SL","LOP_AM_Infantry_Corpsman","LOP_AM_Infantry_AR","LOP_AM_Infantry_AT","LOP_AM_Infantry_Marksman","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL"];
	_ArmPool=	["LOP_AM_BTR60","LOP_AM_M113_W","LOP_AM_T72BA"];
	_MotPool=	["LOP_AM_Landrover_M2","LOP_AM_Offroad_M2","LOP_IA_M1025_W_Mk19","LOP_IA_M1025_W_M2"];
	_ACHPool=	["O_Heli_Attack_02_black_F","O_Heli_Attack_02_F"];
	_CHPool=	["LOP_SLA_Mi8MT_Cargo","LOP_SLA_Mi8MTV3_FAB","LOP_SLA_Mi8MTV3_UPK23"];
	_uavPool=	[];
	_stPool=	["LOP_ISTS_Static_Mk19_TriPod","LOP_ISTS_Static_M2","O_static_AT_F","LOP_ISTS_Static_M2_MiniTripod","O_static_AA_F","O_G_Mortar_01_F"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["I_diver_exp_F","I_diver_F","I_diver_TL_F"];
	_crewPool=	["LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL","LOP_AM_Infantry_AT"];
	_heliCrew=	["LOP_AM_Infantry_SL","LOP_AM_Infantry_Engineer","LOP_AM_Infantry_GL","LOP_AM_Infantry_AT","LOP_AM_Infantry_AR"];
};
	case 11: {// CUP Takistan Army
	_InfPool=	["CUP_O_TK_Soldier_AA","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AR","CUP_O_TK_Story_Aziz","CUP_O_TK_Commander","CUP_O_TK_Engineer","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_MG","CUP_O_TK_Medic","CUP_O_TK_Officer","CUP_O_TK_Pilot","CUP_O_TK_Soldier","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Soldier_AKS_74_GOSHAWK","CUP_O_TK_Spotter","CUP_O_TK_Soldier_SL","CUP_O_TK_SpecOps_MG","CUP_O_TK_SpecOps","CUP_O_TK_SpecOps_TL"];
	_ArmPool=	["CUP_O_BMP2_ZU_TKA","CUP_O_BMP_HQ_TKA","CUP_O_BMP1_TKA","CUP_O_BMP1P_TKA","CUP_O_BMP2_TKA","CUP_O_T34_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];//"CUP_O_M113_Med_TKA",
	_MotPool=	["CUP_O_BRDM2_TKA","CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_BTR60_TK","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA","CUP_O_Ural_ZU23_TKA","CUP_O_BTR40_MG_TKA"];
	_CHPool=	["CUP_O_UH1H_TKA","CUP_O_Mi17_TK"];
	_uavPool=	[];
	_stPool=	["CUP_O_ZU23_TK","O_HMG_01_high_F","CUP_O_AGS_TK","CUP_O_2b14_82mm_TK","CUP_O_D30_TK","CUP_O_D30_AT_TK","CUP_O_SPG9_TK"];//"CUP_O_DSHkM_MiniTriPod_TK","CUP_O_DSHKM_TK"
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["CUP_O_TK_Crew"];
	_heliCrew=	["CUP_O_TK_Soldier_AA","CUP_O_TK_Soldier_AAT","CUP_O_TK_Soldier_AMG","CUP_O_TK_Soldier_HAT","CUP_O_TK_Soldier_AR","CUP_O_TK_Commander","CUP_O_TK_Engineer","CUP_O_TK_Soldier_GL","CUP_O_TK_Soldier_MG","CUP_O_TK_Medic","CUP_O_TK_Officer","CUP_O_TK_Pilot","CUP_O_TK_Soldier","CUP_O_TK_Soldier_Backpack","CUP_O_TK_Soldier_LAT","CUP_O_TK_Soldier_AT","CUP_O_TK_Sniper","CUP_O_TK_Sniper_KSVK","CUP_O_TK_Soldier_AKS_74_GOSHAWK","CUP_O_TK_Spotter","CUP_O_TK_Soldier_SL","CUP_O_TK_SpecOps_MG","CUP_O_TK_SpecOps","CUP_O_TK_SpecOps_TL"];
};
	case 12: {// CUP Takistan Militia
	_InfPool=	["CUP_O_TK_INS_Soldier_AA","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Bomber","CUP_O_TK_INS_Mechanic","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_Enfield","CUP_O_TK_INS_Soldier_AAT","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Commander"];
	_ArmPool=	["CUP_O_T72_TKA","CUP_O_M113_TKA","CUP_O_T55_TK","CUP_O_T72_TKA","CUP_O_T55_TK","CUP_O_M113_TKA","CUP_O_ZSU23_TK"];
	_MotPool=	["CUP_O_LR_MG_TKA","CUP_O_LR_SPG9_TKA","CUP_O_UAZ_MG_TKA","CUP_O_UAZ_AGS30_TKA","CUP_O_UAZ_SPG9_TKA"];
	_ACHPool=	["CUP_O_Mi17_TK","CUP_O_Mi24_D_TK"];
	_CHPool=	["CUP_O_UH1H_TKA","CUP_O_Mi17_TK"];
	_uavPool=	[];
	_stPool=	["CUP_O_ZU23_TK_INS","CUP_O_D30_TK_INS","CUP_O_D30_AT_TK_INS","CUP_O_DSHKM_TK_INS","CUP_O_DSHkM_MiniTriPod_TK_INS","CUP_O_2b14_82mm_TK_INS","CUP_O_SPG9_TK_INS","CUP_O_AGS_TK_INS"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["CUP_O_TK_INS_Soldier"];
	_crewPool=	["CUP_O_TK_INS_Soldier"];
	_heliCrew=	["CUP_O_TK_INS_Soldier_AA","CUP_O_TK_INS_Soldier_AR","CUP_O_TK_INS_Guerilla_Medic","CUP_O_TK_INS_Soldier_MG","CUP_O_TK_INS_Bomber","CUP_O_TK_INS_Mechanic","CUP_O_TK_INS_Soldier_GL","CUP_O_TK_INS_Soldier","CUP_O_TK_INS_Soldier_FNFAL","CUP_O_TK_INS_Soldier_Enfield","CUP_O_TK_INS_Soldier_AAT","CUP_O_TK_INS_Soldier_AT","CUP_O_TK_INS_Sniper","CUP_O_TK_INS_Soldier_TL","CUP_O_TK_INS_Commander"];
};
	case 13: {// RHS - Armed Forces of the Russian Federation MSV
	_InfPool=	["rhs_msv_driver_armored","rhs_msv_rifleman","rhs_msv_efreitor","rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_machinegunner_assistant","rhs_msv_at","rhs_msv_strelok_rpg_assist","rhs_msv_marksman","rhs_msv_officer_armored","rhs_msv_officer","rhs_msv_junior_sergeant","rhs_msv_sergeant","rhs_msv_engineer","rhs_msv_driver","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT"];
	_ArmPool=	["rhs_bmp1_msv","rhs_bmp1d_msv","rhs_bmp1k_msv","rhs_bmp1p_msv","rhs_bmp2e_msv","rhs_bmp2_msv","rhs_bmp2d_msv","rhs_bmp2k_msv","rhs_bmp3_msv","rhs_bmp3_late_msv","rhs_bmp3m_msv","rhs_bmp3mera_msv","rhs_brm1k_msv","rhs_Ob_681_2","rhs_prp3_msv","rhs_t80u","rhs_t80bv","rhs_t80a","rhs_t72bc_tv","rhs_t72bb_tv","rhs_zsu234_aa","rhs_t90_tv","rhs_t90a_tv"];
	_MotPool=	["rhs_btr60_msv","rhs_btr70_msv","rhs_btr80_msv","rhs_btr80a_msv","rhs_tigr_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_sts_3camo_msv","rhs_tigr_m_3camo_msv","rhs_gaz66_zu23_msv","RHS_Ural_Zu23_MSV_01","RHS_Ural_Open_MSV_01"];
	_ACHPool=	["RHS_Mi24P_vvsc","RHS_Mi24V_vvsc"];
	_CHPool=	["Cha_Mi24_P","Cha_Mi24_V","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["rhs_pchela1t_vvs"];
	_stPool=	["RHS_ZU23_MSV","rhs_KORD_high_MSV","rhs_2b14_82mm_msv","rhs_Igla_AA_pod_msv","RHS_AGS30_TriPod_MSV","rhs_KORD_MSV","RHS_NSV_TriPod_MSV","rhs_SPG9M_MSV","rhs_D30_msv","rhs_D30_at_msv","rhs_Kornet_9M133_2_msv"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhs_msv_crew"];
	_heliCrew=	["rhs_msv_grenadier","rhs_msv_machinegunner","rhs_msv_at","rhs_msv_rifleman","rhs_msv_engineer","rhs_msv_aa","rhs_msv_medic","rhs_msv_LAT","rhs_msv_marksman"];
};
	case 14: {// RHS GREF - Chenarus Ground Forces (RESISTANCE)
	_InfPool=	["rhsgref_cdf_reg_rifleman","rhsgref_cdf_reg_rifleman_m70","rhsgref_cdf_reg_rifleman_lite","rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_machinegunner","rhsgref_cdf_reg_marksman","rhsgref_cdf_reg_general","rhsgref_cdf_reg_officer","rhsgref_cdf_reg_squadleader","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_specialist_aa","rhsgref_cdf_reg_medic","rhsgref_cdf_reg_engineer","rhsgref_cdf_para_rifleman","rhsgref_cdf_para_rifleman_lite","rhsgref_cdf_para_autorifleman","rhsgref_cdf_para_machinegunner","rhsgref_cdf_para_marksman","rhsgref_cdf_para_officer","rhsgref_cdf_para_squadleader","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_engineer"];
	_ArmPool=	["rhsgref_cdf_t72ba_tv","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1","rhsgref_cdf_bmd1p","rhsgref_cdf_bmd1pk","rhsgref_cdf_bmd2","rhsgref_cdf_bmd2k","rhsgref_cdf_bmp1","rhsgref_cdf_bmp1d","rhsgref_cdf_bmp1k","rhsgref_cdf_bmp1p","rhsgref_cdf_bmp2e","rhsgref_cdf_bmp2","rhsgref_cdf_bmp2d","rhsgref_cdf_gaz66_zu23"];
	_MotPool=	["rhsgref_cdf_btr60","rhsgref_cdf_btr70","rhsgref_BRDM2","rhsgref_BRDM2_HQ","rhsgref_BRDM2_ATGM","rhsgref_c_a2port_armor","rhsgref_cdf_reg_uaz_ags","rhsgref_cdf_reg_uaz_dshkm","rhsgref_cdf_reg_uaz_spg9"];
	_ACHPool=	["rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh"];
	_CHPool=	["rhsgref_cdf_reg_Mi8amt"];
	_uavPool=	[];
	_stPool=	["RHSgref_cdf_ZU23","rhsgref_cdf_reg_M252","rhsgref_cdf_reg_d30","rhsgref_cdf_reg_d30_at","rhsgref_cdf_Igla_AA_pod","rhsgref_cdf_AGS30_TriPod","rhsgref_cdf_DSHKM","rhsgref_cdf_DSHKM_Mini_TriPod","rhsgref_cdf_NSV_TriPod","rhsgref_cdf_SPG9","rhsgref_cdf_SPG9M"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhsgref_cdf_reg_crew","rhsgref_cdf_para_crew"];
	_heliCrew=	["rhsgref_cdf_reg_grenadier","rhsgref_cdf_reg_grenadier_rpg","rhsgref_cdf_reg_machinegunner","rhs_msv_at","rhsgref_cdf_reg_rifleman","rhsgref_cdf_para_engineer","rhsgref_cdf_para_specialist_aa","rhsgref_cdf_para_medic","rhsgref_cdf_para_grenadier_rpg","rhsgref_cdf_reg_marksman"];
};
	case 15: {// RHS GREF - Nationalist Troops (RESISTANCE)
	_InfPool=	["rhsgref_nat_rifleman","rhsgref_nat_rifleman_akms","rhsgref_nat_militiaman_kar98k","rhsgref_nat_rifleman_m92","rhsgref_nat_grenadier","rhsgref_nat_warlord","rhsgref_nat_commander","rhsgref_nat_machinegunner","rhsgref_nat_grenadier_rpg","rhsgref_nat_specialist_aa","rhsgref_nat_hunter","rhsgref_nat_scout","rhsgref_nat_saboteur","rhsgref_nat_medic"];
	_ArmPool=	["rhs_bmd1_chdkz","rhs_bmd2_chdkz"];
	_MotPool=	["rhsgref_nat_btr70","rhsgref_nat_uaz_ags","rhsgref_nat_uaz_dshkm","rhsgref_nat_uaz_spg9","rhsgref_nat_ural_Zu23"];
	_ACHPool=	["rhsgref_mi24g_UPK23","rhsgref_cdf_Mi35","rhsgref_cdf_reg_Mi17Sh"];
	_CHPool=	["rhsgref_cdf_reg_Mi8amt"];
	_uavPool=	[];
	_stPool=	["rhsgref_nat_ZU23","rhsgref_nat_AGS30_TriPod","rhsgref_nat_DSHKM","rhsgref_nat_DSHKM_Mini_TriPod","rhsgref_nat_NSV_TriPod","rhsgref_nat_SPG9","rhsgref_nat_2b14","rhsgref_nat_d30","rhsgref_nat_d30_at"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["rhsgref_nat_crew"];
	_heliCrew=	["rhsgref_nat_grenadier","rhsgref_nat_grenadier_rpg","rhsgref_nat_machinegunner","rhsgref_nat_hunter","rhsgref_nat_saboteur","rhsgref_nat_medic","rhsgref_nat_rifleman_akms"];
};
	case 16: {// ISC - Syrian Arab Army (Opfor)
	_InfPool=	["isc_saa_officer_o","isc_saa_grenadier_o","isc_saa_rifleman_o","isc_saa_machinegunner_o","isc_saa_sniper_o","isc_saa_at_o","isc_saa_medic_o","isc_saa_sapper_o","isc_saa_crewman_o"];
	_ArmPool=	["isc_saa_BTR60_o","isc_saa_BMP1_o","isc_saa_BMP1P_o","isc_saa_BMP2_o","isc_saa_T55_o","isc_saa_T72_o","isc_saa_T72M_o","isc_saa_ZSU_o"];
	_MotPool=	["isc_is_offroad_o","isc_is_offroad_M2_o","isc_is_hilux_MG_o","isc_is_hilux_M2_o","isc_is_hilux_AGS30_o","isc_is_hilux_SPG9_o","isc_is_hilux_Unarmed_o","isc_is_LR_M2_o","isc_is_LR_Mk19_o","isc_is_LR_TOW_o","isc_is_LR_SPG9_o","isc_is_UAZ_MG_o","isc_is_UAZ_M2_o","isc_is_UAZ_AGS30_o","isc_is_UAZ_SPG9_o"];
	_ACHPool=	["O_mas_MI8MTV","O_mas_MI24V"];
	_CHPool=	["O_mas_MI8","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["isc_is_ZU23_o","isc_is_DSHKM_o","isc_is_KORD_high_o","isc_is_KORD_o","isc_is_AGS_o","isc_is_GMG_o","isc_is_M2Static_o","isc_is_MK19_TriPod_o","isc_is_Metis_o","isc_is_SPG9_o","isc_is_Igla_o","isc_is_Stinger_o","isc_is_TOW_o","isc_is_2b14_82mm_o","isc_is_M252_o","isc_is_D30_o","isc_is_D30_AT_o","isc_is_M119_o","isc_is_M119_AT_o"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["isc_saa_crewman_o"];
	_heliCrew=	["isc_saa_grenadier_o","isc_saa_machinegunner_o","isc_saa_at_o"];
};
	case 17: {// ISC - Islamic State (Opfor)
	_InfPool=	["isc_is_team_leader_o","isc_is_squad_leader_o","isc_is_grenadier_o","isc_is_rifleman_o","isc_is_militaman_o","isc_is_irregular_o","isc_is_autorifleman_o","isc_is_machinegunner_o","isc_is_sniper_o","isc_is_at_o","isc_is_medic_o","isc_is_sapper_o","isc_is_crewman_o"];
	_ArmPool=	["isc_is_BMP1_o","isc_is_BMP1P_o","isc_is_BMP2_o","isc_is_T34_o","isc_is_T55_o","isc_is_T72e_o","isc_is_T72_o","isc_is_T72B_o","isc_is_T72BM_o","isc_is_ZSU_o"];
	_MotPool=	["isc_is_offroad_o","isc_is_offroad_M2_o","isc_is_hilux_MG_o","isc_is_hilux_M2_o","isc_is_hilux_AGS30_o","isc_is_hilux_SPG9_o","isc_is_hilux_Unarmed_o","isc_is_LR_M2_o","isc_is_LR_Mk19_o","isc_is_LR_TOW_o","isc_is_LR_SPG9_o","isc_is_UAZ_MG_o","isc_is_UAZ_M2_o","isc_is_UAZ_AGS30_o","isc_is_UAZ_SPG9_o","isc_is_Ural_ZU23_o"];
	_ACHPool=	["O_mas_MI8MTV","O_mas_MI24V"];
	_CHPool=	["O_mas_MI8","O_Heli_Light_02_F","O_Heli_Light_02_unarmed_F"];
	_uavPool=	["O_UAV_01_F","O_UAV_02_CAS_F","O_UGV_01_rcws_F"];
	_stPool=	["isc_is_ZU23_o","isc_is_DSHKM_o","isc_is_KORD_high_o","isc_is_AGS_o","isc_is_GMG_o","isc_is_M2Static_o","isc_is_MK19_TriPod_o","isc_is_Metis_o","isc_is_SPG9_o","isc_is_Igla_o","isc_is_Stinger_o","isc_is_TOW_o","isc_is_2b14_82mm_o","isc_is_M252_o","isc_is_D30_o","isc_is_D30_AT_o","isc_is_M119_o","isc_is_M119_AT_o"];
	_shipPool=	["O_Boat_Armed_01_hmg_F","O_Boat_Transport_01_F"];
	_diverPool=	["O_diver_exp_F","O_diver_F","O_diver_TL_F"];
	_crewPool=	["isc_is_crewman_o"];
	_heliCrew=	["isc_is_grenadier_o","isc_is_machinegunner_o","isc_is_at_o"];};
};

////////////////////////////////////////////////////////////////////////////////////////
if (_type isEqualTo 0) then {
	for "_i" from 0 to 5 do{
	_unit=selectRandom _InfPool;
	_tempArray pushBack _unit;};
};

if (_type isEqualTo 1) then {_tempArray=_diverPool;};

// CREATE ARMOUR & CREW
if (_type isEqualTo 2) then {
	_tempUnit=selectRandom _ArmPool;
	_temparray pushBack _tempUnit;
	_crew=selectRandom _crewPool;
	_temparray pushBack _crew;
};

// CREATE ATTACK CHOPPER & CREW	
if (_type isEqualTo 3) then {
	_tempUnit=selectRandom _ACHPool;
	_temparray pushBack _tempUnit;
	_crew=selectRandom _heliCrew;
	_temparray pushBack _crew;
};

// CREATE TRANSPORT CHOPPER & CREW
if (_type isEqualTo 4) then {
	_tempUnit=selectRandom _CHPool;
	_temparray pushBack _tempUnit;
	_crew=selectRandom _heliCrew;
	_temparray pushBack _crew;
};

// CREATE STATIC & CREW
if (_type isEqualTo 5) then {
	_tempUnit=selectRandom _stPool;
	_temparray pushBack _tempUnit;
	_crew=selectRandom _crewPool;
	_temparray pushBack _crew;
};
if (_type isEqualTo 6) then {_tempArray=selectRandom _uavPool;};

// CREATE TRANSPORT & CREW
if (_type isEqualTo 7) then {
	_tempUnit=selectRandom _MotPool;
	_temparray pushBack _tempUnit;
	_crew=selectRandom _crewPool;
	_temparray pushBack _crew;
};

// CREATE BOAT & DIVER CREW
if (_type isEqualTo 8) then {
	_tempUnit=selectRandom _shipPool;
	_temparray pushBack _tempUnit;
	_crew=selectRandom _diverPool;
	_temparray pushBack _crew;
};

// CREATE CARGO
if (_type isEqualTo 9) then {
	for "_i" from 0 to 5 do{
		_unit=selectRandom _InfPool;
		_temparray pushBack _unit;
	};
};

// CREATE DIVER CARGO
if (_type isEqualTo 10) then {
	for "_i" from 0 to 5 do{
		_unit=selectRandom _diverPool;
		_temparray pushBack _unit;
	};
};

//hint format ["%1",_tempArray];
_tempArray
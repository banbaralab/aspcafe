% A version that fixes duplicated V's
% Hello ASP!

% VariationPoint & Variant
vp_def("ADAPTIVE_CRUISE_CONTROL").
v_def("ACC","ADAPTIVE_CRUISE_CONTROL",5).

vp_def("ADJUSTABLE_SPEED_LIMITER").
v_def("ASL","ADJUSTABLE_SPEED_LIMITER",1).

vp_def("ANTILOCK_BRAKE_SYSTEM").
v_def("ABS","ANTILOCK_BRAKE_SYSTEM",5).

vp_def("AUTONOMOUS_EMERGENCY_BRAKE").
v_def("AEB_WITH_ACC+LKAS+LDW+LDM_(set-A)","AUTONOMOUS_EMERGENCY_BRAKE",10).
v_def("AEB_WITH_ACC+LKAS+LDW+LDM_TYPE-A","AUTONOMOUS_EMERGENCY_BRAKE",10).
v_def("AEB_WITH_ACC+LKAS+LDW+LDM_TYPE-B","AUTONOMOUS_EMERGENCY_BRAKE",10).

vp_def("AUTONOMOUS_EMERGENCY_STEERING").
v_def("AES","AUTONOMOUS_EMERGENCY_STEERING",2).

vp_def("BODY_TYPE").
v_def("FIVE_DOOR_BODY","BODY_TYPE",350).

vp_def("BRAKE_OVERRIDE_SYSTEM").
v_def("BOS_J","BRAKE_OVERRIDE_SYSTEM",0).
v_def("BOS_US","BRAKE_OVERRIDE_SYSTEM",0).

vp_def("CROSS_TRAFFIC_ALART").
v_def("CTA","CROSS_TRAFFIC_ALART",2).

vp_def("CRUISE_CONTROL").
v_def("_CRUISE_CONTROL","CRUISE_CONTROL",2).
v_def("_CRUISE_CONTROL_(set-A)","CRUISE_CONTROL",2).
v_def("_CRUISE_CONTROL_(set-B)","CRUISE_CONTROL",2).

vp_def("CVT_MODEL").
v_def("TYPE-A_(2WD)","CVT_MODEL", 0).
v_def("TYPE-B_(2WD)","CVT_MODEL", 0).
v_def("TYPE-C1_(2WD)","CVT_MODEL", 0).
v_def("TYPE-C2_(4WD)","CVT_MODEL", 0).
v_def("TYPE-D1_(2WD)","CVT_MODEL", 0).
v_def("TYPE-D2_(2WD)","CVT_MODEL", 0).
v_def("TYPE-D3_(2WD)","CVT_MODEL", 0).
v_def("TYPE-E_(2WD)","CVT_MODEL", 0).

vp_def("DCT_MODEL").
v_def("TYPE-A","DCT_MODEL", 0).
v_def("TYPE-B","DCT_MODEL", 0).
v_def("TYPE-C_(4WD)","DCT_MODEL", 0).

vp_def("DESTINATION").
v_def("A","DESTINATION", 0).
v_def("B","DESTINATION", 0).
v_def("C","DESTINATION", 0).
v_def("D","DESTINATION", 0).
v_def("E","DESTINATION", 0).
v_def("F","DESTINATION", 0).
v_def("G","DESTINATION", 0).
v_def("H","DESTINATION", 0).
v_def("J","DESTINATION", 0).
v_def("K","DESTINATION", 0).
v_def("M","DESTINATION", 0).
v_def("N","DESTINATION", 0).
v_def("P","DESTINATION", 0).
v_def("Q","DESTINATION", 0).
v_def("T","DESTINATION", 0).
v_def("U","DESTINATION", 0).
v_def("V","DESTINATION", 0).
v_def("X","DESTINATION", 0).
v_def("Y","DESTINATION", 0).
v_def("Z","DESTINATION", 0).

vp_def("DIFF_MODEL").
v_def("CONV_DIFF","DIFF_MODEL", 0).

vp_def("DRIVE_TYPE").
v_def("2WD","DRIVE_TYPE",125).
v_def("4WD","DRIVE_TYPE",200).

vp_def("E-DIFF_MODEL").
v_def("E-DIFF","E-DIFF_MODEL", 0).

vp_def("E_DEST-A").
v_def("MODEL_562_1.5L_DOHC_A","E_DEST-A", 0).

vp_def("E_DEST-B").
v_def("MODEL_562_1.5L_DOHC_B","E_DEST-B", 0).

vp_def("E_DEST-C").
v_def("MODEL_231_1.3L_DOHC_C","E_DEST-C", 0).
v_def("MODEL_522_1.5L_DOHC_C","E_DEST-C", 0).

vp_def("E_DEST-D").
v_def("MODEL_463_1.5L_SOHC_D","E_DEST-D", 0).

vp_def("E_DEST-E").
v_def("MODEL_231_1.3L_DOHC_E","E_DEST-E", 0).
v_def("MODEL_522_1.5L_DOHC_E","E_DEST-E", 0).

vp_def("E_DEST-F").
v_def("MODEL_532_1.5L_DOHC_F","E_DEST-F", 0).

vp_def("E_DEST-G").
v_def("MODEL_192_1.2L_SOHC_G","E_DEST-G", 0).
v_def("MODEL_824_DIESEL_G","E_DEST-G", 0).

vp_def("E_DEST-H").
v_def("MODEL_463_1.5L_SOHC_H","E_DEST-H", 0).

vp_def("E_DEST-J").
v_def("MODEL_231_1.3L_DOHC_J","E_DEST-J", 0).
v_def("MODEL_261_1.3L_DOHC_J","E_DEST-J", 0).
v_def("MODEL_522_1.5L_DOHC_J","E_DEST-J", 0).
v_def("MODEL_552_1.5L_DOHC_J","E_DEST-J", 0).
v_def("MODEL_758_HEV_J","E_DEST-J", 0).
v_def("MODEL_768_HEV_J","E_DEST-J", 0).

vp_def("E_DEST-K").
v_def("MODEL_483_1.5L_SOHC_K","E_DEST-K", 0).

vp_def("E_DEST-M").
v_def("MODEL_463_1.5L_SOHC_M","E_DEST-M", 0).
v_def("MODEL_778_HEV_M","E_DEST-M", 0).

vp_def("E_DEST-N").
v_def("MODEL_192_1.2L_SOHC_N","E_DEST-N", 0).
v_def("MODEL_463_1.5L_SOHC_N","E_DEST-N", 0).
v_def("MODEL_522_1.5L_DOHC_N","E_DEST-N", 0).
v_def("MODEL_552_1.5L_DOHC_N","E_DEST-N", 0).

vp_def("E_DEST-P").
v_def("MODEL_443_1.5L_SOHC_P","E_DEST-P", 0).
v_def("MODEL_473_1.5L_SOHC_P","E_DEST-P", 0).
v_def("MODEL_562_1.5L_DOHC_P","E_DEST-P", 0).

vp_def("E_DEST-Q").
v_def("MODEL_473_1.5L_SOHC_Q","E_DEST-Q", 0).

vp_def("E_DEST-T").
v_def("MODEL_231_1.3L_DOHC_T","E_DEST-T", 0).
v_def("MODEL_261_1.3L_DOHC_T","E_DEST-T", 0).

vp_def("E_DEST-U").
v_def("MODEL_231_1.3L_DOHC_U","E_DEST-U", 0).
v_def("MODEL_261_1.3L_DOHC_U","E_DEST-U", 0).
v_def("MODEL_522_1.5L_DOHC_U","E_DEST-U", 0).
v_def("MODEL_552_1.5L_DOHC_U","E_DEST-U", 0).

vp_def("E_DEST-V").
v_def("MODEL_473_1.5L_SOHC_V","E_DEST-V", 0).

vp_def("E_DEST-X").
v_def("MODEL_562_1.5L_DOHC_X","E_DEST-X", 0).

vp_def("E_DEST-Y").
v_def("MODEL_522_1.5L_DOHC_Y","E_DEST-Y", 0).
v_def("MODEL_552_1.5L_DOHC_Y","E_DEST-Y", 0).

vp_def("E_DEST-Z").
v_def("MODEL_231_1.3L_DOHC_Z","E_DEST-Z", 0).
v_def("MODEL_261_1.3L_DOHC_Z","E_DEST-Z", 0).
v_def("MODEL_453_1.5L_SOHC_Z","E_DEST-Z", 0).
v_def("MODEL_522_1.5L_DOHC_Z","E_DEST-Z", 0).
v_def("MODEL_552_1.5L_DOHC_Z","E_DEST-Z", 0).

vp_def("ECU_IMMOBILIZER").
v_def("_ECU_IMMOBILIZER","ECU_IMMOBILIZER",4).

vp_def("ELECTRONIC_STABILITY_CONTROL").
v_def("ESC","ELECTRONIC_STABILITY_CONTROL",5).

vp_def("ENGINE_MODEL").
v_def("MODEL_192_1.2L_SOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_231_1.3L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_241_1.3L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_251_1.3L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_261_1.3L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_443_1.5L_SOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_453_1.5L_SOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_463_1.5L_SOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_473_1.5L_SOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_483_1.5L_SOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_512_1.5L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_522_1.5L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_532_1.5L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_5421.5L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_552_1.5L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_562_1.5L_DOHC@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_738_HEV@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_748_HEV@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_758_HEV@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_768_HEV@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_778_HEV@ENGINE_MODEL","ENGINE_MODEL", 0).
v_def("MODEL_824_DIESEL@ENGINE_MODEL","ENGINE_MODEL", 0).

vp_def("ENGINE_TYPE").
v_def("1.3L_DOHC","ENGINE_TYPE",130).
v_def("1.5L_DOHC","ENGINE_TYPE",140).
v_def("1.5L_SOHC","ENGINE_TYPE",120).
v_def("1.8L_DOHC_DIESEL","ENGINE_TYPE",160).
v_def("HEV","ENGINE_TYPE",100).

vp_def("FORWARD_COLLISION_WARNING").
v_def("FCW","FORWARD_COLLISION_WARNING",2).

vp_def("GLASS_ROOF").
v_def("_GLASS_ROOF","GLASS_ROOF",70).

vp_def("GRADE").
v_def("Luxury","GRADE", 0).
v_def("Sports","GRADE", 0).
v_def("Standard","GRADE", 0).

vp_def("HANDLE").
v_def("LEFT_HANDLE","HANDLE",30).
v_def("RIGHT_HANDLE","HANDLE",30).

vp_def("INTELLIGENT_SPEED_ASSISTANCE").
v_def("ISA_(set-A)","INTELLIGENT_SPEED_ASSISTANCE",2).
v_def("ISA_(set-B)","INTELLIGENT_SPEED_ASSISTANCE",2).

vp_def("LANE_DEPARTURE_MITIGATION").
v_def("LDM","LANE_DEPARTURE_MITIGATION",5).

vp_def("LANE_DEPARTURE_WARNING").
v_def("LDW","LANE_DEPARTURE_WARNING",2).

vp_def("LANE_KEEP_ASSIST_SYSTEM").
v_def("LKAS","LANE_KEEP_ASSIST_SYSTEM",5).

vp_def("LANE_WATCH").
v_def("LW","LANE_WATCH",2).

vp_def("MT_MODEL").
v_def("5MT_TYPE-A","MT_MODEL", 0).
v_def("5MT_TYPE-B","MT_MODEL", 0).
v_def("5MT_TYPE-C","MT_MODEL", 0).
v_def("5MT_TYPE-D","MT_MODEL", 0).
v_def("5MT_TYPE-E","MT_MODEL", 0).
v_def("6MT_TYPE-A","MT_MODEL", 0).
v_def("6MT_TYPE-B","MT_MODEL", 0).
v_def("6MT_TYPE-C","MT_MODEL", 0).

vp_def("NAVIGATION").
v_def("AUDIO_NAVI_TYPE-A","NAVIGATION",3).
v_def("AUDIO_NAVI_TYPE-B","NAVIGATION",3).

vp_def("POWER_STEERING").
v_def("EPS","POWER_STEERING",10).

vp_def("ROLL_BAR").
v_def("_ROLL_BAR","ROLL_BAR",10).

vp_def("set-A_(5MT)").
v_def("5MT_A","set-A_(5MT)",48).
v_def("CVT_A(5MT)","set-A_(5MT)",80).

vp_def("set-A_(6MT)").
v_def("6MT_A","set-A_(6MT)",55).
v_def("CVT_A(6MT)","set-A_(6MT)",80).

vp_def("set-A_(J_TYPE)").
v_def("SIDE_AIRBAG_EU_TYPE@set-A","set-A_(J_TYPE)",10).
v_def("SIDE_AIRBAG_J_TYPE-A@set-A","set-A_(J_TYPE)",8).
v_def("SIDE_AIRBAG_J_TYPE-B@set-A","set-A_(J_TYPE)",8).

vp_def("set-A_(US_TYPE)").
v_def("SIDE_AIRBAG_US_TYPE-A@set-A","set-A_(US_TYPE)",9).
v_def("SIDE_AIRBAG_US_TYPE-B@set-A","set-A_(US_TYPE)",9).

vp_def("SIDE_AIRBAG").
v_def("SIDE_AIRBAG_EU_TYPE","SIDE_AIRBAG",10).
v_def("SIDE_AIRBAG_J_TYPE-A","SIDE_AIRBAG",8).
v_def("SIDE_AIRBAG_J_TYPE-B","SIDE_AIRBAG",8).
v_def("SIDE_AIRBAG_US_TYPE-A","SIDE_AIRBAG",9).
v_def("SIDE_AIRBAG_US_TYPE-B","SIDE_AIRBAG",9).

vp_def("SIDE_CURTAIN_AIRBAG").
v_def("SIDE_CURTAIN_AIRBAG_J_TYPE","SIDE_CURTAIN_AIRBAG",8).
v_def("SIDE_CURTAIN_AIRBAG_US_TYPE-A","SIDE_CURTAIN_AIRBAG",10).
v_def("SIDE_CURTAIN_AIRBAG_US_TYPE-B","SIDE_CURTAIN_AIRBAG",10).

vp_def("SMART_KEY").
v_def("_SMART_KEY","SMART_KEY",5).
v_def("_SMART_KEY_(set-A)","SMART_KEY",5).

vp_def("SRS_(ASSISTANT)").
v_def("AS_SRS_DUAL","SRS_(ASSISTANT)",6).
v_def("AS_SRS_SINGLE","SRS_(ASSISTANT)",4).

vp_def("SRS_(DRIVER)").
v_def("DR_SRS_DUAL","SRS_(DRIVER)",6).
v_def("DR_SRS_SINGLE_TYPE-A","SRS_(DRIVER)",2).
v_def("DR_SRS_SINGLE_TYPE-B","SRS_(DRIVER)",4).

vp_def("SUNROOF").
v_def("_SUNROOF","SUNROOF",35).

vp_def("T_DEST-A").
v_def("6MT_TYPE-A_A","T_DEST-A", 0).
v_def("TYPE-A_(2WD)_A","T_DEST-A", 0).

vp_def("T_DEST-B").
v_def("6MT_TYPE-A_B","T_DEST-B", 0).
v_def("TYPE-A_(2WD)_B","T_DEST-B", 0).

vp_def("T_DEST-C").
v_def("6MT_TYPE-B_C","T_DEST-C", 0).
v_def("TYPE-C1_(2WD)_C","T_DEST-C", 0).

vp_def("T_DEST-D").
v_def("TYPE-D1_(2WD)_D","T_DEST-D", 0).

vp_def("T_DEST-E").
v_def("6MT_TYPE-B_E","T_DEST-E", 0).
v_def("TYPE-C1_(2WD)_E","T_DEST-E", 0).

vp_def("T_DEST-F").
v_def("5MT_TYPE-A_F","T_DEST-F", 0).
v_def("TYPE-D3_(2WD)_F","T_DEST-F", 0).

vp_def("T_DEST-G").
v_def("5MT_TYPE-D_G","T_DEST-G", 0).
v_def("6MT_TYPE-C_G","T_DEST-G", 0).
v_def("TYPE-E_(2WD)_G","T_DEST-G", 0).

vp_def("T_DEST-H").
v_def("5MT_TYPE-B_H","T_DEST-H", 0).
v_def("TYPE-D1_(2WD)_H","T_DEST-H", 0).

vp_def("T_DEST-J").
v_def("5MT_TYPE-E_J","T_DEST-J", 0).
v_def("6MT_TYPE-B_J","T_DEST-J", 0).
v_def("TYPE-B_J","T_DEST-J", 0).
v_def("TYPE-C_(4WD)_J","T_DEST-J", 0).
v_def("TYPE-C1_(2WD)_J","T_DEST-J", 0).
v_def("TYPE-C2_(4WD)_J","T_DEST-J", 0).

vp_def("T_DEST-K").
v_def("5MT_TYPE-C_K","T_DEST-K", 0).
v_def("TYPE-D2_(2WD)_K","T_DEST-K", 0).

vp_def("T_DEST-M").
v_def("TYPE-A_M","T_DEST-M", 0).
v_def("TYPE-D1_(2WD)_M","T_DEST-M", 0).

vp_def("T_DEST-N").
v_def("5MT_TYPE-D_N","T_DEST-N", 0).
v_def("TYPE-C1_(2WD)_N","T_DEST-N", 0).
v_def("TYPE-E_(2WD)_N","T_DEST-N", 0).

vp_def("T_DEST-P").
v_def("5MT_TYPE-B_P","T_DEST-P", 0).
v_def("5MT_TYPE-C_P","T_DEST-P", 0).
v_def("6MT_TYPE-A_P","T_DEST-P", 0).
v_def("TYPE-A_(2WD)_P","T_DEST-P", 0).
v_def("TYPE-D1_(2WD)_P","T_DEST-P", 0).

vp_def("T_DEST-Q").
v_def("5MT_TYPE-B_Q","T_DEST-Q", 0).
v_def("TYPE-D1_(2WD)_Q","T_DEST-Q", 0).

vp_def("T_DEST-T").
v_def("TYPE-C1_(2WD)_T","T_DEST-T", 0).

vp_def("T_DEST-U").
v_def("6MT_TYPE-B_U","T_DEST-U", 0).
v_def("TYPE-C1_(2WD)_U","T_DEST-U", 0).

vp_def("T_DEST-V").
v_def("TYPE-D1_(2WD)_V","T_DEST-V", 0).

vp_def("T_DEST-X").
v_def("6MT_TYPE-A_X","T_DEST-X", 0).
v_def("TYPE-A_(2WD)_X","T_DEST-X", 0).

vp_def("T_DEST-Y").
v_def("TYPE-C1_(2WD)_Y","T_DEST-Y", 0).

vp_def("T_DEST-Z").
v_def("5MT_TYPE-B_Z","T_DEST-Z", 0).
v_def("6MT_TYPE-B_Z","T_DEST-Z", 0).
v_def("TYPE-C1_(2WD)_Z","T_DEST-Z", 0).
v_def("TYPE-D1_(2WD)_Z","T_DEST-Z", 0).

vp_def("TIRE_SIZE").
v_def("175_/_65_R15","TIRE_SIZE",50).
v_def("175_/_70_R14","TIRE_SIZE",44).
v_def("185_/_55_R16","TIRE_SIZE",72).
v_def("185_/_60_R15","TIRE_SIZE",58).

vp_def("TOOL_SET").
v_def("_TOOL_SET","TOOL_SET",1).

vp_def("TRAFFIC_SIGN_RECOGNITION").
v_def("TSR_(set-A)","TRAFFIC_SIGN_RECOGNITION",2).
v_def("TSR_(set-B)","TRAFFIC_SIGN_RECOGNITION",2).

vp_def("TRANSMISSION").
v_def("5MT","TRANSMISSION",48).
v_def("6MT","TRANSMISSION",55).
v_def("CVT","TRANSMISSION",80).
v_def("DCT","TRANSMISSION",95).

require_vp("ANTILOCK_BRAKE_SYSTEM").
require_vp("BODY_TYPE").
require_vp("BRAKE_OVERRIDE_SYSTEM").
require_vp("DESTINATION").
require_vp("DRIVE_TYPE").
require_vp("ECU_IMMOBILIZER").
require_vp("ENGINE_MODEL").
require_vp("ENGINE_TYPE").
require_vp("GRADE").
require_vp("HANDLE").
require_vp("POWER_STEERING").
require_vp("SRS_(ASSISTANT)").
require_vp("SRS_(DRIVER)").
require_vp("TIRE_SIZE").
require_vp("TOOL_SET").
require_vp("TRANSMISSION").

% Require
require_v_v("Standard","J").
require_v_v("5MT_TYPE-C","2WD").
require_v_v("TYPE-C1_(2WD)","CVT").
require_v_vp("5MT_TYPE-E","set-A_(5MT)").
require_v_vp("B","T_DEST-B").
require_v_vp("F","T_DEST-F").
require_v_vp("Y","E_DEST-Y").
require_v_vp("6MT_TYPE-C","set-A_(6MT)").
require_v_v("TYPE-D3_(2WD)","CVT").
require_v_v("5MT_TYPE-E","2WD").
require_v_vp("D","E_DEST-D").
require_v_vp("M","E_DEST-M").
require_v_vp("SIDE_CURTAIN_AIRBAG_US_TYPE-A","set-A_(US_TYPE)").
require_v_v("TYPE-A_(2WD)","CVT").
require_v_v("TYPE-C_(4WD)","DCT").
require_v_vp("MODEL_738_HEV","DCT_MODEL").
require_v_v("TYPE-D1_(2WD)","2WD").
require_v_vp("Q","E_DEST-Q").
require_v_v("MODEL_473_1.5L_SOHC","1.5L_SOHC").
require_v_v("Sports","J").
require_v_vp("MODEL_758_HEV","DCT_MODEL").
require_v_vp("H","E_DEST-H").
require_v_vp("U","E_DEST-U").
require_v_v("MODEL_532_1.5L_DOHC","1.5L_DOHC").
require_v_v("_CRUISE_CONTROL_(set-A)","CVT").
require_v_vp("K","T_DEST-K").
require_v_v("5MT_TYPE-D","2WD").
require_v_v("MODEL_522_1.5L_DOHC","1.5L_DOHC").
require_v_vp("6MT_TYPE-A","set-A_(6MT)").
require_v_vp("A","T_DEST-A").
require_v_vp("5MT_TYPE-A","set-A_(5MT)").
require_v_vp("5MT_TYPE-B","set-A_(5MT)").
require_v_v("MODEL_192_1.2L_SOHC","TYPE-E_(2WD)").
require_v_vp("LDM","AUTONOMOUS_EMERGENCY_BRAKE").
require_v_v("TYPE-B_(2WD)","CVT").
require_v_v("TYPE-C2_(4WD)","4WD").
require_v_v("MODEL_192_1.2L_SOHC","1.5L_SOHC").
require_v_v("TYPE-A_(2WD)","2WD").
require_v_vp("P","E_DEST-P").
require_v_v("MODEL_778_HEV","HEV").
require_v_v("Sports","1.5L_DOHC").
require_v_vp("AES","AUTONOMOUS_EMERGENCY_BRAKE").
require_v_vp("M","T_DEST-M").
require_v_vp("SIDE_CURTAIN_AIRBAG_US_TYPE-B","set-A_(US_TYPE)").
require_v_v("CONV_DIFF","CVT").
require_v_vp("J","T_DEST-J").
require_v_vp("SIDE_CURTAIN_AIRBAG_J_TYPE","set-A_(J_TYPE)").
require_v_v("MODEL_261_1.3L_DOHC","1.3L_DOHC").
require_v_v("MODEL_552_1.5L_DOHC","1.5L_DOHC").
require_v_v("TYPE-E_(2WD)","2WD").
require_v_v("TYPE-D3_(2WD)","2WD").
require_v_v("TYPE-B_(2WD)","2WD").
require_v_v("MODEL_443_1.5L_SOHC","1.5L_SOHC").
require_v_vp("MODEL_768_HEV","DCT_MODEL").
require_v_vp("C","E_DEST-C").
require_v_vp("X","T_DEST-X").
require_v_vp("B","E_DEST-B").
require_v_v("TYPE-B","2WD").
require_v_v("6MT_TYPE-C","2WD").
require_v_vp("D","T_DEST-D").
require_v_v("ISA_(set-A)","ASL").
require_v_v("MODEL_463_1.5L_SOHC","1.5L_SOHC").
require_v_vp("F","E_DEST-F").
require_v_vp("Z","T_DEST-Z").
require_v_vp("N","T_DEST-N").
require_v_v("MODEL_738_HEV","HEV").
require_v_v("TYPE-A","DCT").
require_v_vp("P","T_DEST-P").
require_v_v("MODEL_512_1.5L_DOHC","1.5L_DOHC").
require_v_v("5MT_TYPE-B","2WD").
require_v_vp("K","E_DEST-K").
require_v_vp("LKAS","AUTONOMOUS_EMERGENCY_BRAKE").
require_v_v("Luxury","HEV").
require_v_vp("H","T_DEST-H").
require_v_v("MODEL_748_HEV","HEV").
require_v_vp("U","T_DEST-U").
require_v_v("MODEL_824_DIESEL","6MT_TYPE-C").
require_v_v("MODEL_231_1.3L_DOHC","1.3L_DOHC").
require_v_vp("5MT_TYPE-C","set-A_(5MT)").
require_v_vp("X","E_DEST-X").
require_v_vp("J","E_DEST-J").
require_v_vp("T","T_DEST-T").
require_v_v("TYPE-E_(2WD)","CVT").
require_v_v("5MT_TYPE-A","2WD").
require_v_vp("ACC","AUTONOMOUS_EMERGENCY_BRAKE").
require_v_v("_SMART_KEY_(set-A)","CVT").
require_v_v("TYPE-C1_(2WD)","2WD").
require_v_v("ASL","_CRUISE_CONTROL").
require_v_v("TYPE-D1_(2WD)","CVT").
require_v_v("MODEL_824_DIESEL","1.8L_DOHC_DIESEL").
require_v_v("TYPE-B","DCT").
require_v_v("6MT_TYPE-B","2WD").
require_v_v("Luxury","J").
require_v_vp("V","T_DEST-V").
require_v_vp("V","E_DEST-V").
require_v_vp("E","E_DEST-E").
require_v_v("TYPE-C_(4WD)","4WD").
require_v_vp("LDW","INTELLIGENT_SPEED_ASSISTANCE").
require_v_vp("TSR_(set-B)","INTELLIGENT_SPEED_ASSISTANCE").
require_v_v("TYPE-A","2WD").
require_v_vp("TSR_(set-A)","AUTONOMOUS_EMERGENCY_BRAKE").
require_v_v("E-DIFF","DCT").
require_v_vp("N","E_DEST-N").
require_v_v("MODEL_453_1.5L_SOHC","1.5L_SOHC").
require_v_v("TYPE-C2_(4WD)","CVT").
require_v_v("MODEL_768_HEV","HEV").
require_v_v("MODEL_251_1.3L_DOHC","1.3L_DOHC").
require_v_v("6MT_TYPE-A","2WD").
require_v_v("MODEL_758_HEV","HEV").
require_v_v("TYPE-D2_(2WD)","CVT").
require_v_v("MODEL_483_1.5L_SOHC","1.5L_SOHC").
require_v_vp("A","E_DEST-A").
require_v_vp("MODEL_778_HEV","DCT_MODEL").
require_v_v("TYPE-D2_(2WD)","2WD").
require_v_vp("Q","T_DEST-Q").
require_v_vp("FCW","INTELLIGENT_SPEED_ASSISTANCE").
require_v_vp("G","E_DEST-G").
require_v_vp("_CRUISE_CONTROL_(set-B)","AUTONOMOUS_EMERGENCY_BRAKE").
require_v_vp("Z","E_DEST-Z").
require_v_vp("E","T_DEST-E").
require_v_vp("C","T_DEST-C").
require_v_vp("T","E_DEST-T").
require_v_v("ISA_(set-B)","ASL").
require_v_vp("5MT_TYPE-D","set-A_(5MT)").
require_v_v("MODEL_241_1.3L_DOHC","1.3L_DOHC").
require_v_vp("G","T_DEST-G").
require_v_vp("Y","T_DEST-Y").
require_v_v("MODEL_5421.5L_DOHC","1.5L_DOHC").
require_v_v("E-DIFF","4WD").
require_v_v("CONV_DIFF","4WD").
require_v_v("MODEL_562_1.5L_DOHC","1.5L_DOHC").
require_v_v("AEB_WITH_ACC+LKAS+LDW+LDM_(set-A)","CVT").
require_v_vp("6MT_TYPE-B","set-A_(6MT)").
require_v_vp("MODEL_748_HEV","DCT_MODEL").

% Exclude

% Variability
require_vp_v("E_DEST-V","MODEL_473_1.5L_SOHC").
require_vp_v("E_DEST-D","MODEL_463_1.5L_SOHC").
require_vp_v("E_DEST-K","MODEL_483_1.5L_SOHC").
require_vp_v("T_DEST-V","TYPE-D1_(2WD)").
require_vp_v("E_DEST-B","MODEL_562_1.5L_DOHC").
require_vp_v("E_DEST-F","MODEL_532_1.5L_DOHC").
require_vp_v("E_DEST-A","MODEL_562_1.5L_DOHC").
require_vp_v("T_DEST-D","TYPE-D1_(2WD)").
require_vp_v("T_DEST-T","TYPE-C1_(2WD)").
require_vp_v("E_DEST-H","MODEL_463_1.5L_SOHC").
require_vp_v("E_DEST-Q","MODEL_473_1.5L_SOHC").
require_vp_v("E_DEST-X","MODEL_562_1.5L_DOHC").
require_vp_v("T_DEST-Y","TYPE-C1_(2WD)").

group(1).
group(2).
group(3).			
:-not v("Luxury", 1).
:-not v("Sports", 2).
:-not v("Standard", 3).

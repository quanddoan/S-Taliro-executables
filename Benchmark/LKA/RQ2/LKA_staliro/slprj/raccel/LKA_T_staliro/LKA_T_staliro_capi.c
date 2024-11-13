#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "LKA_T_staliro_capi_host.h"
#define sizeof(...) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)
#ifndef SS_UINT64
#define SS_UINT64 23
#endif
#ifndef SS_INT64
#define SS_INT64 24
#endif
#else
#include "builtin_typeid_types.h"
#include "LKA_T_staliro.h"
#include "LKA_T_staliro_capi.h"
#include "LKA_T_staliro_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST
#define TARGET_STRING(s)               ((NULL))
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static const rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 1 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Curvature Previewer/MATLAB Function" ) , TARGET_STRING ( "" ) , 1 , 0 , 0 , 0 , 0 } , { 1 , 1 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Curvature Previewer/MATLAB Function" ) , TARGET_STRING ( "" ) , 2 , 0 , 0 , 0 , 0 } , { 2 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Gain" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 3 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Gain1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 4 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Gain3" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 5 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Gain4" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 6 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Gain5" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 7 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Sum" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 8 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Sum1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 9 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Sum2" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 10 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Sensor Dynamics/e1dot" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 11 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Sensor Dynamics/Integrator" ) , TARGET_STRING ( "e1" ) , 0 , 0 , 0 , 0 , 1 } , { 12 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Sensor Dynamics/Integrator2" ) , TARGET_STRING ( "e2" ) , 0 , 0 , 0 , 0 , 1 } , { 13 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Sensor Dynamics/Product" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 14 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Sensor Dynamics/Subtract" ) , TARGET_STRING ( "e2dot" ) , 0 , 0 , 0 , 0 , 1 } , { 15 , 4 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/DataTypeConversion_umax" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 16 , 5 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/DataTypeConversion_umin" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 17 , 6 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/DataTypeConversion_utrack" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 18 , 12 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/DataTypeConversion_Ts" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 19 , 13 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/DataTypeConversion_Vx" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 20 , 14 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/DataTypeConversion_e1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 21 , 15 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/DataTypeConversion_e2" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 22 , 16 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/DataTypeConversion_lag" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 23 , 17 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/DataTypeConversion_front" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 24 , 18 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/DataTypeConversion_frontstiff" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 25 , 19 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/DataTypeConversion_inertia" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 26 , 20 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/DataTypeConversion_mass" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 27 , 21 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/DataTypeConversion_rear" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 28 , 22 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/DataTypeConversion_rearstiff" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 29 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/Math Function" ) , TARGET_STRING ( "" ) , 0 , 0 , 1 , 0 , 2 } , { 30 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/Math Function1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 2 } , { 31 , 0 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/Math Function2" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 2 } , { 32 , 2 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/optimizer/FixedHorizonOptimizer" ) , TARGET_STRING ( "" ) , 0 , 0 , 2 , 0 , 0 } , { 33 , 2 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/optimizer/FixedHorizonOptimizer" ) , TARGET_STRING ( "" ) , 1 , 0 , 0 , 0 , 0 } , { 34 , 2 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/optimizer/FixedHorizonOptimizer" ) , TARGET_STRING ( "" ) , 8 , 0 , 3 , 0 , 0 } , { 35 , 2 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/optimizer/FixedHorizonOptimizer" ) , TARGET_STRING ( "" ) , 9 , 1 , 4 , 0 , 0 } , { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_BlockParameters rtBlockParameters [ ] = { { 36 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System" ) , TARGET_STRING ( "TransportLag" ) , 0 , 0 , 0 } , { 37 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Curvature Previewer/Memory1" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 38 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 39 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Gain4" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 40 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Vy" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 41 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Ego Vehicle Dynamics/Yaw_rate " ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 42 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Longitudinal velocity must be positive" ) , TARGET_STRING ( "min" ) , 0 , 0 , 0 } , { 43 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Enable optimization constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 44 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/External control signal constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 45 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Vehicle dynamics matrix A constant" ) , TARGET_STRING ( "Value" ) , 0 , 5 , 0 } , { 46 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Vehicle dynamics matrix B constant" ) , TARGET_STRING ( "Value" ) , 0 , 6 , 0 } , { 47 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Vehicle dynamics matrix C constant" ) , TARGET_STRING ( "Value" ) , 0 , 5 , 0 } , { 48 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Reference constant" ) , TARGET_STRING ( "Value" ) , 0 , 7 , 0 } , { 49 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Longitudinal velocity must be positive/Assertion" ) , TARGET_STRING ( "Enabled" ) , 1 , 0 , 0 } , { 50 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/DX Constant" ) , TARGET_STRING ( "Value" ) , 0 , 4 , 0 } , { 51 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Sample time constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 52 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/U Constant" ) , TARGET_STRING ( "Value" ) , 0 , 6 , 0 } , { 53 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/X Constant" ) , TARGET_STRING ( "Value" ) , 0 , 4 , 0 } , { 54 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Y Constant" ) , TARGET_STRING ( "Value" ) , 0 , 6 , 0 } , { 55 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/E_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 56 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/F_zero" ) , TARGET_STRING ( "Value" ) , 0 , 7 , 0 } , { 57 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/G_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 58 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/S_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 59 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/du.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 60 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/ecr.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 61 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/ext.mv_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 62 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/mv.target_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 63 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/u.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 64 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/y.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 6 , 0 } , { 65 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/ymax_zero" ) , TARGET_STRING ( "Value" ) , 0 , 6 , 0 } , { 66 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/ymin_zero" ) , TARGET_STRING ( "Value" ) , 0 , 6 , 0 } , { 67 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Cm Constant" ) , TARGET_STRING ( "Value" ) , 0 , 5 , 0 } , { 68 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Vehicle front tire cornering stiffness constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 69 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Vehicle length to front constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 70 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Vehicle length to rear constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 71 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Vehicle mass constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 72 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Vehicle rear tire cornering stiffness constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 73 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Vehicle yaw inertia constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 74 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Gain" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 75 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Gain1" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 76 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Gain2" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 77 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Gain3" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 78 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Model for Adaptive MPC/Vehicle Dynamics from Parameters/Gain4" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 79 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/ext.mv_scale" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 80 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/u_scale" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 81 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/umin_scale4" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 82 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/uref_scale" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 83 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/ymin_scale1" ) , TARGET_STRING ( "Gain" ) , 0 , 7 , 0 } , { 84 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/ymin_scale2" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 85 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/LastPcov" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 3 , 0 } , { 86 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/Memory" ) , TARGET_STRING ( "InitialCondition" ) , 1 , 4 , 0 } , { 87 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/last_x" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 2 , 0 } , { 88 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/last_mv" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 89 , TARGET_STRING ( "LKA_T_staliro/Subsystem/Lane Keeping Assist System/Adaptive MPC for LKA/Adaptive MPC Controller/MPC/optimizer/FixedHorizonOptimizer" ) , TARGET_STRING ( "Ndis" ) , 2 , 0 , 0 } , { 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 } } ; static int_T rt_LoggedStateIdxList [ ] = { - 1 } ; static const rtwCAPI_Signals rtRootInputs [ ] = { { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_Signals rtRootOutputs [ ] = { { 90 , 0 , TARGET_STRING ( "LKA_T_staliro/Output" ) , TARGET_STRING ( "" ) , 1 , 0 , 0 , 0 , 1 } , { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_ModelParameters rtModelParameters [ ] = { { 91 , TARGET_STRING ( "Cf" ) , 0 , 0 , 0 } , { 92 , TARGET_STRING ( "Cr" ) , 0 , 0 , 0 } , { 93 , TARGET_STRING ( "Iz" ) , 0 , 0 , 0 } , { 94 , TARGET_STRING ( "Vx" ) , 0 , 0 , 0 } , { 95 , TARGET_STRING ( "e1_initial" ) , 0 , 0 , 0 } , { 96 , TARGET_STRING ( "e2_initial" ) , 0 , 0 , 0 } , { 97 , TARGET_STRING ( "lf" ) , 0 , 0 , 0 } , { 98 , TARGET_STRING ( "lr" ) , 0 , 0 , 0 } , { 99 , TARGET_STRING ( "m" ) , 0 , 0 , 0 } , { 100 , TARGET_STRING ( "u_max" ) , 0 , 0 , 0 } , { 101 , TARGET_STRING ( "u_min" ) , 0 , 0 , 0 } , { 0 , ( NULL ) , 0 , 0 , 0 } } ;
#ifndef HOST_CAPI_BUILD
static void * rtDataAddrMap [ ] = { & rtB . p42cer33ct , & rtB . ppw1rz40hr ,
& rtB . k0suforjme , & rtB . o13qcxbdip , & rtB . ncih2tph21 , & rtB .
pend3mkk21 , & rtB . bfv1nrsihf , & rtB . glp22kvlec , & rtB . jufm00blrf , &
rtB . dvyu1sscyo , & rtB . bjzx13hfvh , & rtB . jl0aukavwi , & rtB .
itiywpghyu , & rtB . cvvfihfwkh , & rtB . d4mpdlgsh1 , & rtB . cc1fon30yl .
onhvape52u , & rtB . bk3nxv3tlr . onhvape52u , & rtB . cik2vkh3a4 .
onhvape52u , & rtB . njn5yczmu3 . onhvape52u , & rtB . gccus3jafp .
onhvape52u , & rtB . k1mx4005qx . mccd0iruvd , & rtB . gnys0rptin .
mccd0iruvd , & rtB . be3jllceim . onhvape52u , & rtB . gnn330lieg .
onhvape52u , & rtB . elsnrsfkpu . onhvape52u , & rtB . e5mwwrj2xv .
onhvape52u , & rtB . lzaj2qo24h . onhvape52u , & rtB . kug2oixzkm .
onhvape52u , & rtB . euyeijkvwj . onhvape52u , & rtB . dxboshnqcx [ 0 ] , &
rtB . cffmjtonjb , & rtB . opyhkzbx15 , & rtB . kjjzvf0odm [ 0 ] , & rtB .
o0gndlrdqg , & rtB . ns4zakixk4 [ 0 ] , & rtB . etstptzcgp [ 0 ] , & rtP .
LaneKeepingAssistSystem_TransportLag , & rtP . Memory1_InitialCondition , &
rtP . Constant_Value , & rtP . Gain4_Gain_nzox2md245 , & rtP . Vy_IC , & rtP
. Yaw_rate_IC , & rtP . Longitudinalvelocitymustbepositive_min , & rtP .
Enableoptimizationconstant_Value , & rtP .
Externalcontrolsignalconstant_Value , & rtP .
VehicledynamicsmatrixAconstant_Value [ 0 ] , & rtP .
VehicledynamicsmatrixBconstant_Value [ 0 ] , & rtP .
VehicledynamicsmatrixCconstant_Value [ 0 ] , & rtP . Referenceconstant_Value
[ 0 ] , & rtP . Assertion_Enabled , & rtP . DXConstant_Value [ 0 ] , & rtP .
Sampletimeconstant_Value , & rtP . UConstant_Value [ 0 ] , & rtP .
XConstant_Value [ 0 ] , & rtP . YConstant_Value [ 0 ] , & rtP . E_zero_Value
, & rtP . F_zero_Value [ 0 ] , & rtP . G_zero_Value , & rtP . S_zero_Value ,
& rtP . duwt_zero_Value , & rtP . ecrwt_zero_Value , & rtP . extmv_zero_Value
, & rtP . mvtarget_zero_Value , & rtP . uwt_zero_Value , & rtP .
ywt_zero_Value [ 0 ] , & rtP . ymax_zero_Value [ 0 ] , & rtP .
ymin_zero_Value [ 0 ] , & rtP . CmConstant_Value [ 0 ] , & rtP .
Vehiclefronttirecorneringstiffnessconstant_Value , & rtP .
Vehiclelengthtofrontconstant_Value , & rtP .
Vehiclelengthtorearconstant_Value , & rtP . Vehiclemassconstant_Value , & rtP
. Vehiclereartirecorneringstiffnessconstant_Value , & rtP .
Vehicleyawinertiaconstant_Value , & rtP . Gain_Gain , & rtP . Gain1_Gain , &
rtP . Gain2_Gain , & rtP . Gain3_Gain , & rtP . Gain4_Gain , & rtP .
extmv_scale_Gain , & rtP . u_scale_Gain , & rtP . umin_scale4_Gain , & rtP .
uref_scale_Gain , & rtP . ymin_scale1_Gain [ 0 ] , & rtP . ymin_scale2_Gain ,
& rtP . LastPcov_InitialCondition [ 0 ] , & rtP . Memory_InitialCondition [ 0
] , & rtP . last_x_InitialCondition [ 0 ] , & rtP . last_mv_InitialCondition
, & rtP . FixedHorizonOptimizer_Ndis , & rtY . ggwcqiyygf , & rtP . Cf , &
rtP . Cr , & rtP . Iz , & rtP . Vx , & rtP . e1_initial , & rtP . e2_initial
, & rtP . lf , & rtP . lr , & rtP . m , & rtP . u_max , & rtP . u_min , } ;
static int32_T * rtVarDimsAddrMap [ ] = { ( NULL ) } ;
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { { "double" ,
"real_T" , 0 , 0 , sizeof ( real_T ) , ( uint8_T ) SS_DOUBLE , 0 , 0 , 0 } ,
{ "unsigned char" , "boolean_T" , 0 , 0 , sizeof ( boolean_T ) , ( uint8_T )
SS_BOOLEAN , 0 , 0 , 0 } , { "int" , "int32_T" , 0 , 0 , sizeof ( int32_T ) ,
( uint8_T ) SS_INT32 , 0 , 0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static const rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_SCALAR , 0 , 2 , 0 } , { rtwCAPI_MATRIX_COL_MAJOR , 2 , 2 , 0 } , {
rtwCAPI_VECTOR , 4 , 2 , 0 } , { rtwCAPI_MATRIX_COL_MAJOR , 6 , 2 , 0 } , {
rtwCAPI_VECTOR , 8 , 2 , 0 } , { rtwCAPI_MATRIX_COL_MAJOR , 10 , 2 , 0 } , {
rtwCAPI_VECTOR , 12 , 2 , 0 } , { rtwCAPI_VECTOR , 2 , 2 , 0 } } ; static
const uint_T rtDimensionArray [ ] = { 1 , 1 , 1 , 2 , 5 , 1 , 5 , 5 , 4 , 1 ,
2 , 2 , 2 , 1 } ; static const real_T rtcapiStoredFloats [ ] = { 0.1 , 0.0 }
; static const rtwCAPI_FixPtMap rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) ,
rtwCAPI_FIX_RESERVED , 0 , 0 , ( boolean_T ) 0 } , } ; static const
rtwCAPI_SampleTimeMap rtSampleTimeMap [ ] = { { ( const void * ) &
rtcapiStoredFloats [ 0 ] , ( const void * ) & rtcapiStoredFloats [ 1 ] , ( int8_T ) 1 , ( uint8_T ) 0 } , { ( const void * ) & rtcapiStoredFloats [ 1 ] , ( const void * ) & rtcapiStoredFloats [ 1 ] , ( int8_T ) 0 , ( uint8_T ) 0 } , { ( NULL ) , ( NULL ) , 2 , 0 } } ; static rtwCAPI_ModelMappingStaticInfo mmiStatic = { { rtBlockSignals , 36 , rtRootInputs , 0 , rtRootOutputs , 1 } , { rtBlockParameters , 54 , rtModelParameters , 11 } , { ( NULL ) , 0 } , { rtDataTypeMap , rtDimensionMap , rtFixPtMap , rtElementMap , rtSampleTimeMap , rtDimensionArray } , "float" , { 2717182362U , 1965175627U , 3343308624U , 1323682619U } , ( NULL ) , 0 , ( boolean_T ) 0 , rt_LoggedStateIdxList } ; const rtwCAPI_ModelMappingStaticInfo * LKA_T_staliro_GetCAPIStaticMap ( void ) { return & mmiStatic ; }
#ifndef HOST_CAPI_BUILD
void LKA_T_staliro_InitializeDataMapInfo ( void ) { rtwCAPI_SetVersion ( ( *
rt_dataMapInfoPtr ) . mmi , 1 ) ; rtwCAPI_SetStaticMap ( ( *
rt_dataMapInfoPtr ) . mmi , & mmiStatic ) ; rtwCAPI_SetLoggingStaticMap ( ( *
rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ; rtwCAPI_SetDataAddressMap ( ( *
rt_dataMapInfoPtr ) . mmi , rtDataAddrMap ) ; rtwCAPI_SetVarDimsAddressMap ( ( *
rt_dataMapInfoPtr ) . mmi , rtVarDimsAddrMap ) ;
rtwCAPI_SetInstanceLoggingInfo ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArray ( ( * rt_dataMapInfoPtr ) . mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( ( * rt_dataMapInfoPtr ) . mmi , 0 ) ; }
#else
#ifdef __cplusplus
extern "C" {
#endif
void LKA_T_staliro_host_InitializeDataMapInfo ( LKA_T_staliro_host_DataMapInfo_T
* dataMap , const char * path ) { rtwCAPI_SetVersion ( dataMap -> mmi , 1 ) ;
rtwCAPI_SetStaticMap ( dataMap -> mmi , & mmiStatic ) ;
rtwCAPI_SetDataAddressMap ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetVarDimsAddressMap ( dataMap -> mmi , ( NULL ) ) ; rtwCAPI_SetPath
( dataMap -> mmi , path ) ; rtwCAPI_SetFullPath ( dataMap -> mmi , ( NULL ) )
; rtwCAPI_SetChildMMIArray ( dataMap -> mmi , ( NULL ) ) ;
rtwCAPI_SetChildMMIArrayLen ( dataMap -> mmi , 0 ) ; }
#ifdef __cplusplus
}
#endif
#endif

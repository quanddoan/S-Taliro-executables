#include "rtw_capi.h"
#ifdef HOST_CAPI_BUILD
#include "ACC_T_staliro_capi_host.h"
#define sizeof(...) ((size_t)(0xFFFF))
#undef rt_offsetof
#define rt_offsetof(s,el) ((uint16_T)(0xFFFF))
#define TARGET_CONST
#define TARGET_STRING(s) (s)
#ifndef SS_UINT64
#define SS_UINT64 21
#endif
#ifndef SS_INT64
#define SS_INT64 22
#endif
#else
#include "builtin_typeid_types.h"
#include "ACC_T_staliro.h"
#include "ACC_T_staliro_capi.h"
#include "ACC_T_staliro_private.h"
#ifdef LIGHT_WEIGHT_CAPI
#define TARGET_CONST
#define TARGET_STRING(s)               ((NULL))
#else
#define TARGET_CONST                   const
#define TARGET_STRING(s)               (s)
#endif
#endif
static const rtwCAPI_Signals rtBlockSignals [ ] = { { 0 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "a_lead" ) , 0 , 0 , 0 , 0 , 0 } , { 1 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Minus" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 2 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Sum" ) , TARGET_STRING ( "d_rel" ) , 0 , 0 , 0 , 0 , 0 } , { 3 , 1 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_L0" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 4 , 2 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_amax" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 5 , 3 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_amin" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 6 , 4 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_atrack" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 7 , 5 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_dmin" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 8 , 7 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_reldist" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 9 , 8 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_vego" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 10 , 9 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_vlead" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 11 , 10 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/DataTypeConversion_vset" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 12 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Ego Car/Integrator" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 13 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Ego Car/Sum1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 14 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Lead Car/Integrator" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 15 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Lead Car/Sum1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 0 } , { 16 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/umin_scale1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 1 } , { 17 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/Math Function" ) , TARGET_STRING ( "" ) , 0 , 0 , 1 , 0 , 2 } , { 18 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/Math Function1" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 2 } , { 19 , 0 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/Math Function2" ) , TARGET_STRING ( "" ) , 0 , 0 , 0 , 0 , 2 } , { 20 , 11 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/optimizer/optimizer" ) , TARGET_STRING ( "" ) , 0 , 0 , 2 , 0 , 1 } , { 21 , 11 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/optimizer/optimizer" ) , TARGET_STRING ( "" ) , 1 , 0 , 0 , 0 , 1 } , { 22 , 11 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/optimizer/optimizer" ) , TARGET_STRING ( "" ) , 8 , 1 , 3 , 0 , 1 } , { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_BlockParameters rtBlockParameters [ ] = { { 23 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System" ) , TARGET_STRING ( "MaxVelocity" ) , 0 , 0 , 0 } , { 24 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System" ) , TARGET_STRING ( "MinAcceleration" ) , 0 , 0 , 0 } , { 25 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System" ) , TARGET_STRING ( "MaxAcceleration" ) , 0 , 0 , 0 } , { 26 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Gain" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 27 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "A_pr" ) , 0 , 0 , 0 } , { 28 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "A_ir" ) , 2 , 0 , 0 } , { 29 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "A_jc" ) , 2 , 4 , 0 } , { 30 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "B_pr" ) , 0 , 0 , 0 } , { 31 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "B_ir" ) , 2 , 0 , 0 } , { 32 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "B_jc" ) , 2 , 4 , 0 } , { 33 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "C_pr" ) , 0 , 0 , 0 } , { 34 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "C_ir" ) , 2 , 0 , 0 } , { 35 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "C_jc" ) , 2 , 4 , 0 } , { 36 , TARGET_STRING ( "ACC_T_staliro/Subsystem/State-Space" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 37 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/Enable optimization constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 38 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/External control signal constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 39 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/Minimum velocity constant" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 40 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/Unconstrained" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 41 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Ego Car/Integrator" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 42 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Ego Car/Integrator1" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 43 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Ego Car/Transfer Fcn" ) , TARGET_STRING ( "A" ) , 0 , 0 , 0 } , { 44 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Ego Car/Transfer Fcn" ) , TARGET_STRING ( "C" ) , 0 , 0 , 0 } , { 45 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Lead Car/Integrator" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 46 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Lead Car/Integrator1" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 47 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Lead Car/Transfer Fcn" ) , TARGET_STRING ( "A" ) , 0 , 0 , 0 } , { 48 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Lead Car/Transfer Fcn" ) , TARGET_STRING ( "C" ) , 0 , 0 , 0 } , { 49 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/E_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 50 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/F_zero" ) , TARGET_STRING ( "Value" ) , 0 , 5 , 0 } , { 51 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/G_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 52 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/S_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 53 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/du.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 54 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/ecr.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 55 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/ext.mv_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 56 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/mv.target_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 57 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/u.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 0 , 0 } , { 58 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/y.wt_zero" ) , TARGET_STRING ( "Value" ) , 0 , 4 , 0 } , { 59 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/ext.mv_scale" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 60 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/ext.mv_scale1" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 61 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/umin_scale1" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 62 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/umin_scale4" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 63 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/ymin_scale1" ) , TARGET_STRING ( "Gain" ) , 0 , 5 , 0 } , { 64 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/ymin_scale2" ) , TARGET_STRING ( "Gain" ) , 0 , 0 , 0 } , { 65 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/Memory" ) , TARGET_STRING ( "InitialCondition" ) , 1 , 3 , 0 } , { 66 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/last_x" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 2 , 0 } , { 67 , TARGET_STRING ( "ACC_T_staliro/Subsystem/Adaptive Cruise Control System/MPC/MPC/last_mv" ) , TARGET_STRING ( "InitialCondition" ) , 0 , 0 , 0 } , { 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 } } ; static int_T rt_LoggedStateIdxList [ ] = { - 1 } ; static const rtwCAPI_Signals rtRootInputs [ ] = { { 68 , 0 , TARGET_STRING ( "ACC_T_staliro/Input" ) , TARGET_STRING ( "" ) , 1 , 0 , 0 , 0 , 0 } , { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_Signals rtRootOutputs [ ] = { { 69 , 0 , TARGET_STRING ( "ACC_T_staliro/Output1" ) , TARGET_STRING ( "" ) , 1 , 0 , 0 , 0 , 0 } , { 0 , 0 , ( NULL ) , ( NULL ) , 0 , 0 , 0 , 0 , 0 } } ; static const rtwCAPI_ModelParameters rtModelParameters [ ] = { { 70 , TARGET_STRING ( "D_default" ) , 0 , 0 , 0 } , { 71 , TARGET_STRING ( "t_gap" ) , 0 , 0 , 0 } , { 72 , TARGET_STRING ( "v0_ego" ) , 0 , 0 , 0 } , { 73 , TARGET_STRING ( "v0_lead" ) , 0 , 0 , 0 } , { 74 , TARGET_STRING ( "v_set" ) , 0 , 0 , 0 } , { 75 , TARGET_STRING ( "x0_ego" ) , 0 , 0 , 0 } , { 76 , TARGET_STRING ( "x0_lead" ) , 0 , 0 , 0 } , { 0 , ( NULL ) , 0 , 0 , 0 } } ;
#ifndef HOST_CAPI_BUILD
static void * rtDataAddrMap [ ] = { & rtB . n0d5e2ho2i , & rtB . htwgdyzcn2 ,
& rtB . iz20fwwcrt , & rtB . iycis3sksg . b3umc4qvly , & rtB . ka5gqtv0zq .
b3umc4qvly , & rtB . f4esyblzdq . b3umc4qvly , & rtB . g1gdocpcgl .
b3umc4qvly , & rtB . oole0kyrzs . jhtl0qqwx4 , & rtB . blt3cbb5h0 .
jhtl0qqwx4 , & rtB . gh105iynfl . jhtl0qqwx4 , & rtB . a1wp4jzqbg .
jhtl0qqwx4 , & rtB . p4e11kbpcn . b3umc4qvly , & rtB . dsq5zwnmgo , & rtB .
gynr2znndm , & rtB . kdw2tjpjdg , & rtB . orrovtgqjg , & rtB . pek2dwwobf , &
rtB . ilwh5fwuw1 [ 0 ] , & rtB . efgc5lqpni , & rtB . pxpdmw0bcs , & rtB .
iclkc1kaku [ 0 ] , & rtB . lyecgqqwmf , & rtB . ett04lmlns [ 0 ] , & rtP .
AdaptiveCruiseControlSystem_MaxVelocity , & rtP .
AdaptiveCruiseControlSystem_MinAcceleration , & rtP .
AdaptiveCruiseControlSystem_MaxAcceleration , & rtP . Gain_Gain , & rtP .
StateSpace_A_pr , & rtP . StateSpace_A_ir , & rtP . StateSpace_A_jc [ 0 ] , &
rtP . StateSpace_B_pr , & rtP . StateSpace_B_ir , & rtP . StateSpace_B_jc [ 0
] , & rtP . StateSpace_C_pr , & rtP . StateSpace_C_ir , & rtP .
StateSpace_C_jc [ 0 ] , & rtP . StateSpace_InitialCondition , & rtP .
Enableoptimizationconstant_Value , & rtP .
Externalcontrolsignalconstant_Value , & rtP . Minimumvelocityconstant_Value ,
& rtP . Unconstrained_Value , & rtP . Integrator_IC , & rtP .
Integrator1_IC_fvpogb2tin , & rtP . TransferFcn_A , & rtP . TransferFcn_C , &
rtP . Integrator_IC_ovbqh0xcs4 , & rtP . Integrator1_IC , & rtP .
TransferFcn_A_fnskyslbri , & rtP . TransferFcn_C_gb2z2ct1vo , & rtP .
E_zero_Value , & rtP . F_zero_Value [ 0 ] , & rtP . G_zero_Value , & rtP .
S_zero_Value , & rtP . duwt_zero_Value , & rtP . ecrwt_zero_Value , & rtP .
extmv_zero_Value , & rtP . mvtarget_zero_Value , & rtP . uwt_zero_Value , &
rtP . ywt_zero_Value [ 0 ] , & rtP . extmv_scale_Gain , & rtP .
extmv_scale1_Gain , & rtP . umin_scale1_Gain , & rtP . umin_scale4_Gain , &
rtP . ymin_scale1_Gain [ 0 ] , & rtP . ymin_scale2_Gain , & rtP .
Memory_InitialCondition [ 0 ] , & rtP . last_x_InitialCondition [ 0 ] , & rtP
. last_mv_InitialCondition , & rtU . lfidkqrvn0 , & rtY . hbykfhx3ym , & rtP
. D_default , & rtP . t_gap , & rtP . v0_ego , & rtP . v0_lead , & rtP .
v_set , & rtP . x0_ego , & rtP . x0_lead , } ; static int32_T *
rtVarDimsAddrMap [ ] = { ( NULL ) } ;
#endif
static TARGET_CONST rtwCAPI_DataTypeMap rtDataTypeMap [ ] = { { "double" ,
"real_T" , 0 , 0 , sizeof ( real_T ) , ( uint8_T ) SS_DOUBLE , 0 , 0 , 0 } ,
{ "unsigned char" , "boolean_T" , 0 , 0 , sizeof ( boolean_T ) , ( uint8_T )
SS_BOOLEAN , 0 , 0 , 0 } , { "unsigned int" , "uint32_T" , 0 , 0 , sizeof ( uint32_T ) , ( uint8_T ) SS_UINT32 , 0 , 0 , 0 } } ;
#ifdef HOST_CAPI_BUILD
#undef sizeof
#endif
static TARGET_CONST rtwCAPI_ElementMap rtElementMap [ ] = { { ( NULL ) , 0 ,
0 , 0 , 0 } , } ; static const rtwCAPI_DimensionMap rtDimensionMap [ ] = { {
rtwCAPI_SCALAR , 0 , 2 , 0 } , { rtwCAPI_MATRIX_COL_MAJOR , 2 , 2 , 0 } , {
rtwCAPI_VECTOR , 4 , 2 , 0 } , { rtwCAPI_VECTOR , 6 , 2 , 0 } , {
rtwCAPI_VECTOR , 8 , 2 , 0 } , { rtwCAPI_VECTOR , 2 , 2 , 0 } } ; static
const uint_T rtDimensionArray [ ] = { 1 , 1 , 1 , 2 , 4 , 1 , 96 , 1 , 2 , 1
} ; static const real_T rtcapiStoredFloats [ ] = { 0.0 , 0.1 } ; static const
rtwCAPI_FixPtMap rtFixPtMap [ ] = { { ( NULL ) , ( NULL ) ,
rtwCAPI_FIX_RESERVED , 0 , 0 , ( boolean_T ) 0 } , } ; static const
rtwCAPI_SampleTimeMap rtSampleTimeMap [ ] = { { ( const void * ) &
rtcapiStoredFloats [ 0 ] , ( const void * ) & rtcapiStoredFloats [ 0 ] , ( int8_T ) 0 , ( uint8_T ) 0 } , { ( const void * ) & rtcapiStoredFloats [ 1 ] , ( const void * ) & rtcapiStoredFloats [ 0 ] , ( int8_T ) 1 , ( uint8_T ) 0 } , { ( NULL ) , ( NULL ) , 2 , 0 } } ; static rtwCAPI_ModelMappingStaticInfo mmiStatic = { { rtBlockSignals , 23 , rtRootInputs , 1 , rtRootOutputs , 1 } , { rtBlockParameters , 45 , rtModelParameters , 7 } , { ( NULL ) , 0 } , { rtDataTypeMap , rtDimensionMap , rtFixPtMap , rtElementMap , rtSampleTimeMap , rtDimensionArray } , "float" , { 2463354827U , 3515647382U , 3520358053U , 4224464232U } , ( NULL ) , 0 , ( boolean_T ) 0 , rt_LoggedStateIdxList } ; const rtwCAPI_ModelMappingStaticInfo * ACC_T_staliro_GetCAPIStaticMap ( void ) { return & mmiStatic ; }
#ifndef HOST_CAPI_BUILD
void ACC_T_staliro_InitializeDataMapInfo ( void ) { rtwCAPI_SetVersion ( ( *
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
void ACC_T_staliro_host_InitializeDataMapInfo ( ACC_T_staliro_host_DataMapInfo_T
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

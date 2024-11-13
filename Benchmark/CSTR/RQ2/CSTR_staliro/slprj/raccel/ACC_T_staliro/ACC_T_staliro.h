#ifndef ACC_T_staliro_h_
#define ACC_T_staliro_h_
#ifndef ACC_T_staliro_COMMON_INCLUDES_
#define ACC_T_staliro_COMMON_INCLUDES_
#include <stdlib.h>
#include "sl_AsyncioQueue/AsyncioQueueCAPI.h"
#include "rtwtypes.h"
#include "sigstream_rtw.h"
#include "simtarget/slSimTgtSigstreamRTW.h"
#include "simtarget/slSimTgtSlioCoreRTW.h"
#include "simtarget/slSimTgtSlioClientsRTW.h"
#include "simtarget/slSimTgtSlioSdiRTW.h"
#include "simstruc.h"
#include "fixedpoint.h"
#include "raccel.h"
#include "slsv_diagnostic_codegen_c_api.h"
#include "rt_logging_simtarget.h"
#include "rt_nonfinite.h"
#include "math.h"
#include "dt_info.h"
#include "ext_work.h"
#include "blas.h"
#endif
#include "ACC_T_staliro_types.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include <string.h>
#define MODEL_NAME ACC_T_staliro
#define NSAMPLE_TIMES (3) 
#define NINPUTS (1)       
#define NOUTPUTS (1)     
#define NBLOCKIO (29) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (7)   
#elif NCSTATES != 7
#error Invalid specification of NCSTATES defined in compiler command
#endif
#ifndef rtmGetDataMapInfo
#define rtmGetDataMapInfo(rtm) (*rt_dataMapInfoPtr)
#endif
#ifndef rtmSetDataMapInfo
#define rtmSetDataMapInfo(rtm, val) (rt_dataMapInfoPtr = &val)
#endif
#ifndef IN_RACCEL_MAIN
#endif
typedef struct { real_T b3umc4qvly ; } duxnsc5qxr ; typedef struct { int32_T
kb1gbk12yk ; boolean_T hm0okgohxe ; } mh1uv52p5m ; typedef struct { real_T
jhtl0qqwx4 ; } bb1fpji5wu ; typedef struct { int32_T a1ddli5tzw ; boolean_T
fjsdr0cmdv ; } k1dhhntxtu ; typedef struct { real_T iz20fwwcrt ; real_T
gynr2znndm ; real_T n0d5e2ho2i ; real_T orrovtgqjg ; real_T pek2dwwobf ;
real_T dsq5zwnmgo ; real_T kdw2tjpjdg ; real_T ilwh5fwuw1 [ 2 ] ; real_T
efgc5lqpni ; real_T pxpdmw0bcs ; real_T iclkc1kaku [ 4 ] ; real_T lyecgqqwmf
; boolean_T ett04lmlns [ 96 ] ; duxnsc5qxr p4e11kbpcn ; bb1fpji5wu a1wp4jzqbg
; bb1fpji5wu gh105iynfl ; bb1fpji5wu blt3cbb5h0 ; bb1fpji5wu oole0kyrzs ;
duxnsc5qxr g1gdocpcgl ; duxnsc5qxr f4esyblzdq ; duxnsc5qxr ka5gqtv0zq ;
duxnsc5qxr iycis3sksg ; } B ; typedef struct { real_T g2rfivpzu1 ; real_T
ldwnfqj2nl [ 4 ] ; struct { void * LoggedData ; } pqhmcoehms ; struct { void
* LoggedData ; } d20ieuxkd1 ; struct { void * LoggedData ; } pog33iucra ;
struct { void * LoggedData ; } nzz2cintmy ; struct { void * AQHandles ; }
l5cujhrfmj ; struct { void * AQHandles ; } e4jxczjyuz ; struct { void *
AQHandles ; } o00cmfkngw ; struct { void * AQHandles ; } pedfblzmc1 ; struct
{ void * AQHandles ; } bhbcacleto ; int32_T jetticvg0x ; int32_T cbgh4xdffd ;
boolean_T dhwywmmnvd [ 96 ] ; boolean_T p4jmkjbw0t ; boolean_T cagby0tcab ;
mh1uv52p5m p4e11kbpcn ; k1dhhntxtu a1wp4jzqbg ; k1dhhntxtu gh105iynfl ;
k1dhhntxtu blt3cbb5h0 ; k1dhhntxtu oole0kyrzs ; mh1uv52p5m g1gdocpcgl ;
mh1uv52p5m f4esyblzdq ; mh1uv52p5m ka5gqtv0zq ; mh1uv52p5m iycis3sksg ; } DW
; typedef struct { real_T cs5td3xx0w ; real_T fsusy4avrw ; real_T f1edkq04co
; real_T or4vre0ngo ; real_T nyqwujs1ue ; real_T fiphkolnye ; real_T
dfgauhmfjk ; } X ; typedef struct { real_T cs5td3xx0w ; real_T fsusy4avrw ;
real_T f1edkq04co ; real_T or4vre0ngo ; real_T nyqwujs1ue ; real_T fiphkolnye
; real_T dfgauhmfjk ; } XDot ; typedef struct { boolean_T cs5td3xx0w ;
boolean_T fsusy4avrw ; boolean_T f1edkq04co ; boolean_T or4vre0ngo ;
boolean_T nyqwujs1ue ; boolean_T fiphkolnye ; boolean_T dfgauhmfjk ; } XDis ;
typedef struct { real_T lfidkqrvn0 ; } ExtU ; typedef struct { real_T
hbykfhx3ym ; } ExtY ; typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
DataMapInfo ; struct P_ { real_T D_default ; real_T amax_ego ; real_T
amin_ego ; real_T t_gap ; real_T v0_ego ; real_T v0_lead ; real_T v_set ;
real_T x0_ego ; real_T x0_lead ; real_T
AdaptiveCruiseControlSystem_MaxVelocity ; real_T Integrator1_IC ; real_T
Integrator1_IC_fvpogb2tin ; real_T TransferFcn_A ; real_T TransferFcn_C ;
real_T Gain_Gain ; real_T StateSpace_A_pr ; real_T StateSpace_B_pr ; real_T
StateSpace_C_pr ; real_T StateSpace_InitialCondition ; real_T
TransferFcn_A_fnskyslbri ; real_T TransferFcn_C_gb2z2ct1vo ; real_T
last_x_InitialCondition [ 4 ] ; real_T last_mv_InitialCondition ; real_T
umin_scale4_Gain ; real_T ymin_scale1_Gain [ 2 ] ; real_T ymin_scale2_Gain ;
real_T extmv_scale_Gain ; real_T extmv_scale1_Gain ; real_T umin_scale1_Gain
; real_T Integrator_IC ; real_T Integrator_IC_ovbqh0xcs4 ; real_T
Enableoptimizationconstant_Value ; real_T E_zero_Value ; real_T F_zero_Value
[ 2 ] ; real_T G_zero_Value ; real_T ywt_zero_Value [ 2 ] ; real_T
uwt_zero_Value ; real_T duwt_zero_Value ; real_T
Minimumvelocityconstant_Value ; real_T Unconstrained_Value ; real_T
ecrwt_zero_Value ; real_T S_zero_Value ; real_T extmv_zero_Value ; real_T
mvtarget_zero_Value ; real_T Externalcontrolsignalconstant_Value ; uint32_T
StateSpace_A_ir ; uint32_T StateSpace_A_jc [ 2 ] ; uint32_T StateSpace_B_ir ;
uint32_T StateSpace_B_jc [ 2 ] ; uint32_T StateSpace_C_ir ; uint32_T
StateSpace_C_jc [ 2 ] ; boolean_T Memory_InitialCondition [ 96 ] ; } ; extern
const char_T * RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ;
extern DW rtDW ; extern ExtU rtU ; extern ExtY rtY ; extern P rtP ; extern
mxArray * mr_ACC_T_staliro_GetDWork ( ) ; extern void
mr_ACC_T_staliro_SetDWork ( const mxArray * ssDW ) ; extern mxArray *
mr_ACC_T_staliro_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * ACC_T_staliro_GetCAPIStaticMap ( void ) ;
extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T
tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif

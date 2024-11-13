#ifndef AbstractFuelControl_M1_h_
#define AbstractFuelControl_M1_h_
#ifndef AbstractFuelControl_M1_COMMON_INCLUDES_
#define AbstractFuelControl_M1_COMMON_INCLUDES_
#include <stdio.h>
#include <stdlib.h>
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
#endif
#include "AbstractFuelControl_M1_types.h"
#include <stddef.h>
#include <string.h>
#include "rt_zcfcn.h"
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include "rtGetInf.h"
#include "zero_crossing_types.h"
#define MODEL_NAME AbstractFuelControl_M1
#define NSAMPLE_TIMES (4) 
#define NINPUTS (2)       
#define NOUTPUTS (3)     
#define NBLOCKIO (77) 
#define NUM_ZC_EVENTS (3) 
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
typedef struct { real_T odqlvqmn2b ; real_T j1xad1kw2y ; real_T n4cgz4c1ig ;
real_T cfq25lfyyw ; real_T l1nevfnqpf ; real_T oyuelozcmi ; real_T dizvn0c2kv
; real_T p2z1c52id3 ; real_T pqjo5cmif3 ; real_T ljxgkjd15j ; real_T
escvsqytg5 ; real_T no3zx0ezfz ; real_T cqfpshtxvd ; real_T pkw2gccdta ;
real_T klp4ythknn ; real_T mgqkkfzlvr ; real_T adzxmfdvct ; real_T b0hwckgura
; real_T kx21h31n2g ; real_T lmmtdwu0wp ; real_T e0hefnwpn5 ; real_T
jccvex1ixq ; real_T fskykcddjv ; real_T p0vdharg3x ; real_T kvvecvkv4w ;
real_T d2xczoi00g ; real_T mqlyzq05s5 ; real_T edkdzixy33 ; real_T jrd3m1e14e
; real_T dv5kghuyay ; real_T oftupsnnwq ; real_T kdatkznqf3 ; real_T
kzu4511fzw ; real_T bq2aoymfa2 ; real_T b0d12gfpcn ; real_T ggljthsrvd ;
real_T eklk3dmin0 ; real_T oo3ejug25p ; real_T a0lpbr03kt ; real_T b3qds3z03d
; real_T ojzkzpds5k ; real_T fpznfvuttn ; real_T iefpdh24wc ; real_T
hdznuhk51n ; real_T h2gumn0zfz ; real_T nfrioqoa1z ; real_T gh4si2bfc3 ;
real_T nfkbndd5rw ; real_T fthtwuev1r ; real_T inb2szn322 ; real_T f5wvyzcfg5
; real_T ok00lxzmk0 ; real_T keiyfhx4eg ; real_T gczfrkzoxa ; real_T
c3siktwmor ; real_T aexnc2oizh ; real_T eulxbwi45w ; real_T g1ctig4m3i ;
real_T ak0qj52dtk ; real_T mdypthjkfn ; real32_T dbtddmdnlk ; real32_T
g1kfu2k5fh ; real32_T hto3u2ooh4 ; real32_T j0q4aipzzu ; real32_T ige0xs0xi4
; real32_T iwmpiqqojt ; real32_T fxvkky4cdu ; real32_T g1sdxnua3f ; real32_T
hpdu0hetw0 ; boolean_T fhrdrehs2q ; boolean_T g4yktga2hl ; } B ; typedef
struct { real_T owav32xvsn ; int64_T a2qsprdgu1 ; struct { real_T modelTStart
; } aiubtbumbt ; struct { void * LoggedData [ 4 ] ; } fz3uelqdj1 ; struct {
void * LoggedData [ 3 ] ; } enaunfvrqp ; struct { void * TUbufferPtrs [ 3 ] ;
} gpxkxxnpkk ; real32_T btjp423gxi ; real32_T lgypi2y43m ; real32_T
lq35xsrymr ; real32_T j3e50spkrk ; real32_T fpmlnohs30 ; real32_T lcyc3z0xe4
; real32_T oyzwbyjehp ; real32_T abqwkmfwm4 ; real32_T kasy120l4j ; int32_T
gh1igxnqfd ; int32_T enr4nh0hfz ; struct { int_T Tail ; int_T Head ; int_T
Last ; int_T CircularBufSize ; int_T MaxNewBufSize ; } amxtebsuok ; int_T
gw2nevades ; int_T beov4p1chl ; int_T i1d01tl30y ; int_T kmsrw41wv2 ; int_T
ori3ob0wbj ; int_T jtmvk2k11t ; int_T g33icp3oa5 ; int_T lm0jugnir2 ;
boolean_T dx43c5auhv ; boolean_T e50m41o2zc ; boolean_T ikdfizkwpn ; int8_T
imhks3haia ; int8_T f2jjc1wq2q ; int8_T lkimmiwkfm ; int8_T d1wjbe2mwx ;
int8_T bkxvh1udvf ; int8_T lxkp2jo22h ; int8_T ev00g24oaq ; int8_T nhy3an0buu
; int8_T meym2kkggb ; boolean_T lqflcq5fag ; boolean_T gqihgtfesf ; boolean_T
haix1u4b0d ; } DW ; typedef struct { real_T ed33yoocaq ; real_T oxpohnjabn ;
real_T dixd3f2rcr ; real_T ew102iggpt ; real_T mnpnqi1mo5 ; real_T afa2wi01oy
; real_T ngshao3zxa ; } X ; typedef struct { real_T ed33yoocaq ; real_T
oxpohnjabn ; real_T dixd3f2rcr ; real_T ew102iggpt ; real_T mnpnqi1mo5 ;
real_T afa2wi01oy ; real_T ngshao3zxa ; } XDot ; typedef struct { boolean_T
ed33yoocaq ; boolean_T oxpohnjabn ; boolean_T dixd3f2rcr ; boolean_T
ew102iggpt ; boolean_T mnpnqi1mo5 ; boolean_T afa2wi01oy ; boolean_T
ngshao3zxa ; } XDis ; typedef struct { real_T ed33yoocaq ; real_T oxpohnjabn
; real_T dixd3f2rcr ; real_T ew102iggpt ; real_T mnpnqi1mo5 ; real_T
afa2wi01oy ; real_T ngshao3zxa ; } CStateAbsTol ; typedef struct { real_T
ed33yoocaq ; real_T oxpohnjabn ; real_T dixd3f2rcr ; real_T ew102iggpt ;
real_T mnpnqi1mo5 ; real_T afa2wi01oy ; real_T ngshao3zxa ; } CXPtMin ;
typedef struct { real_T ed33yoocaq ; real_T oxpohnjabn ; real_T dixd3f2rcr ;
real_T ew102iggpt ; real_T mnpnqi1mo5 ; real_T afa2wi01oy ; real_T ngshao3zxa
; } CXPtMax ; typedef struct { real_T fycbfekjas ; real_T gpmcbt2pph ; real_T
l5bd4ogmob ; real_T nyixy42sdh ; real_T fsqi2dsh3v ; real_T exrdq4erzt ;
real_T jizglwcpdw ; real_T fxg0jjblig ; real_T olhbe15f4n ; real_T frviirlf2h
; real_T cv4m0d5kqn ; real_T eggfqjeez3 ; real_T fstuedu0dk ; real_T
kiqcscjx1o ; } ZCV ; typedef struct { ZCSigState edwiftu20j ; ZCSigState
behaxxarnb ; ZCSigState k23vkqx30c ; } PrevZCX ; typedef struct { real_T
okzizglgcx ; real_T czen2q1qls ; } ExtU ; typedef struct { real_T pt4snnlwkj
; real_T mnieqx4l3i ; real_T hddohlna3z ; } ExtY ; typedef struct {
rtwCAPI_ModelMappingInfo mmi ; } DataMapInfo ; struct P_ { real_T
AF_sensor_tol ; real_T MAF_sensor_tol ; real_T fault_time ; real_T
fuel_inj_tol ; real_T measureTime ; real_T simTime ; uint8_T spec_num ;
real_T Pwon_Time ; real_T Pwon_Y0 ; real_T Pwon_YFinal ; real_T
PulseGenerator_10ms_Amp ; real_T PulseGenerator_10ms_Period ; real_T
PulseGenerator_10ms_Duty ; real_T PulseGenerator_10ms_PhaseDelay ; real_T
Integrator_IC ; real_T AF_sensor_Gain ; real_T Throttledelay_A ; real_T
Throttledelay_C ; real_T theta090_UpperSat ; real_T theta090_LowerSat ;
real_T EngineSpeed9001100_UpperSat ; real_T EngineSpeed9001100_LowerSat ;
real_T rpmtorads_Gain ; real_T AFSensorFaultInjection_Y0 ; real_T
AFSensorFaultInjection_YFinal ; real_T Switch_Threshold ; real_T p00543bar_IC
; real_T Switch_Threshold_g5ldd2qgcy ; real_T Integrator_IC_lkhrhjwbot ;
real_T Gain_Gain ; real_T radstorpm_Gain ; real_T Gain_Gain_lwwetqjf5s ;
real_T uKappa_tableData [ 20 ] ; real_T uKappa_bp01Data [ 5 ] ; real_T
uKappa_bp02Data [ 4 ] ; real_T Kappatolerance0911_Gain ; real_T
Integrator_IC_mrk54afxwh ; real_T tau_ww_tableData [ 20 ] ; real_T
tau_ww_bp01Data [ 5 ] ; real_T tau_ww_bp02Data [ 4 ] ; real_T
tau_wwtolerance0911_Gain ; real_T fuelsystemtransportdelay_MaxDelay ; real_T
fuelsystemtransportdelay_InitOutput ; real_T Gain1_Gain ; real_T
radstorpm_Gain_phyjrb0ib3 ; real_T delays_tableData [ 20 ] ; real_T
delays_bp01Data [ 5 ] ; real_T delays_bp02Data [ 4 ] ; real_T RTVm_Gain ;
real_T Gain_Gain_mq3vllxyxc ; real_T AtmosphericPressurebar_Value ; real_T
Baseopeningangle_Value ; real_T FaultySensorOutput_Value ; real_T
SonicFlow_Value ; real_T Constant_Value ; real_T Constant_Value_i2zubjcpp0 ;
real_T Integrator_IC_b500ztwhjo ; real_T MeasureOn_Time ; real_T MeasureOn_Y0
; real_T MeasureOn_YFinal ; real_T MeasureOn_Y0_mao34pee2i ; real_T
MeasureOn_YFinal_nzkifqrhnv ; real_T Constant_Value_loxo21kpgj ; real32_T
fb_fuel_saturation_UpperSat ; real32_T fb_fuel_saturation_LowerSat ; real32_T
Constant1_Value ; real32_T Constant2_Value ; real32_T Constant3_Value ;
real32_T Constant4_Value ; real32_T Constant5_Value ; real32_T
UnitDelay1_InitialCondition ; real32_T Gain_Gain_jfaopuunxi ; real32_T
Constant1_Value_h3gosz3rso ; real32_T Gain_Gain_c5md433mqa ; real32_T
Gain1_Gain_an2gitrlld ; real32_T UnitDelay1_InitialCondition_lwvhtplh3d ;
real32_T fuel_saturation_UpperSat ; real32_T fuel_saturation_LowerSat ;
real32_T Constant2_Value_h15bkuhc3g ; real32_T Constant3_Value_ar1ajyxmim ;
real32_T airbyfuel_reference_power_Value ; real32_T airbyfuel_reference_Value
; real32_T UnitDelay2_InitialCondition ; real32_T sampling_sec_Value ;
real32_T normal_mode_start_sec_Value ; real32_T Constant_Value_d4xw1fezi3 ;
real32_T Constant1_Value_frpjq2fffb ; real32_T threshold_Value ; real32_T
Constant1_Value_ln0tldisjx ; real32_T Constant2_Value_ki5yoscsu1 ; real32_T
Constant3_Value_old4tikkcg ; real32_T DataStoreMemory_InitialValue ; real32_T
DataStoreMemory1_InitialValue ; real32_T DataStoreMemory2_InitialValue ;
real32_T DataStoreMemory3_InitialValue ; real32_T commanded_fuel_InitialValue
; real32_T mode_fb1_InitialValue ; real32_T Gain2_Gain ; uint32_T
uKappa_maxIndex [ 2 ] ; uint32_T tau_ww_maxIndex [ 2 ] ; uint32_T
delays_maxIndex [ 2 ] ; boolean_T UnitDelay1_InitialCondition_chrxrrvhjp ;
boolean_T UnitDelay1_InitialCondition_f1k0xy35kz ; boolean_T
UnitDelay_InitialCondition ; boolean_T mode_fb_InitialValue ; } ; extern
const char_T * RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ;
extern DW rtDW ; extern PrevZCX rtPrevZCX ; extern ExtU rtU ; extern ExtY rtY
; extern P rtP ; extern mxArray * mr_AbstractFuelControl_M1_GetDWork ( ) ;
extern void mr_AbstractFuelControl_M1_SetDWork ( const mxArray * ssDW ) ;
extern mxArray * mr_AbstractFuelControl_M1_GetSimStateDisallowedBlocks ( ) ;
extern const rtwCAPI_ModelMappingStaticInfo *
AbstractFuelControl_M1_GetCAPIStaticMap ( void ) ; extern SimStruct * const
rtS ; extern DataMapInfo * rt_dataMapInfoPtr ; extern
rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T tid )
; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T
tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void
MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif

#ifndef LKA_T_staliro_h_
#define LKA_T_staliro_h_
#ifndef LKA_T_staliro_COMMON_INCLUDES_
#define LKA_T_staliro_COMMON_INCLUDES_
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
#include "LKA_T_staliro_types.h"
#include "rtGetNaN.h"
#include <stddef.h>
#include "rtw_modelmap_simtarget.h"
#include "rt_defines.h"
#include <string.h>
#define MODEL_NAME LKA_T_staliro
#define NSAMPLE_TIMES (3) 
#define NINPUTS (0)       
#define NOUTPUTS (1)     
#define NBLOCKIO (52) 
#define NUM_ZC_EVENTS (0) 
#ifndef NCSTATES
#define NCSTATES (4)   
#elif NCSTATES != 4
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
typedef struct { real_T onhvape52u ; } j031qli2g5 ; typedef struct { int32_T
ad0pg2zl2x ; boolean_T am1q23zvbk ; } e5kxs0w0r0 ; typedef struct { int32_T
akqsbdynir ; boolean_T pckcm0tazc ; } iqwltgu41w ; typedef struct { real_T
mccd0iruvd ; } ix5sine44a ; typedef struct { int32_T ov2ak15hts ; boolean_T
mz5ndlrakh ; } fooi5fpqn2 ; typedef struct { real_T jl0aukavwi ; real_T
itiywpghyu ; real_T k0suforjme ; real_T o13qcxbdip ; real_T ncih2tph21 ;
real_T pend3mkk21 ; real_T bfv1nrsihf ; real_T jufm00blrf ; real_T glp22kvlec
; real_T dvyu1sscyo ; real_T cvvfihfwkh ; real_T d4mpdlgsh1 ; real_T
bjzx13hfvh ; real_T dxboshnqcx [ 2 ] ; real_T cffmjtonjb ; real_T opyhkzbx15
; real_T kjjzvf0odm [ 5 ] ; real_T o0gndlrdqg ; real_T ns4zakixk4 [ 25 ] ;
real_T p42cer33ct ; real_T ppw1rz40hr ; boolean_T etstptzcgp [ 4 ] ;
j031qli2g5 euyeijkvwj ; j031qli2g5 kug2oixzkm ; j031qli2g5 lzaj2qo24h ;
j031qli2g5 e5mwwrj2xv ; j031qli2g5 elsnrsfkpu ; j031qli2g5 gnn330lieg ;
j031qli2g5 be3jllceim ; ix5sine44a gnys0rptin ; ix5sine44a k1mx4005qx ;
j031qli2g5 gccus3jafp ; j031qli2g5 njn5yczmu3 ; j031qli2g5 cik2vkh3a4 ;
j031qli2g5 bk3nxv3tlr ; j031qli2g5 cc1fon30yl ; } B ; typedef struct { real_T
j45svihtjo ; real_T mwdhrz5xb1 [ 5 ] ; real_T oen24533b2 ; real_T kwh42zszzd
[ 25 ] ; struct { void * AQHandles ; } kz0usvbqfo ; struct { void * AQHandles
; } h35e1w25qj ; struct { void * AQHandles ; } a5r4vbzi4b ; int32_T
h4zkufiov3 ; int32_T fwdhnrc1pz ; int32_T e51nkuwvdf ; int32_T j0i5djvvgw ;
int32_T oikgzdquty ; int32_T evq0kveuwk ; boolean_T pswc1mgssa [ 4 ] ;
boolean_T b5dfi4px0f ; boolean_T eav1tlopa2 ; boolean_T hgfwy0uny1 ;
boolean_T axawio3aws ; boolean_T byo3k50uq4 ; boolean_T bjss44da1o ;
e5kxs0w0r0 euyeijkvwj ; e5kxs0w0r0 kug2oixzkm ; e5kxs0w0r0 lzaj2qo24h ;
e5kxs0w0r0 e5mwwrj2xv ; e5kxs0w0r0 elsnrsfkpu ; e5kxs0w0r0 gnn330lieg ;
e5kxs0w0r0 be3jllceim ; fooi5fpqn2 gnys0rptin ; fooi5fpqn2 k1mx4005qx ;
e5kxs0w0r0 gccus3jafp ; e5kxs0w0r0 njn5yczmu3 ; iqwltgu41w cvyjidmo4f ;
iqwltgu41w gqjzh0f3es ; e5kxs0w0r0 cik2vkh3a4 ; e5kxs0w0r0 bk3nxv3tlr ;
e5kxs0w0r0 cc1fon30yl ; } DW ; typedef struct { real_T fivs40guhu ; real_T
obmuwhiu30 ; real_T ntspwlarvq ; real_T jbfykaxbhu ; } X ; typedef struct {
real_T fivs40guhu ; real_T obmuwhiu30 ; real_T ntspwlarvq ; real_T jbfykaxbhu
; } XDot ; typedef struct { boolean_T fivs40guhu ; boolean_T obmuwhiu30 ;
boolean_T ntspwlarvq ; boolean_T jbfykaxbhu ; } XDis ; typedef struct {
real_T ggwcqiyygf ; } ExtY ; typedef struct { rtwCAPI_ModelMappingInfo mmi ;
} DataMapInfo ; struct P_ { real_T Cf ; real_T Cr ; real_T Iz ; real_T Vx ;
real_T e1_initial ; real_T e2_initial ; real_T lf ; real_T lr ; real_T m ;
real_T u_max ; real_T u_min ; real_T LaneKeepingAssistSystem_TransportLag ;
real_T Longitudinalvelocitymustbepositive_min ; real_T
last_x_InitialCondition [ 5 ] ; real_T last_mv_InitialCondition ; real_T
Memory1_InitialCondition ; real_T umin_scale4_Gain ; real_T ymin_scale1_Gain
[ 2 ] ; real_T ymin_scale2_Gain ; real_T extmv_scale_Gain ; real_T
uref_scale_Gain ; real_T Gain2_Gain ; real_T Gain3_Gain ; real_T Gain4_Gain ;
real_T Gain_Gain ; real_T Gain1_Gain ; real_T LastPcov_InitialCondition [ 25
] ; real_T u_scale_Gain ; real_T Gain4_Gain_nzox2md245 ; real_T Vy_IC ;
real_T Yaw_rate_IC ; real_T Constant_Value ; real_T E_zero_Value ; real_T
F_zero_Value [ 2 ] ; real_T G_zero_Value ; real_T ywt_zero_Value [ 2 ] ;
real_T uwt_zero_Value ; real_T duwt_zero_Value ; real_T
Referenceconstant_Value [ 2 ] ; real_T ymin_zero_Value [ 2 ] ; real_T
ymax_zero_Value [ 2 ] ; real_T ecrwt_zero_Value ; real_T UConstant_Value [ 2
] ; real_T YConstant_Value [ 2 ] ; real_T XConstant_Value [ 4 ] ; real_T
DXConstant_Value [ 4 ] ; real_T S_zero_Value ; real_T extmv_zero_Value ;
real_T mvtarget_zero_Value ; real_T Enableoptimizationconstant_Value ; real_T
Externalcontrolsignalconstant_Value ; real_T CmConstant_Value [ 4 ] ; real_T
Sampletimeconstant_Value ; real_T Vehiclelengthtofrontconstant_Value ; real_T
Vehiclefronttirecorneringstiffnessconstant_Value ; real_T
Vehicleyawinertiaconstant_Value ; real_T Vehiclemassconstant_Value ; real_T
Vehiclelengthtorearconstant_Value ; real_T
Vehiclereartirecorneringstiffnessconstant_Value ; real_T
VehicledynamicsmatrixAconstant_Value [ 4 ] ; real_T
VehicledynamicsmatrixBconstant_Value [ 2 ] ; real_T
VehicledynamicsmatrixCconstant_Value [ 4 ] ; int32_T
FixedHorizonOptimizer_Ndis ; boolean_T Memory_InitialCondition [ 4 ] ;
boolean_T Assertion_Enabled ; } ; extern const char_T *
RT_MEMORY_ALLOCATION_ERROR ; extern B rtB ; extern X rtX ; extern DW rtDW ;
extern ExtY rtY ; extern P rtP ; extern mxArray * mr_LKA_T_staliro_GetDWork ( )
; extern void mr_LKA_T_staliro_SetDWork ( const mxArray * ssDW ) ; extern
mxArray * mr_LKA_T_staliro_GetSimStateDisallowedBlocks ( ) ; extern const
rtwCAPI_ModelMappingStaticInfo * LKA_T_staliro_GetCAPIStaticMap ( void ) ;
extern SimStruct * const rtS ; extern DataMapInfo * rt_dataMapInfoPtr ;
extern rtwCAPI_ModelMappingInfo * rt_modelMapInfoPtr ; void MdlOutputs ( int_T
tid ) ; void MdlOutputsParameterSampleTime ( int_T tid ) ; void MdlUpdate ( int_T tid ) ; void MdlTerminate ( void ) ; void MdlInitializeSizes ( void ) ; void MdlInitializeSampleTimes ( void ) ; SimStruct * raccel_register_model ( ssExecutionInfo * executionInfo ) ;
#endif

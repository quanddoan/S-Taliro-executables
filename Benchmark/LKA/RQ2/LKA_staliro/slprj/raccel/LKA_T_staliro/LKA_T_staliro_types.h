#ifndef LKA_T_staliro_types_h_
#define LKA_T_staliro_types_h_
#include "rtwtypes.h"
#ifndef DEFINED_TYPEDEF_FOR_struct_6JiGknwETyJ29nPTFtNESB_
#define DEFINED_TYPEDEF_FOR_struct_6JiGknwETyJ29nPTFtNESB_
typedef struct { real_T values [ 151 ] ; } struct_6JiGknwETyJ29nPTFtNESB ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_ZlxUh5Ej3WM7HTTkjBxgwB_
#define DEFINED_TYPEDEF_FOR_struct_ZlxUh5Ej3WM7HTTkjBxgwB_
typedef struct { real_T time [ 151 ] ; struct_6JiGknwETyJ29nPTFtNESB signals
; } struct_ZlxUh5Ej3WM7HTTkjBxgwB ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_sUVODNry4tDyWyEOxe2ZuB_
#define DEFINED_TYPEDEF_FOR_struct_sUVODNry4tDyWyEOxe2ZuB_
typedef struct { real_T AbsoluteTolerance ; real_T RelativeTolerance ;
int32_T MaxIterations ; uint8_T sl_padding0 [ 4 ] ; real_T
RelaxationParameter ; real_T PenaltyParameter ; real_T StepSize ; }
struct_sUVODNry4tDyWyEOxe2ZuB ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_WTmPWsEMvOzNnnAVv5fQNC_
#define DEFINED_TYPEDEF_FOR_struct_WTmPWsEMvOzNnnAVv5fQNC_
typedef struct { int32_T MaxIterations ; uint8_T sl_padding0 [ 4 ] ; real_T
ConstraintTolerance ; boolean_T UseWarmStart ; uint8_T sl_padding1 [ 7 ] ; }
struct_WTmPWsEMvOzNnnAVv5fQNC ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_WHjMt45Sk148iktWsfFxl_
#define DEFINED_TYPEDEF_FOR_struct_WHjMt45Sk148iktWsfFxl_
typedef struct { int32_T MaxIterations ; uint8_T sl_padding0 [ 4 ] ; real_T
ConstraintTolerance ; real_T OptimalityTolerance ; real_T
ComplementarityTolerance ; real_T StepTolerance ; }
struct_WHjMt45Sk148iktWsfFxl ;
#endif
#ifndef DEFINED_TYPEDEF_FOR_struct_HAuMbsesMT3GRRifSkdH0F_
#define DEFINED_TYPEDEF_FOR_struct_HAuMbsesMT3GRRifSkdH0F_
typedef struct { int32_T MaxIterations ; uint8_T sl_padding0 [ 4 ] ; real_T
ConstraintTolerance ; boolean_T UseWarmStart ; uint8_T sl_padding1 [ 7 ] ;
real_T DiscreteConstraintTolerance ; boolean_T RoundingAtRootNode ; uint8_T
sl_padding2 [ 3 ] ; int32_T MaxPendingNodes ; } struct_HAuMbsesMT3GRRifSkdH0F
;
#endif
#ifndef SS_UINT64
#define SS_UINT64 23
#endif
#ifndef SS_INT64
#define SS_INT64 24
#endif
typedef struct P_ P ;
#endif

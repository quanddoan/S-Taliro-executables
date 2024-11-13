#ifndef LKA_T_staliro_cap_host_h__
#define LKA_T_staliro_cap_host_h__
#ifdef HOST_CAPI_BUILD
#include "rtw_capi.h"
#include "rtw_modelmap_simtarget.h"
typedef struct { rtwCAPI_ModelMappingInfo mmi ; }
LKA_T_staliro_host_DataMapInfo_T ;
#ifdef __cplusplus
extern "C" {
#endif
void LKA_T_staliro_host_InitializeDataMapInfo ( LKA_T_staliro_host_DataMapInfo_T
* dataMap , const char * path ) ;
#ifdef __cplusplus
}
#endif
#endif
#endif

#include "ACC_T_staliro_capi_host.h"
static ACC_T_staliro_host_DataMapInfo_T root;
static int initialized = 0;
rtwCAPI_ModelMappingInfo *getRootMappingInfo()
{
    if (initialized == 0) {
        initialized = 1;
        ACC_T_staliro_host_InitializeDataMapInfo(&(root), "ACC_T_staliro");
    }
    return &root.mmi;
}

rtwCAPI_ModelMappingInfo *mexFunction(){return(getRootMappingInfo());}

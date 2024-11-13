#include "AbstractFuelControl_M1_capi_host.h"
static AbstractFuelControl_M1_host_DataMapInfo_T root;
static int initialized = 0;
rtwCAPI_ModelMappingInfo *getRootMappingInfo()
{
    if (initialized == 0) {
        initialized = 1;
        AbstractFuelControl_M1_host_InitializeDataMapInfo(&(root), "AbstractFuelControl_M1");
    }
    return &root.mmi;
}

rtwCAPI_ModelMappingInfo *mexFunction(){return(getRootMappingInfo());}

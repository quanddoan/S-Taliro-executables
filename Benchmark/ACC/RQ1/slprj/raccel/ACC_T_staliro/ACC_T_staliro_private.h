#ifndef ACC_T_staliro_private_h_
#define ACC_T_staliro_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "ACC_T_staliro.h"
#include "ACC_T_staliro_types.h"
#if !defined(rt_VALIDATE_MEMORY)
#define rt_VALIDATE_MEMORY(S, ptr)     if(!(ptr)) {\
    ssSetErrorStatus(rtS, RT_MEMORY_ALLOCATION_ERROR);\
    }
#endif
#if !defined(rt_FREE)
#if !defined(_WIN32)
#define rt_FREE(ptr)     if((ptr) != (NULL)) {\
    free((ptr));\
    (ptr) = (NULL);\
    }
#else
#define rt_FREE(ptr)     if((ptr) != (NULL)) {\
    free((void *)(ptr));\
    (ptr) = (NULL);\
    }
#endif
#endif
extern void eiaa5vn5qc ( mh1uv52p5m * localDW ) ; extern void ienjov1hvl ( real_T nnvsgs2qso , duxnsc5qxr * localB , mh1uv52p5m * localDW ) ; extern void h1gf2f5as1 ( k1dhhntxtu * localDW ) ; extern void gkzaedqnej ( real_T a4kcjpszio , bb1fpji5wu * localB , k1dhhntxtu * localDW ) ;
#if defined(MULTITASKING)
#error Model (ACC_T_staliro) was built in \SingleTasking solver mode, however the MULTITASKING define is \present. If you have multitasking (e.g. -DMT or -DMULTITASKING) \defined on the Code Generation page of Simulation parameter dialog, please \remove it and on the Solver page, select solver mode \MultiTasking. If the Simulation parameter dialog is configured \correctly, please verify that your template makefile is \configured correctly.
#endif
#endif

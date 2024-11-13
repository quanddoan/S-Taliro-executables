#ifndef LKA_T_staliro_private_h_
#define LKA_T_staliro_private_h_
#include "rtwtypes.h"
#include "builtin_typeid_types.h"
#include "multiword_types.h"
#include "LKA_T_staliro.h"
#include "LKA_T_staliro_types.h"
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
extern int32_T div_nde_s32_floor ( int32_T numerator , int32_T denominator )
; extern void mgzh2u4e23 ( e5kxs0w0r0 * localDW ) ; extern void kj444jmrfp ( real_T gzcmrvxwtn , j031qli2g5 * localB , e5kxs0w0r0 * localDW ) ; extern void fcfdecnkl3 ( iqwltgu41w * localDW ) ; extern void hpytpcdps5 ( iqwltgu41w * localDW ) ; extern void i1fgdxmeff ( fooi5fpqn2 * localDW ) ; extern void ea5jflxydi ( real_T bviwbnh0ex , ix5sine44a * localB , fooi5fpqn2 * localDW ) ;
#if defined(MULTITASKING)
#error Model (LKA_T_staliro) was built in \SingleTasking solver mode, however the MULTITASKING define is \present. If you have multitasking (e.g. -DMT or -DMULTITASKING) \defined on the Code Generation page of Simulation parameter dialog, please \remove it and on the Solver page, select solver mode \MultiTasking. If the Simulation parameter dialog is configured \correctly, please verify that your template makefile is \configured correctly.
#endif
#endif

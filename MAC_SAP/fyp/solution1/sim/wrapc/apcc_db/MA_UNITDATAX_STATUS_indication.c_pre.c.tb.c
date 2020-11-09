/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC_mac48 l_struct_OC_mac48;

/* Structure contents */
struct l_struct_OC_mac48 {
   char field0[6];
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void ma_unitdatax_status_indication(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char llvm_cbe_trans_sts,  char llvm_cbe_provided_priority, bool llvm_cbe_provided_s_class);


/* Global Variable Definitions and Initialization */
static unsigned char aesl_internal_unsupported_service_class;
static unsigned char aesl_internal_successful;
static unsigned char aesl_internal_unsupported_priority;
static unsigned char aesl_internal_unsupported_channel_identifier;
static unsigned char aesl_internal_unsupported_tx_params;
static unsigned char aesl_internal_queue_full;


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

void ma_unitdatax_status_indication(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char llvm_cbe_trans_sts,  char llvm_cbe_provided_priority, bool llvm_cbe_provided_s_class) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  unsigned char llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned char llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned char llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  unsigned char llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned char llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  unsigned char llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned char llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned char llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned char llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned char llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned char llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @ma_unitdatax_status_indication\n");
  if (((llvm_cbe_trans_sts&7U) == (((unsigned char )0)&7U))) {
    goto llvm_cbe_tmp__13;
  } else {
    goto llvm_cbe_tmp__14;
  }

llvm_cbe_tmp__13:
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load i8* @aesl_internal_successful, align 1, !dbg !7 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__1 = (unsigned char )*(&aesl_internal_successful);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = add i8 %%3, 1, !dbg !7 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__2 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__1&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__2&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%4, i8* @aesl_internal_successful, align 1, !dbg !7 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_16_count);
  *(&aesl_internal_successful) = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  goto llvm_cbe_tmp__15;

llvm_cbe_tmp__14:
  if (((llvm_cbe_trans_sts&7U) == (((unsigned char )1)&7U))) {
    goto llvm_cbe_tmp__16;
  } else {
    goto llvm_cbe_tmp__17;
  }

llvm_cbe_tmp__16:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* @aesl_internal_unsupported_priority, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__3 = (unsigned char )*(&aesl_internal_unsupported_priority);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = add i8 %%8, 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__4 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__3&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__4&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%9, i8* @aesl_internal_unsupported_priority, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_22_count);
  *(&aesl_internal_unsupported_priority) = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
  goto llvm_cbe_tmp__18;

llvm_cbe_tmp__17:
  if (((llvm_cbe_trans_sts&7U) == (((unsigned char )2)&7U))) {
    goto llvm_cbe_tmp__19;
  } else {
    goto llvm_cbe_tmp__20;
  }

llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i8* @aesl_internal_unsupported_service_class, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__5 = (unsigned char )*(&aesl_internal_unsupported_service_class);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add i8 %%13, 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__6 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__5&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__6&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%14, i8* @aesl_internal_unsupported_service_class, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_28_count);
  *(&aesl_internal_unsupported_service_class) = llvm_cbe_tmp__6;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__20:
  if (((llvm_cbe_trans_sts&7U) == (((unsigned char )3)&7U))) {
    goto llvm_cbe_tmp__22;
  } else {
    goto llvm_cbe_tmp__23;
  }

llvm_cbe_tmp__22:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = load i8* @aesl_internal_unsupported_channel_identifier, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__7 = (unsigned char )*(&aesl_internal_unsupported_channel_identifier);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add i8 %%18, 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__8 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__7&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__8&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%19, i8* @aesl_internal_unsupported_channel_identifier, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_34_count);
  *(&aesl_internal_unsupported_channel_identifier) = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
  goto llvm_cbe_tmp__24;

llvm_cbe_tmp__23:
  if (((llvm_cbe_trans_sts&7U) == (((unsigned char )4u)&7U))) {
    goto llvm_cbe_tmp__25;
  } else {
    goto llvm_cbe_tmp__26;
  }

llvm_cbe_tmp__25:
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i8* @aesl_internal_unsupported_tx_params, align 1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__9 = (unsigned char )*(&aesl_internal_unsupported_tx_params);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = add i8 %%23, 1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__10 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__9&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__10&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%24, i8* @aesl_internal_unsupported_tx_params, align 1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_40_count);
  *(&aesl_internal_unsupported_tx_params) = llvm_cbe_tmp__10;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
  goto llvm_cbe_tmp__27;

llvm_cbe_tmp__26:
  if (((llvm_cbe_trans_sts&7U) == (((unsigned char )-3)&7U))) {
    goto llvm_cbe_tmp__28;
  } else {
    goto llvm_cbe_tmp__29;
  }

llvm_cbe_tmp__28:
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i8* @aesl_internal_queue_full, align 1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__11 = (unsigned char )*(&aesl_internal_queue_full);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = add i8 %%28, 1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__12 = (unsigned char )((unsigned char )(((unsigned char )(llvm_cbe_tmp__11&255ull)) + ((unsigned char )(((unsigned char )1)&255ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__12&255ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%29, i8* @aesl_internal_queue_full, align 1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_status_indication  --> \n", ++aesl_llvm_cbe_46_count);
  *(&aesl_internal_queue_full) = llvm_cbe_tmp__12;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
  goto llvm_cbe_tmp__29;

llvm_cbe_tmp__29:
  goto llvm_cbe_tmp__27;

llvm_cbe_tmp__27:
  goto llvm_cbe_tmp__24;

llvm_cbe_tmp__24:
  goto llvm_cbe_tmp__21;

llvm_cbe_tmp__21:
  goto llvm_cbe_tmp__18;

llvm_cbe_tmp__18:
  goto llvm_cbe_tmp__15;

llvm_cbe_tmp__15:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @ma_unitdatax_status_indication}\n");
  return;
}


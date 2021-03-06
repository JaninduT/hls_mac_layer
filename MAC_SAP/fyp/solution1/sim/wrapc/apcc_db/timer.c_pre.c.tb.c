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

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void start_timer( char llvm_cbe_count, bool *llvm_cbe_timeout, bool llvm_cbe_count_idle, bool *llvm_cbe_medium_state);
void stop_timer(bool *llvm_cbe_medium_state);


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

void start_timer( char llvm_cbe_count, bool *llvm_cbe_timeout, bool llvm_cbe_count_idle, bool *llvm_cbe_medium_state) {
  static  unsigned long long aesl_llvm_cbe_total_count_count = 0;
  signed short llvm_cbe_total_count;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_tc_count = 0;
  signed short llvm_cbe_tc;    /* Address-exposed local */
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
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  unsigned short llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  unsigned short llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_2e_us_count = 0;
  unsigned int llvm_cbe_storemerge_2e_us;
  unsigned int llvm_cbe_storemerge_2e_us__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  unsigned short llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned short llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  unsigned short llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  bool llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge_count = 0;
  unsigned int llvm_cbe_storemerge;
  unsigned int llvm_cbe_storemerge__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned short llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned short llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned short llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  bool llvm_cbe_storemerge1;
  bool llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @start_timer\n");
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i16 0, i16* %%total_count, align 2, !dbg !6 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_11_count);
  *((unsigned short volatile*)(&llvm_cbe_total_count)) = ((unsigned short )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )0));
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i16 0, i16* %%tc, align 2, !dbg !6 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_13_count);
  *((unsigned short volatile*)(&llvm_cbe_tc)) = ((unsigned short )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = zext i8 %%count to i16, !dbg !6 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__1 = (unsigned short )((unsigned short )(unsigned char )llvm_cbe_count&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = mul i16 %%1, 100, !dbg !6 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__2 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__1&65535ull)) * ((unsigned short )(((unsigned short )100)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__2&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i16 %%2, i16* %%total_count, align 2, !dbg !6 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_18_count);
  *((unsigned short volatile*)(&llvm_cbe_total_count)) = llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%timeout, align 1, !dbg !4 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_19_count);
  *llvm_cbe_timeout = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  if (llvm_cbe_count_idle) {
    llvm_cbe_storemerge_2e_us__PHI_TEMPORARY = (unsigned int )((unsigned int )0);   /* for PHI node */
    goto llvm_cbe__2e_split_2e_us;
  } else {
    llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )((unsigned int )0);   /* for PHI node */
    goto llvm_cbe__2e__2e_split_crit_edge;
  }

  do {     /* Syntactic loop '.split.us' to make GCC happy */
llvm_cbe__2e_split_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge.us = phi i20 [ %%11, %%8 ], [ 0, %%0  for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_storemerge_2e_us_count);
  llvm_cbe_storemerge_2e_us = (unsigned int )llvm_cbe_storemerge_2e_us__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge.us = 0x%X",llvm_cbe_storemerge_2e_us);
printf("\n = 0x%X",llvm_cbe_tmp__9);
printf("\n = 0x%X",((unsigned int )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = zext i20 %%storemerge.us to i32, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__3 = (unsigned int )((unsigned int )(unsigned int )llvm_cbe_storemerge_2e_us&1048575U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load volatile i16* %%total_count, align 2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__4 = (unsigned short )*((unsigned short volatile*)(&llvm_cbe_total_count));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = zext i16 %%4 to i32, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__4&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = add nsw i32 %%5, -2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_tmp__5&4294967295ull)) + ((unsigned int )(4294967294u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__3) < ((signed int )llvm_cbe_tmp__6))) {
    goto llvm_cbe_tmp__18;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (bool )1;   /* for PHI node */
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  }

llvm_cbe_tmp__19:
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load volatile i16* %%tc, align 2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__7 = (unsigned short )*((unsigned short volatile*)(&llvm_cbe_tc));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = add i16 %%9, 1, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__8 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__7&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__8&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i16 %%10, i16* %%tc, align 2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_33_count);
  *((unsigned short volatile*)(&llvm_cbe_tc)) = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = add i20 %%storemerge.us, 1, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__9 = (unsigned int )((unsigned int )(llvm_cbe_storemerge_2e_us&1048575ull)) + ((unsigned int )(((unsigned int )1)&1048575ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__9&1048575ull)));
  llvm_cbe_storemerge_2e_us__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
  goto llvm_cbe__2e_split_2e_us;

llvm_cbe_tmp__18:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load volatile i1* %%medium_state, align 1, !dbg !5 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__10 = (bool )((*((bool volatile*)llvm_cbe_medium_state))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
  if (llvm_cbe_tmp__10) {
    goto llvm_cbe_tmp__19;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  }

  } while (1); /* end of syntactic loop '.split.us' */
  do {     /* Syntactic loop '..split_crit_edge' to make GCC happy */
llvm_cbe__2e__2e_split_crit_edge:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge = phi i20 [ %%22, %%19 ], [ 0, %%0  for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_storemerge_count);
  llvm_cbe_storemerge = (unsigned int )llvm_cbe_storemerge__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge = 0x%X",llvm_cbe_storemerge);
printf("\n = 0x%X",llvm_cbe_tmp__17);
printf("\n = 0x%X",((unsigned int )0));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = zext i20 %%storemerge to i32, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(unsigned int )llvm_cbe_storemerge&1048575U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load volatile i16* %%total_count, align 2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__12 = (unsigned short )*((unsigned short volatile*)(&llvm_cbe_total_count));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = zext i16 %%15 to i32, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__13 = (unsigned int )((unsigned int )(unsigned short )llvm_cbe_tmp__12&65535U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%16, -2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__14 = (unsigned int )((unsigned int )(llvm_cbe_tmp__13&4294967295ull)) + ((unsigned int )(4294967294u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__14&4294967295ull)));
  if ((((signed int )llvm_cbe_tmp__11) < ((signed int )llvm_cbe_tmp__14))) {
    goto llvm_cbe_tmp__20;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (bool )1;   /* for PHI node */
    goto llvm_cbe__2e_us_2d_lcssa_2e_us;
  }

llvm_cbe_tmp__20:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load volatile i16* %%tc, align 2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__15 = (unsigned short )*((unsigned short volatile*)(&llvm_cbe_tc));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = add i16 %%20, 1, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__16 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_tmp__15&65535ull)) + ((unsigned short )(((unsigned short )1)&65535ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__16&65535ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store volatile i16 %%21, i16* %%tc, align 2, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_52_count);
  *((unsigned short volatile*)(&llvm_cbe_tc)) = llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = add i20 %%storemerge, 1, !dbg !7 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__17 = (unsigned int )((unsigned int )(llvm_cbe_storemerge&1048575ull)) + ((unsigned int )(((unsigned int )1)&1048575ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__17&1048575ull)));
  llvm_cbe_storemerge__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__17;   /* for PHI node */
  goto llvm_cbe__2e__2e_split_crit_edge;

  } while (1); /* end of syntactic loop '..split_crit_edge' */
llvm_cbe__2e_us_2d_lcssa_2e_us:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i1 [ true, %%.split.us ], [ false, %%12 ], [ true, %%..split_crit_edge  for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (bool )((llvm_cbe_storemerge1__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",0);
printf("\n = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i1 %%storemerge1, i1* %%timeout, align 1, !dbg !4 for 0x%I64xth hint within @start_timer  --> \n", ++aesl_llvm_cbe_56_count);
  *llvm_cbe_timeout = ((llvm_cbe_storemerge1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\nstoremerge1 = 0x%X\n", llvm_cbe_storemerge1);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @start_timer}\n");
  return;
}


void stop_timer(bool *llvm_cbe_medium_state) {
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @stop_timer\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%medium_state, align 1, !dbg !4 for 0x%I64xth hint within @stop_timer  --> \n", ++aesl_llvm_cbe_60_count);
  *llvm_cbe_medium_state = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @stop_timer}\n");
  return;
}


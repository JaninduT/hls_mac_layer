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
void phy_rxend_indication( char llvm_cbe_rec_error, bool *llvm_cbe_medium_state,  char *llvm_cbe_current_txop_holder,  char *llvm_cbe_frame_to_transfer);
void slot_boundary_timing( char , bool *, bool *);
void backoff_vo( char *);
void backoff_vi( char *);
void backoff_be( char *);
void backoff_bk( char *);
void start_tx( char ,  char *);


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

void phy_rxend_indication( char llvm_cbe_rec_error, bool *llvm_cbe_medium_state,  char *llvm_cbe_current_txop_holder,  char *llvm_cbe_frame_to_transfer) {
  static  unsigned long long aesl_llvm_cbe_idle_waited_count = 0;
  bool llvm_cbe_idle_waited;    /* Address-exposed local */
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
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  bool llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  unsigned char llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  bool llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @phy_rxend_indication\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_waited, align 1, !dbg !8 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_32_count);
  *(&llvm_cbe_idle_waited) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  if (((llvm_cbe_rec_error&3U) == (((unsigned char )0)&3U))) {
    goto llvm_cbe_tmp__5;
  } else {
    goto llvm_cbe_tmp__6;
  }

llvm_cbe_tmp__5:
if (AESL_DEBUG_TRACE)
printf("\n  call void @slot_boundary_timing(i2 zeroext 0, i1* %%idle_waited, i1* %%medium_state) nounwind, !dbg !4 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_36_count);
  slot_boundary_timing(((unsigned char )0), (bool *)(&llvm_cbe_idle_waited), (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
}
  goto llvm_cbe_tmp__7;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__7:
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i1* %%idle_waited, align 1, !dbg !8 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__1 = (bool )((*(&llvm_cbe_idle_waited))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
  if (llvm_cbe_tmp__1) {
    goto llvm_cbe_tmp__8;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe_tmp__9:
if (AESL_DEBUG_TRACE)
printf("\n  call void @slot_boundary_timing(i2 zeroext -1, i1* %%idle_waited, i1* %%medium_state) nounwind, !dbg !5 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_56_count);
  slot_boundary_timing(((unsigned char )-1), (bool *)(&llvm_cbe_idle_waited), (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )-1));
}
  goto llvm_cbe_tmp__7;

llvm_cbe_tmp__8:
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_vo(i3* %%current_txop_holder) nounwind, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_46_count);
  backoff_vo(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_vi(i3* %%current_txop_holder) nounwind, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_47_count);
  backoff_vi(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_be(i3* %%current_txop_holder) nounwind, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_48_count);
  backoff_be(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_bk(i3* %%current_txop_holder) nounwind, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_49_count);
  backoff_bk(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = load i3* %%current_txop_holder, align 1, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_50_count);
  llvm_cbe_tmp__2 = (unsigned char )*llvm_cbe_current_txop_holder;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
  if (((llvm_cbe_tmp__2&7U) == (((unsigned char )0)&7U))) {
    goto llvm_cbe_tmp__9;
  } else {
    goto llvm_cbe_tmp__10;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__10:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_tx(i3 zeroext %%6, i8* %%frame_to_transfer) nounwind, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_53_count);
  start_tx(llvm_cbe_tmp__2, ( char *)llvm_cbe_frame_to_transfer);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* %%current_txop_holder, align 1, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_54_count);
  *llvm_cbe_current_txop_holder = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__6:
if (AESL_DEBUG_TRACE)
printf("\n  call void @slot_boundary_timing(i2 zeroext 1, i1* %%idle_waited, i1* %%medium_state) nounwind, !dbg !5 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_58_count);
  slot_boundary_timing(((unsigned char )1), (bool *)(&llvm_cbe_idle_waited), (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )1));
}
  goto llvm_cbe_tmp__12;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__12:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i1* %%idle_waited, align 1, !dbg !8 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_66_count);
  llvm_cbe_tmp__3 = (bool )((*(&llvm_cbe_idle_waited))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
  if (llvm_cbe_tmp__3) {
    goto llvm_cbe_tmp__13;
  } else {
    goto llvm_cbe__2e_loopexit;
  }

llvm_cbe_tmp__14:
if (AESL_DEBUG_TRACE)
printf("\n  call void @slot_boundary_timing(i2 zeroext -1, i1* %%idle_waited, i1* %%medium_state) nounwind, !dbg !5 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_78_count);
  slot_boundary_timing(((unsigned char )-1), (bool *)(&llvm_cbe_idle_waited), (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )-1));
}
  goto llvm_cbe_tmp__12;

llvm_cbe_tmp__13:
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_vo(i3* %%current_txop_holder) nounwind, !dbg !6 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_68_count);
  backoff_vo(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_vi(i3* %%current_txop_holder) nounwind, !dbg !7 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_69_count);
  backoff_vi(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_be(i3* %%current_txop_holder) nounwind, !dbg !7 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_70_count);
  backoff_be(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @backoff_bk(i3* %%current_txop_holder) nounwind, !dbg !7 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_71_count);
  backoff_bk(( char *)llvm_cbe_current_txop_holder);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i3* %%current_txop_holder, align 1, !dbg !7 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__4 = (unsigned char )*llvm_cbe_current_txop_holder;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
  if (((llvm_cbe_tmp__4&7U) == (((unsigned char )0)&7U))) {
    goto llvm_cbe_tmp__14;
  } else {
    goto llvm_cbe_tmp__15;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__15:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_tx(i3 zeroext %%14, i8* %%frame_to_transfer) nounwind, !dbg !7 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_75_count);
  start_tx(llvm_cbe_tmp__4, ( char *)llvm_cbe_frame_to_transfer);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__4);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i3 0, i3* %%current_txop_holder, align 1, !dbg !7 for 0x%I64xth hint within @phy_rxend_indication  --> \n", ++aesl_llvm_cbe_76_count);
  *llvm_cbe_current_txop_holder = ((((unsigned char )0)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  goto llvm_cbe_tmp__11;

llvm_cbe__2e_loopexit:
  goto llvm_cbe_tmp__11;

llvm_cbe_tmp__11:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @phy_rxend_indication}\n");
  return;
}


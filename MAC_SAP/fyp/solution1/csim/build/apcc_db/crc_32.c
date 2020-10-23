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
signed int calc_crc( char *llvm_cbe_data);


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

signed int calc_crc( char *llvm_cbe_data) {
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
  static  unsigned long long aesl_llvm_cbe_storemerge8_count = 0;
  unsigned int llvm_cbe_storemerge8;
  unsigned int llvm_cbe_storemerge8__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_storemerge237_count = 0;
  unsigned int llvm_cbe_storemerge237;
  unsigned int llvm_cbe_storemerge237__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  unsigned long long llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
   char *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  unsigned char llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  unsigned int llvm_cbe_tmp__6;
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
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_count = 0;
  unsigned int llvm_cbe_storemerge2;
  unsigned int llvm_cbe_storemerge2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_1_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_1;
  unsigned int llvm_cbe_storemerge2_2e_1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned int llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_2_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_2;
  unsigned int llvm_cbe_storemerge2_2e_2__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  unsigned int llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_3_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_3;
  unsigned int llvm_cbe_storemerge2_2e_3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_4_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_4;
  unsigned int llvm_cbe_storemerge2_2e_4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  unsigned int llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  unsigned int llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_5_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_5;
  unsigned int llvm_cbe_storemerge2_2e_5__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  unsigned int llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_6_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_6;
  unsigned int llvm_cbe_storemerge2_2e_6__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  unsigned int llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  unsigned int llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge2_2e_7_count = 0;
  unsigned int llvm_cbe_storemerge2_2e_7;
  unsigned int llvm_cbe_storemerge2_2e_7__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned int llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @calc_crc\n");
  llvm_cbe_storemerge8__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  llvm_cbe_storemerge237__PHI_TEMPORARY = (unsigned int )4294967295u;   /* for PHI node */
  goto llvm_cbe_tmp__32;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__32:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge8 = phi i32 [ 0, %%0 ], [ %%65, %%64  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge8_count);
  llvm_cbe_storemerge8 = (unsigned int )llvm_cbe_storemerge8__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge8 = 0x%X",llvm_cbe_storemerge8);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__31);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge237 = phi i32 [ -1, %%0 ], [ %%storemerge2.7, %%64  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge237_count);
  llvm_cbe_storemerge237 = (unsigned int )llvm_cbe_storemerge237__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge237 = 0x%X",llvm_cbe_storemerge237);
printf("\n = 0x%X",4294967295u);
printf("\nstoremerge2.7 = 0x%X",llvm_cbe_storemerge2_2e_7);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge8 to i64, !dbg !2 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_14_count);
  llvm_cbe_tmp__1 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge8);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i8* %%data, i64 %%2, !dbg !2 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_15_count);
  llvm_cbe_tmp__2 = ( char *)(&llvm_cbe_data[(((signed long long )llvm_cbe_tmp__1))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__1));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i8* %%3, align 1, !dbg !2 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_16_count);
  llvm_cbe_tmp__3 = (unsigned char )*llvm_cbe_tmp__2;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = zext i8 %%4 to i32, !dbg !2 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_17_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__3&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = shl nuw i32 %%5, 24, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__5 = (unsigned int )llvm_cbe_tmp__4 << 24u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = xor i32 %%6, %%storemerge237, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_21_count);
  llvm_cbe_tmp__6 = (unsigned int )llvm_cbe_tmp__5 ^ llvm_cbe_storemerge237;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
  if ((((signed int )llvm_cbe_tmp__6) < ((signed int )0u))) {
    goto llvm_cbe_tmp__33;
  } else {
    goto llvm_cbe_tmp__34;
  }

llvm_cbe_tmp__35:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.7 = phi i32 [ %%60, %%59 ], [ %%63, %%61  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_7_count);
  llvm_cbe_storemerge2_2e_7 = (unsigned int )llvm_cbe_storemerge2_2e_7__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.7 = 0x%X",llvm_cbe_storemerge2_2e_7);
printf("\n = 0x%X",llvm_cbe_tmp__28);
printf("\n = 0x%X",llvm_cbe_tmp__30);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = add nsw i32 %%storemerge8, 1, !dbg !4 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__31 = (unsigned int )((unsigned int )(llvm_cbe_storemerge8&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__31&4294967295ull)));
  if (((llvm_cbe_tmp__31&4294967295U) == (96u&4294967295U))) {
    goto llvm_cbe_tmp__36;
  } else {
    llvm_cbe_storemerge8__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__31;   /* for PHI node */
    llvm_cbe_storemerge237__PHI_TEMPORARY = (unsigned int )llvm_cbe_storemerge2_2e_7;   /* for PHI node */
    goto llvm_cbe_tmp__32;
  }

llvm_cbe_tmp__37:
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = shl i32 %%storemerge2.6, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_153_count);
  llvm_cbe_tmp__28 = (unsigned int )llvm_cbe_storemerge2_2e_6 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
  llvm_cbe_storemerge2_2e_7__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__28;   /* for PHI node */
  goto llvm_cbe_tmp__35;

llvm_cbe_tmp__38:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.6 = phi i32 [ %%53, %%52 ], [ %%56, %%54  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_6_count);
  llvm_cbe_storemerge2_2e_6 = (unsigned int )llvm_cbe_storemerge2_2e_6__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.6 = 0x%X",llvm_cbe_storemerge2_2e_6);
printf("\n = 0x%X",llvm_cbe_tmp__25);
printf("\n = 0x%X",llvm_cbe_tmp__27);
}
  if ((((signed int )llvm_cbe_storemerge2_2e_6) < ((signed int )0u))) {
    goto llvm_cbe_tmp__39;
  } else {
    goto llvm_cbe_tmp__37;
  }

llvm_cbe_tmp__40:
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = shl i32 %%storemerge2.5, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__25 = (unsigned int )llvm_cbe_storemerge2_2e_5 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
  llvm_cbe_storemerge2_2e_6__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__25;   /* for PHI node */
  goto llvm_cbe_tmp__38;

llvm_cbe_tmp__41:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.5 = phi i32 [ %%46, %%45 ], [ %%49, %%47  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_5_count);
  llvm_cbe_storemerge2_2e_5 = (unsigned int )llvm_cbe_storemerge2_2e_5__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.5 = 0x%X",llvm_cbe_storemerge2_2e_5);
printf("\n = 0x%X",llvm_cbe_tmp__22);
printf("\n = 0x%X",llvm_cbe_tmp__24);
}
  if ((((signed int )llvm_cbe_storemerge2_2e_5) < ((signed int )0u))) {
    goto llvm_cbe_tmp__42;
  } else {
    goto llvm_cbe_tmp__40;
  }

llvm_cbe_tmp__43:
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = shl i32 %%storemerge2.4, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_119_count);
  llvm_cbe_tmp__22 = (unsigned int )llvm_cbe_storemerge2_2e_4 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
  llvm_cbe_storemerge2_2e_5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__22;   /* for PHI node */
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.4 = phi i32 [ %%39, %%38 ], [ %%42, %%40  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_4_count);
  llvm_cbe_storemerge2_2e_4 = (unsigned int )llvm_cbe_storemerge2_2e_4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.4 = 0x%X",llvm_cbe_storemerge2_2e_4);
printf("\n = 0x%X",llvm_cbe_tmp__19);
printf("\n = 0x%X",llvm_cbe_tmp__21);
}
  if ((((signed int )llvm_cbe_storemerge2_2e_4) < ((signed int )0u))) {
    goto llvm_cbe_tmp__45;
  } else {
    goto llvm_cbe_tmp__43;
  }

llvm_cbe_tmp__46:
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = shl i32 %%storemerge2.3, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__19 = (unsigned int )llvm_cbe_storemerge2_2e_3 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);
  llvm_cbe_storemerge2_2e_4__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__19;   /* for PHI node */
  goto llvm_cbe_tmp__44;

llvm_cbe_tmp__47:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.3 = phi i32 [ %%32, %%31 ], [ %%35, %%33  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_3_count);
  llvm_cbe_storemerge2_2e_3 = (unsigned int )llvm_cbe_storemerge2_2e_3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.3 = 0x%X",llvm_cbe_storemerge2_2e_3);
printf("\n = 0x%X",llvm_cbe_tmp__16);
printf("\n = 0x%X",llvm_cbe_tmp__18);
}
  if ((((signed int )llvm_cbe_storemerge2_2e_3) < ((signed int )0u))) {
    goto llvm_cbe_tmp__48;
  } else {
    goto llvm_cbe_tmp__46;
  }

llvm_cbe_tmp__49:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = shl i32 %%storemerge2.2, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__16 = (unsigned int )llvm_cbe_storemerge2_2e_2 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
  llvm_cbe_storemerge2_2e_3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__16;   /* for PHI node */
  goto llvm_cbe_tmp__47;

llvm_cbe_tmp__50:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.2 = phi i32 [ %%25, %%24 ], [ %%28, %%26  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_2_count);
  llvm_cbe_storemerge2_2e_2 = (unsigned int )llvm_cbe_storemerge2_2e_2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.2 = 0x%X",llvm_cbe_storemerge2_2e_2);
printf("\n = 0x%X",llvm_cbe_tmp__13);
printf("\n = 0x%X",llvm_cbe_tmp__15);
}
  if ((((signed int )llvm_cbe_storemerge2_2e_2) < ((signed int )0u))) {
    goto llvm_cbe_tmp__51;
  } else {
    goto llvm_cbe_tmp__49;
  }

llvm_cbe_tmp__52:
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = shl i32 %%storemerge2.1, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__13 = (unsigned int )llvm_cbe_storemerge2_2e_1 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
  llvm_cbe_storemerge2_2e_2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__13;   /* for PHI node */
  goto llvm_cbe_tmp__50;

llvm_cbe_tmp__53:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2.1 = phi i32 [ %%18, %%17 ], [ %%21, %%19  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_2e_1_count);
  llvm_cbe_storemerge2_2e_1 = (unsigned int )llvm_cbe_storemerge2_2e_1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2.1 = 0x%X",llvm_cbe_storemerge2_2e_1);
printf("\n = 0x%X",llvm_cbe_tmp__10);
printf("\n = 0x%X",llvm_cbe_tmp__12);
}
  if ((((signed int )llvm_cbe_storemerge2_2e_1) < ((signed int )0u))) {
    goto llvm_cbe_tmp__54;
  } else {
    goto llvm_cbe_tmp__52;
  }

llvm_cbe_tmp__55:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = shl i32 %%storemerge2, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__10 = (unsigned int )llvm_cbe_storemerge2 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__10);
  llvm_cbe_storemerge2_2e_1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__10;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__56:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge2 = phi i32 [ %%13, %%12 ], [ %%11, %%9  for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_storemerge2_count);
  llvm_cbe_storemerge2 = (unsigned int )llvm_cbe_storemerge2__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge2 = 0x%X",llvm_cbe_storemerge2);
printf("\n = 0x%X",llvm_cbe_tmp__9);
printf("\n = 0x%X",llvm_cbe_tmp__8);
}
  if ((((signed int )llvm_cbe_storemerge2) < ((signed int )0u))) {
    goto llvm_cbe_tmp__57;
  } else {
    goto llvm_cbe_tmp__55;
  }

llvm_cbe_tmp__33:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = shl i32 %%7, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__7 = (unsigned int )llvm_cbe_tmp__6 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = xor i32 %%10, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__8 = (unsigned int )llvm_cbe_tmp__7 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__8;   /* for PHI node */
  goto llvm_cbe_tmp__56;

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = shl i32 %%7, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__9 = (unsigned int )llvm_cbe_tmp__6 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
  llvm_cbe_storemerge2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__9;   /* for PHI node */
  goto llvm_cbe_tmp__56;

llvm_cbe_tmp__57:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = shl i32 %%storemerge2, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__11 = (unsigned int )llvm_cbe_storemerge2 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = xor i32 %%20, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__12 = (unsigned int )llvm_cbe_tmp__11 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
  llvm_cbe_storemerge2_2e_1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__12;   /* for PHI node */
  goto llvm_cbe_tmp__53;

llvm_cbe_tmp__54:
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = shl i32 %%storemerge2.1, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__14 = (unsigned int )llvm_cbe_storemerge2_2e_1 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = xor i32 %%27, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__15 = (unsigned int )llvm_cbe_tmp__14 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__15);
  llvm_cbe_storemerge2_2e_2__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__15;   /* for PHI node */
  goto llvm_cbe_tmp__50;

llvm_cbe_tmp__51:
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = shl i32 %%storemerge2.2, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__17 = (unsigned int )llvm_cbe_storemerge2_2e_2 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = xor i32 %%34, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__18 = (unsigned int )llvm_cbe_tmp__17 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
  llvm_cbe_storemerge2_2e_3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__18;   /* for PHI node */
  goto llvm_cbe_tmp__47;

llvm_cbe_tmp__48:
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = shl i32 %%storemerge2.3, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_105_count);
  llvm_cbe_tmp__20 = (unsigned int )llvm_cbe_storemerge2_2e_3 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = xor i32 %%41, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__21 = (unsigned int )llvm_cbe_tmp__20 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
  llvm_cbe_storemerge2_2e_4__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__21;   /* for PHI node */
  goto llvm_cbe_tmp__44;

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = shl i32 %%storemerge2.4, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_122_count);
  llvm_cbe_tmp__23 = (unsigned int )llvm_cbe_storemerge2_2e_4 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = xor i32 %%48, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_123_count);
  llvm_cbe_tmp__24 = (unsigned int )llvm_cbe_tmp__23 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
  llvm_cbe_storemerge2_2e_5__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
  goto llvm_cbe_tmp__41;

llvm_cbe_tmp__42:
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = shl i32 %%storemerge2.5, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__26 = (unsigned int )llvm_cbe_storemerge2_2e_5 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = xor i32 %%55, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__27 = (unsigned int )llvm_cbe_tmp__26 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
  llvm_cbe_storemerge2_2e_6__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__27;   /* for PHI node */
  goto llvm_cbe_tmp__38;

llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = shl i32 %%storemerge2.6, 1, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__29 = (unsigned int )llvm_cbe_storemerge2_2e_6 << 1u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = xor i32 %%62, 79764919, !dbg !3 for 0x%I64xth hint within @calc_crc  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__30 = (unsigned int )llvm_cbe_tmp__29 ^ 79764919u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
  llvm_cbe_storemerge2_2e_7__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__30;   /* for PHI node */
  goto llvm_cbe_tmp__35;

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__36:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @calc_crc}\n");
  return llvm_cbe_storemerge2_2e_7;
}


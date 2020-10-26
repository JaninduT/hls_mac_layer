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

/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
bool enqueue_dequeue_frame( char llvm_cbe_operation,  char llvm_cbe_ac,  char *llvm_cbe_inout_frame);
void slot_boundary_timing( char llvm_cbe_timing_mode, bool *llvm_cbe_idle_waiting, bool *llvm_cbe_medium_state);
void start_timer( char , bool *, bool , bool *);


/* Global Variable Definitions and Initialization */
static unsigned char aesl_internal_available_spaces_bk = ((unsigned char )4u);
static unsigned char aesl_internal_write_pointer_bk;
static  char aesl_internal_edca_fifo_bk[400];
static unsigned char aesl_internal_available_spaces_be = ((unsigned char )4u);
static unsigned char aesl_internal_write_pointer_be;
static unsigned char aesl_internal_write_pointer_vo;
static  char aesl_internal_edca_fifo_be[400];
static unsigned char aesl_internal_available_spaces_vi = ((unsigned char )4u);
static unsigned char aesl_internal_read_pointer_vi;
static unsigned char aesl_internal_write_pointer_vi;
static  char aesl_internal_edca_fifo_vi[400];
static unsigned char aesl_internal_available_spaces_vo = ((unsigned char )4u);
static  char aesl_internal_edca_fifo_vo[400];
static unsigned char aesl_internal_read_pointer_bk;
static unsigned char aesl_internal_read_pointer_be;
static unsigned char aesl_internal_read_pointer_vo;


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

bool enqueue_dequeue_frame( char llvm_cbe_operation,  char llvm_cbe_ac,  char *llvm_cbe_inout_frame) {
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
  unsigned char llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge725_count = 0;
  unsigned int llvm_cbe_storemerge725;
  unsigned int llvm_cbe_storemerge725__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned long long llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
   char *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned char llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned int llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  unsigned long long llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
   char *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond32_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned char llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  unsigned char llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned char llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge623_count = 0;
  unsigned int llvm_cbe_storemerge623;
  unsigned int llvm_cbe_storemerge623__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  unsigned long long llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
   char *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  unsigned char llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned char llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  unsigned int llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned long long llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
   char *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond31_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned char llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned char llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned char llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge521_count = 0;
  unsigned int llvm_cbe_storemerge521;
  unsigned int llvm_cbe_storemerge521__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  unsigned long long llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
   char *llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  unsigned char llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned char llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned int llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned long long llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
   char *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  unsigned int llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond30_count = 0;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  unsigned char llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned char llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned char llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond_count = 0;
  bool llvm_cbe_or_2e_cond;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge419_count = 0;
  unsigned int llvm_cbe_storemerge419;
  unsigned int llvm_cbe_storemerge419__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  unsigned long long llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
   char *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  unsigned char llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  unsigned char llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  unsigned int llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  unsigned long long llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
   char *llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  unsigned int llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond29_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  unsigned char llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  unsigned char llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned char llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge317_count = 0;
  unsigned int llvm_cbe_storemerge317;
  unsigned int llvm_cbe_storemerge317__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  unsigned char llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  unsigned int llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  unsigned int llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned long long llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
   char *llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  unsigned char llvm_cbe_tmp__60;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  unsigned long long llvm_cbe_tmp__61;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
   char *llvm_cbe_tmp__62;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned int llvm_cbe_tmp__63;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond28_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  unsigned char llvm_cbe_tmp__64;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  unsigned char llvm_cbe_tmp__65;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned char llvm_cbe_tmp__66;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  unsigned char llvm_cbe_tmp__67;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  unsigned char llvm_cbe_tmp__68;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge215_count = 0;
  unsigned int llvm_cbe_storemerge215;
  unsigned int llvm_cbe_storemerge215__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  unsigned char llvm_cbe_tmp__69;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  unsigned int llvm_cbe_tmp__70;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  unsigned int llvm_cbe_tmp__71;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  unsigned int llvm_cbe_tmp__72;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  unsigned long long llvm_cbe_tmp__73;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
   char *llvm_cbe_tmp__74;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  unsigned char llvm_cbe_tmp__75;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  unsigned long long llvm_cbe_tmp__76;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
   char *llvm_cbe_tmp__77;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  unsigned int llvm_cbe_tmp__78;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond27_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned char llvm_cbe_tmp__79;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
  unsigned char llvm_cbe_tmp__80;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  unsigned char llvm_cbe_tmp__81;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  unsigned char llvm_cbe_tmp__82;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;
  static  unsigned long long aesl_llvm_cbe_194_count = 0;
  unsigned char llvm_cbe_tmp__83;
  static  unsigned long long aesl_llvm_cbe_195_count = 0;
  static  unsigned long long aesl_llvm_cbe_196_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge113_count = 0;
  unsigned int llvm_cbe_storemerge113;
  unsigned int llvm_cbe_storemerge113__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_197_count = 0;
  unsigned char llvm_cbe_tmp__84;
  static  unsigned long long aesl_llvm_cbe_198_count = 0;
  unsigned int llvm_cbe_tmp__85;
  static  unsigned long long aesl_llvm_cbe_199_count = 0;
  unsigned int llvm_cbe_tmp__86;
  static  unsigned long long aesl_llvm_cbe_200_count = 0;
  unsigned int llvm_cbe_tmp__87;
  static  unsigned long long aesl_llvm_cbe_201_count = 0;
  unsigned long long llvm_cbe_tmp__88;
  static  unsigned long long aesl_llvm_cbe_202_count = 0;
   char *llvm_cbe_tmp__89;
  static  unsigned long long aesl_llvm_cbe_203_count = 0;
  unsigned char llvm_cbe_tmp__90;
  static  unsigned long long aesl_llvm_cbe_204_count = 0;
  unsigned long long llvm_cbe_tmp__91;
  static  unsigned long long aesl_llvm_cbe_205_count = 0;
   char *llvm_cbe_tmp__92;
  static  unsigned long long aesl_llvm_cbe_206_count = 0;
  static  unsigned long long aesl_llvm_cbe_207_count = 0;
  unsigned int llvm_cbe_tmp__93;
  static  unsigned long long aesl_llvm_cbe_208_count = 0;
  static  unsigned long long aesl_llvm_cbe_209_count = 0;
  static  unsigned long long aesl_llvm_cbe_210_count = 0;
  static  unsigned long long aesl_llvm_cbe_211_count = 0;
  static  unsigned long long aesl_llvm_cbe_212_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond26_count = 0;
  static  unsigned long long aesl_llvm_cbe_213_count = 0;
  static  unsigned long long aesl_llvm_cbe_214_count = 0;
  unsigned char llvm_cbe_tmp__94;
  static  unsigned long long aesl_llvm_cbe_215_count = 0;
  unsigned char llvm_cbe_tmp__95;
  static  unsigned long long aesl_llvm_cbe_216_count = 0;
  static  unsigned long long aesl_llvm_cbe_217_count = 0;
  unsigned char llvm_cbe_tmp__96;
  static  unsigned long long aesl_llvm_cbe_218_count = 0;
  unsigned char llvm_cbe_tmp__97;
  static  unsigned long long aesl_llvm_cbe_219_count = 0;
  static  unsigned long long aesl_llvm_cbe_220_count = 0;
  static  unsigned long long aesl_llvm_cbe_221_count = 0;
  static  unsigned long long aesl_llvm_cbe_222_count = 0;
  unsigned char llvm_cbe_tmp__98;
  static  unsigned long long aesl_llvm_cbe_223_count = 0;
  static  unsigned long long aesl_llvm_cbe_or_2e_cond10_count = 0;
  bool llvm_cbe_or_2e_cond10;
  static  unsigned long long aesl_llvm_cbe_224_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge11_count = 0;
  unsigned int llvm_cbe_storemerge11;
  unsigned int llvm_cbe_storemerge11__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_225_count = 0;
  unsigned char llvm_cbe_tmp__99;
  static  unsigned long long aesl_llvm_cbe_226_count = 0;
  unsigned int llvm_cbe_tmp__100;
  static  unsigned long long aesl_llvm_cbe_227_count = 0;
  unsigned int llvm_cbe_tmp__101;
  static  unsigned long long aesl_llvm_cbe_228_count = 0;
  unsigned int llvm_cbe_tmp__102;
  static  unsigned long long aesl_llvm_cbe_229_count = 0;
  unsigned long long llvm_cbe_tmp__103;
  static  unsigned long long aesl_llvm_cbe_230_count = 0;
   char *llvm_cbe_tmp__104;
  static  unsigned long long aesl_llvm_cbe_231_count = 0;
  unsigned char llvm_cbe_tmp__105;
  static  unsigned long long aesl_llvm_cbe_232_count = 0;
  unsigned long long llvm_cbe_tmp__106;
  static  unsigned long long aesl_llvm_cbe_233_count = 0;
   char *llvm_cbe_tmp__107;
  static  unsigned long long aesl_llvm_cbe_234_count = 0;
  static  unsigned long long aesl_llvm_cbe_235_count = 0;
  unsigned int llvm_cbe_tmp__108;
  static  unsigned long long aesl_llvm_cbe_236_count = 0;
  static  unsigned long long aesl_llvm_cbe_237_count = 0;
  static  unsigned long long aesl_llvm_cbe_238_count = 0;
  static  unsigned long long aesl_llvm_cbe_239_count = 0;
  static  unsigned long long aesl_llvm_cbe_240_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_241_count = 0;
  static  unsigned long long aesl_llvm_cbe_242_count = 0;
  unsigned char llvm_cbe_tmp__109;
  static  unsigned long long aesl_llvm_cbe_243_count = 0;
  unsigned char llvm_cbe_tmp__110;
  static  unsigned long long aesl_llvm_cbe_244_count = 0;
  static  unsigned long long aesl_llvm_cbe_245_count = 0;
  unsigned char llvm_cbe_tmp__111;
  static  unsigned long long aesl_llvm_cbe_246_count = 0;
  unsigned char llvm_cbe_tmp__112;
  static  unsigned long long aesl_llvm_cbe_247_count = 0;
  static  unsigned long long aesl_llvm_cbe_248_count = 0;
  static  unsigned long long aesl_llvm_cbe_249_count = 0;
  static  unsigned long long aesl_llvm_cbe_250_count = 0;
  static  unsigned long long aesl_llvm_cbe_251_count = 0;
  static  unsigned long long aesl_llvm_cbe_252_count = 0;
  static  unsigned long long aesl_llvm_cbe_253_count = 0;
  static  unsigned long long aesl_llvm_cbe_254_count = 0;
  static  unsigned long long aesl_llvm_cbe_255_count = 0;
  static  unsigned long long aesl_llvm_cbe_256_count = 0;
  static  unsigned long long aesl_llvm_cbe_257_count = 0;
  static  unsigned long long aesl_llvm_cbe_258_count = 0;
  static  unsigned long long aesl_llvm_cbe_259_count = 0;
  static  unsigned long long aesl_llvm_cbe_260_count = 0;
  static  unsigned long long aesl_llvm_cbe_261_count = 0;
  static  unsigned long long aesl_llvm_cbe_262_count = 0;
  static  unsigned long long aesl_llvm_cbe_263_count = 0;
  static  unsigned long long aesl_llvm_cbe_264_count = 0;
  bool llvm_cbe_tmp__113;
  bool llvm_cbe_tmp__113__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_265_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @enqueue_dequeue_frame\n");
  if (((llvm_cbe_operation&3U) == (((unsigned char )0)&3U))) {
    goto llvm_cbe_tmp__114;
  } else {
    goto llvm_cbe_tmp__115;
  }

llvm_cbe_tmp__114:
  if (((llvm_cbe_ac&3U) == (((unsigned char )0)&3U))) {
    goto llvm_cbe_tmp__116;
  } else {
    goto llvm_cbe_tmp__117;
  }

llvm_cbe_tmp__116:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i3* @aesl_internal_available_spaces_bk, align 1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__1 = (unsigned char )*(&aesl_internal_available_spaces_bk);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
  if (((llvm_cbe_tmp__1&7U) == (((unsigned char )0)&7U))) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge725__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader24;
  }

  do {     /* Syntactic loop '.preheader24' to make GCC happy */
llvm_cbe__2e_preheader24:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge725 = phi i32 [ %%16, %%.preheader24 ], [ 0, %%4  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge725_count);
  llvm_cbe_storemerge725 = (unsigned int )llvm_cbe_storemerge725__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge725 = 0x%X",llvm_cbe_storemerge725);
printf("\n = 0x%X",llvm_cbe_tmp__11);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = sext i32 %%storemerge725 to i64, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_30_count);
  llvm_cbe_tmp__2 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge725);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds i8* %%inout_frame, i64 %%7, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__3 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__2))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__2));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i8* %%8, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__4 = (unsigned char )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load i2* @aesl_internal_write_pointer_bk, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__5 = (unsigned char )*(&aesl_internal_write_pointer_bk);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = zext i2 %%10 to i32, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__5&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = mul nsw i32 %%11, 100, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__7 = (unsigned int )((unsigned int )(llvm_cbe_tmp__6&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__7&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = add nsw i32 %%12, %%storemerge725, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__8 = (unsigned int )((unsigned int )(llvm_cbe_tmp__7&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge725&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__8&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = sext i32 %%13 to i64, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__9 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_bk, i64 0, i64 %%14, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__10 = ( char *)(&aesl_internal_edca_fifo_bk[(((signed long long )llvm_cbe_tmp__9))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__9));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__9) < 400 && "Write access out of array 'aesl_internal_edca_fifo_bk' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%9, i8* %%15, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_39_count);
  *llvm_cbe_tmp__10 = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = add nsw i32 %%storemerge725, 1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_storemerge725&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
  if (((llvm_cbe_tmp__11&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__119;
  } else {
    llvm_cbe_storemerge725__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe__2e_preheader24;
  }

  } while (1); /* end of syntactic loop '.preheader24' */
llvm_cbe_tmp__119:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = add i2 %%10, 1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__12 = (unsigned char )((unsigned char )(llvm_cbe_tmp__5&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__12&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%18, i2* @aesl_internal_write_pointer_bk, align 1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_48_count);
  *(&aesl_internal_write_pointer_bk) = ((llvm_cbe_tmp__12) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = add i3 %%5, -1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__13 = (unsigned char )((unsigned char )(llvm_cbe_tmp__1&7ull)) + ((unsigned char )(((unsigned char )-1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__13&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%19, i3* @aesl_internal_available_spaces_bk, align 1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_50_count);
  *(&aesl_internal_available_spaces_bk) = ((llvm_cbe_tmp__13) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__117:
  if (((llvm_cbe_ac&3U) == (((unsigned char )1)&3U))) {
    goto llvm_cbe_tmp__120;
  } else {
    goto llvm_cbe_tmp__121;
  }

llvm_cbe_tmp__120:
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i3* @aesl_internal_available_spaces_be, align 1, !dbg !12 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_54_count);
  llvm_cbe_tmp__14 = (unsigned char )*(&aesl_internal_available_spaces_be);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
  if (((llvm_cbe_tmp__14&7U) == (((unsigned char )0)&7U))) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge623__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader22;
  }

  do {     /* Syntactic loop '.preheader22' to make GCC happy */
llvm_cbe__2e_preheader22:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge623 = phi i32 [ %%34, %%.preheader22 ], [ 0, %%22  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge623_count);
  llvm_cbe_storemerge623 = (unsigned int )llvm_cbe_storemerge623__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge623 = 0x%X",llvm_cbe_storemerge623);
printf("\n = 0x%X",llvm_cbe_tmp__24);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = sext i32 %%storemerge623 to i64, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__15 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge623);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__15);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds i8* %%inout_frame, i64 %%25, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__16 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__15))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__15));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = load i8* %%26, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__17 = (unsigned char )*llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = load i2* @aesl_internal_write_pointer_be, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__18 = (unsigned char )*(&aesl_internal_write_pointer_be);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = zext i2 %%28 to i32, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__19 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__18&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__19);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = mul nsw i32 %%29, 100, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__20 = (unsigned int )((unsigned int )(llvm_cbe_tmp__19&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__20&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = add nsw i32 %%30, %%storemerge623, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__21 = (unsigned int )((unsigned int )(llvm_cbe_tmp__20&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge623&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__21&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = sext i32 %%31 to i64, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__22 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__22);
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_be, i64 0, i64 %%32, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__23 = ( char *)(&aesl_internal_edca_fifo_be[(((signed long long )llvm_cbe_tmp__22))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__22));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__22) < 400 && "Write access out of array 'aesl_internal_edca_fifo_be' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%27, i8* %%33, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_66_count);
  *llvm_cbe_tmp__23 = llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = add nsw i32 %%storemerge623, 1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__24 = (unsigned int )((unsigned int )(llvm_cbe_storemerge623&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__24&4294967295ull)));
  if (((llvm_cbe_tmp__24&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__122;
  } else {
    llvm_cbe_storemerge623__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__24;   /* for PHI node */
    goto llvm_cbe__2e_preheader22;
  }

  } while (1); /* end of syntactic loop '.preheader22' */
llvm_cbe_tmp__122:
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add i2 %%28, 1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__25 = (unsigned char )((unsigned char )(llvm_cbe_tmp__18&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__25&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%36, i2* @aesl_internal_write_pointer_be, align 1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_75_count);
  *(&aesl_internal_write_pointer_be) = ((llvm_cbe_tmp__25) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = add i3 %%23, -1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__26 = (unsigned char )((unsigned char )(llvm_cbe_tmp__14&7ull)) + ((unsigned char )(((unsigned char )-1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__26&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%37, i3* @aesl_internal_available_spaces_be, align 1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_77_count);
  *(&aesl_internal_available_spaces_be) = ((llvm_cbe_tmp__26) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__121:
  if (((llvm_cbe_ac&3U) == (((unsigned char )2u)&3U))) {
    goto llvm_cbe_tmp__123;
  } else {
    goto llvm_cbe_tmp__124;
  }

llvm_cbe_tmp__123:
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = load i3* @aesl_internal_available_spaces_vi, align 1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__27 = (unsigned char )*(&aesl_internal_available_spaces_vi);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__27);
  if (((llvm_cbe_tmp__27&7U) == (((unsigned char )0)&7U))) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge521__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader20;
  }

  do {     /* Syntactic loop '.preheader20' to make GCC happy */
llvm_cbe__2e_preheader20:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge521 = phi i32 [ %%52, %%.preheader20 ], [ 0, %%40  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge521_count);
  llvm_cbe_storemerge521 = (unsigned int )llvm_cbe_storemerge521__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge521 = 0x%X",llvm_cbe_storemerge521);
printf("\n = 0x%X",llvm_cbe_tmp__37);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = sext i32 %%storemerge521 to i64, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__28 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge521);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds i8* %%inout_frame, i64 %%43, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_85_count);
  llvm_cbe_tmp__29 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__28))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__28));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = load i8* %%44, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_86_count);
  llvm_cbe_tmp__30 = (unsigned char )*llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i2* @aesl_internal_write_pointer_vi, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__31 = (unsigned char )*(&aesl_internal_write_pointer_vi);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = zext i2 %%46 to i32, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__32 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__31&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = mul nsw i32 %%47, 100, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_89_count);
  llvm_cbe_tmp__33 = (unsigned int )((unsigned int )(llvm_cbe_tmp__32&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__33&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%49 = add nsw i32 %%48, %%storemerge521, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_90_count);
  llvm_cbe_tmp__34 = (unsigned int )((unsigned int )(llvm_cbe_tmp__33&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge521&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__34&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = sext i32 %%49 to i64, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__35 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__34);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_vi, i64 0, i64 %%50, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__36 = ( char *)(&aesl_internal_edca_fifo_vi[(((signed long long )llvm_cbe_tmp__35))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__35));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__35) < 400 && "Write access out of array 'aesl_internal_edca_fifo_vi' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%45, i8* %%51, align 1, !dbg !9 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_93_count);
  *llvm_cbe_tmp__36 = llvm_cbe_tmp__30;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = add nsw i32 %%storemerge521, 1, !dbg !13 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__37 = (unsigned int )((unsigned int )(llvm_cbe_storemerge521&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__37&4294967295ull)));
  if (((llvm_cbe_tmp__37&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__125;
  } else {
    llvm_cbe_storemerge521__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__37;   /* for PHI node */
    goto llvm_cbe__2e_preheader20;
  }

  } while (1); /* end of syntactic loop '.preheader20' */
llvm_cbe_tmp__125:
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = add i2 %%46, 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__38 = (unsigned char )((unsigned char )(llvm_cbe_tmp__31&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__38&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%54, i2* @aesl_internal_write_pointer_vi, align 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_102_count);
  *(&aesl_internal_write_pointer_vi) = ((llvm_cbe_tmp__38) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__38);
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = add i3 %%41, -1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__39 = (unsigned char )((unsigned char )(llvm_cbe_tmp__27&7ull)) + ((unsigned char )(((unsigned char )-1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__39&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%55, i3* @aesl_internal_available_spaces_vi, align 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_104_count);
  *(&aesl_internal_available_spaces_vi) = ((llvm_cbe_tmp__39) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__39);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__124:
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = load i3* @aesl_internal_available_spaces_vo, align 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__40 = (unsigned char )*(&aesl_internal_available_spaces_vo);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond = or i1 %%57, %%59, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_or_2e_cond_count);
  llvm_cbe_or_2e_cond = (bool )((((llvm_cbe_ac&3U) != (((unsigned char )-1)&3U)) | ((llvm_cbe_tmp__40&7U) == (((unsigned char )0)&7U)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond = 0x%X\n", llvm_cbe_or_2e_cond);
  if (llvm_cbe_or_2e_cond) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge419__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader18;
  }

  do {     /* Syntactic loop '.preheader18' to make GCC happy */
llvm_cbe__2e_preheader18:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge419 = phi i32 [ %%69, %%.preheader18 ], [ 0, %%56  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge419_count);
  llvm_cbe_storemerge419 = (unsigned int )llvm_cbe_storemerge419__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge419 = 0x%X",llvm_cbe_storemerge419);
printf("\n = 0x%X",llvm_cbe_tmp__50);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%60 = sext i32 %%storemerge419 to i64, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__41 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge419);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__41);
if (AESL_DEBUG_TRACE)
printf("\n  %%61 = getelementptr inbounds i8* %%inout_frame, i64 %%60, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__42 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__41))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__41));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = load i8* %%61, align 1, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__43 = (unsigned char )*llvm_cbe_tmp__42;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n  %%63 = load i2* @aesl_internal_write_pointer_vo, align 1, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_113_count);
  llvm_cbe_tmp__44 = (unsigned char )*(&aesl_internal_write_pointer_vo);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%64 = zext i2 %%63 to i32, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_114_count);
  llvm_cbe_tmp__45 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__44&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__45);
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = mul nsw i32 %%64, 100, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_tmp__45&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%66 = add nsw i32 %%65, %%storemerge419, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_116_count);
  llvm_cbe_tmp__47 = (unsigned int )((unsigned int )(llvm_cbe_tmp__46&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge419&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__47&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%67 = sext i32 %%66 to i64, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_117_count);
  llvm_cbe_tmp__48 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__47);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_vo, i64 0, i64 %%67, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_118_count);
  llvm_cbe_tmp__49 = ( char *)(&aesl_internal_edca_fifo_vo[(((signed long long )llvm_cbe_tmp__48))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__48));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__48) < 400 && "Write access out of array 'aesl_internal_edca_fifo_vo' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%62, i8* %%68, align 1, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_119_count);
  *llvm_cbe_tmp__49 = llvm_cbe_tmp__43;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = add nsw i32 %%storemerge419, 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__50 = (unsigned int )((unsigned int )(llvm_cbe_storemerge419&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__50&4294967295ull)));
  if (((llvm_cbe_tmp__50&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__126;
  } else {
    llvm_cbe_storemerge419__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__50;   /* for PHI node */
    goto llvm_cbe__2e_preheader18;
  }

  } while (1); /* end of syntactic loop '.preheader18' */
llvm_cbe_tmp__126:
if (AESL_DEBUG_TRACE)
printf("\n  %%71 = add i2 %%63, 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_127_count);
  llvm_cbe_tmp__51 = (unsigned char )((unsigned char )(llvm_cbe_tmp__44&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__51&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%71, i2* @aesl_internal_write_pointer_vo, align 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_128_count);
  *(&aesl_internal_write_pointer_vo) = ((llvm_cbe_tmp__51) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__51);
if (AESL_DEBUG_TRACE)
printf("\n  %%72 = add i3 %%58, -1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_129_count);
  llvm_cbe_tmp__52 = (unsigned char )((unsigned char )(llvm_cbe_tmp__40&7ull)) + ((unsigned char )(((unsigned char )-1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__52&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%72, i3* @aesl_internal_available_spaces_vo, align 1, !dbg !14 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_130_count);
  *(&aesl_internal_available_spaces_vo) = ((llvm_cbe_tmp__52) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__115:
  if (((llvm_cbe_operation&3U) == (((unsigned char )1)&3U))) {
    goto llvm_cbe_tmp__127;
  } else {
    goto llvm_cbe_tmp__128;
  }

llvm_cbe_tmp__127:
  if (((llvm_cbe_ac&3U) == (((unsigned char )0)&3U))) {
    goto llvm_cbe_tmp__129;
  } else {
    goto llvm_cbe_tmp__130;
  }

llvm_cbe_tmp__129:
if (AESL_DEBUG_TRACE)
printf("\n  %%78 = load i3* @aesl_internal_available_spaces_bk, align 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__53 = (unsigned char )*(&aesl_internal_available_spaces_bk);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__53);
  if (((llvm_cbe_tmp__53&7U) == (((unsigned char )4u)&7U))) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge317__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader16;
  }

  do {     /* Syntactic loop '.preheader16' to make GCC happy */
llvm_cbe__2e_preheader16:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge317 = phi i32 [ %%89, %%.preheader16 ], [ 0, %%77  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge317_count);
  llvm_cbe_storemerge317 = (unsigned int )llvm_cbe_storemerge317__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge317 = 0x%X",llvm_cbe_storemerge317);
printf("\n = 0x%X",llvm_cbe_tmp__63);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%80 = load i2* @aesl_internal_read_pointer_bk, align 1, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_139_count);
  llvm_cbe_tmp__54 = (unsigned char )*(&aesl_internal_read_pointer_bk);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__54);
if (AESL_DEBUG_TRACE)
printf("\n  %%81 = zext i2 %%80 to i32, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__55 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__54&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%82 = mul nsw i32 %%81, 100, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_141_count);
  llvm_cbe_tmp__56 = (unsigned int )((unsigned int )(llvm_cbe_tmp__55&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__56&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%83 = add nsw i32 %%82, %%storemerge317, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__57 = (unsigned int )((unsigned int )(llvm_cbe_tmp__56&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge317&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__57&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%84 = sext i32 %%83 to i64, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__58 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__57);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%85 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_bk, i64 0, i64 %%84, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_144_count);
  llvm_cbe_tmp__59 = ( char *)(&aesl_internal_edca_fifo_bk[(((signed long long )llvm_cbe_tmp__58))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__58));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__58) < 400)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_edca_fifo_bk' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%86 = load i8* %%85, align 1, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_145_count);
  llvm_cbe_tmp__60 = (unsigned char )*llvm_cbe_tmp__59;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%87 = sext i32 %%storemerge317 to i64, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_146_count);
  llvm_cbe_tmp__61 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge317);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__61);
if (AESL_DEBUG_TRACE)
printf("\n  %%88 = getelementptr inbounds i8* %%inout_frame, i64 %%87, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__62 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__61))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__61));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%86, i8* %%88, align 1, !dbg !10 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_148_count);
  *llvm_cbe_tmp__62 = llvm_cbe_tmp__60;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__60);
if (AESL_DEBUG_TRACE)
printf("\n  %%89 = add nsw i32 %%storemerge317, 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__63 = (unsigned int )((unsigned int )(llvm_cbe_storemerge317&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__63&4294967295ull)));
  if (((llvm_cbe_tmp__63&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__131;
  } else {
    llvm_cbe_storemerge317__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__63;   /* for PHI node */
    goto llvm_cbe__2e_preheader16;
  }

  } while (1); /* end of syntactic loop '.preheader16' */
llvm_cbe_tmp__131:
if (AESL_DEBUG_TRACE)
printf("\n  %%91 = load i2* @aesl_internal_read_pointer_bk, align 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_156_count);
  llvm_cbe_tmp__64 = (unsigned char )*(&aesl_internal_read_pointer_bk);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__64);
if (AESL_DEBUG_TRACE)
printf("\n  %%92 = add i2 %%91, 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_157_count);
  llvm_cbe_tmp__65 = (unsigned char )((unsigned char )(llvm_cbe_tmp__64&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__65&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%92, i2* @aesl_internal_read_pointer_bk, align 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_158_count);
  *(&aesl_internal_read_pointer_bk) = ((llvm_cbe_tmp__65) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__65);
if (AESL_DEBUG_TRACE)
printf("\n  %%93 = load i3* @aesl_internal_available_spaces_bk, align 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__66 = (unsigned char )*(&aesl_internal_available_spaces_bk);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__66);
if (AESL_DEBUG_TRACE)
printf("\n  %%94 = add i3 %%93, 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__67 = (unsigned char )((unsigned char )(llvm_cbe_tmp__66&7ull)) + ((unsigned char )(((unsigned char )1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__67&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%94, i3* @aesl_internal_available_spaces_bk, align 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_161_count);
  *(&aesl_internal_available_spaces_bk) = ((llvm_cbe_tmp__67) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__67);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__130:
  if (((llvm_cbe_ac&3U) == (((unsigned char )1)&3U))) {
    goto llvm_cbe_tmp__132;
  } else {
    goto llvm_cbe_tmp__133;
  }

llvm_cbe_tmp__132:
if (AESL_DEBUG_TRACE)
printf("\n  %%98 = load i3* @aesl_internal_available_spaces_be, align 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_165_count);
  llvm_cbe_tmp__68 = (unsigned char )*(&aesl_internal_available_spaces_be);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__68);
  if (((llvm_cbe_tmp__68&7U) == (((unsigned char )4u)&7U))) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge215__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader14;
  }

  do {     /* Syntactic loop '.preheader14' to make GCC happy */
llvm_cbe__2e_preheader14:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge215 = phi i32 [ %%109, %%.preheader14 ], [ 0, %%97  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge215_count);
  llvm_cbe_storemerge215 = (unsigned int )llvm_cbe_storemerge215__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge215 = 0x%X",llvm_cbe_storemerge215);
printf("\n = 0x%X",llvm_cbe_tmp__78);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%100 = load i2* @aesl_internal_read_pointer_be, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__69 = (unsigned char )*(&aesl_internal_read_pointer_be);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__69);
if (AESL_DEBUG_TRACE)
printf("\n  %%101 = zext i2 %%100 to i32, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_169_count);
  llvm_cbe_tmp__70 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__69&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__70);
if (AESL_DEBUG_TRACE)
printf("\n  %%102 = mul nsw i32 %%101, 100, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_170_count);
  llvm_cbe_tmp__71 = (unsigned int )((unsigned int )(llvm_cbe_tmp__70&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__71&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%103 = add nsw i32 %%102, %%storemerge215, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__72 = (unsigned int )((unsigned int )(llvm_cbe_tmp__71&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge215&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__72&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%104 = sext i32 %%103 to i64, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_172_count);
  llvm_cbe_tmp__73 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__72);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__73);
if (AESL_DEBUG_TRACE)
printf("\n  %%105 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_be, i64 0, i64 %%104, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_173_count);
  llvm_cbe_tmp__74 = ( char *)(&aesl_internal_edca_fifo_be[(((signed long long )llvm_cbe_tmp__73))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__73));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__73) < 400)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_edca_fifo_be' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%106 = load i8* %%105, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_174_count);
  llvm_cbe_tmp__75 = (unsigned char )*llvm_cbe_tmp__74;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE)
printf("\n  %%107 = sext i32 %%storemerge215 to i64, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__76 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge215);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__76);
if (AESL_DEBUG_TRACE)
printf("\n  %%108 = getelementptr inbounds i8* %%inout_frame, i64 %%107, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_176_count);
  llvm_cbe_tmp__77 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__76))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__76));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%106, i8* %%108, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_177_count);
  *llvm_cbe_tmp__77 = llvm_cbe_tmp__75;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__75);
if (AESL_DEBUG_TRACE)
printf("\n  %%109 = add nsw i32 %%storemerge215, 1, !dbg !15 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_178_count);
  llvm_cbe_tmp__78 = (unsigned int )((unsigned int )(llvm_cbe_storemerge215&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__78&4294967295ull)));
  if (((llvm_cbe_tmp__78&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__134;
  } else {
    llvm_cbe_storemerge215__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__78;   /* for PHI node */
    goto llvm_cbe__2e_preheader14;
  }

  } while (1); /* end of syntactic loop '.preheader14' */
llvm_cbe_tmp__134:
if (AESL_DEBUG_TRACE)
printf("\n  %%111 = load i2* @aesl_internal_read_pointer_be, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__79 = (unsigned char )*(&aesl_internal_read_pointer_be);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__79);
if (AESL_DEBUG_TRACE)
printf("\n  %%112 = add i2 %%111, 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__80 = (unsigned char )((unsigned char )(llvm_cbe_tmp__79&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__80&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%112, i2* @aesl_internal_read_pointer_be, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_187_count);
  *(&aesl_internal_read_pointer_be) = ((llvm_cbe_tmp__80) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__80);
if (AESL_DEBUG_TRACE)
printf("\n  %%113 = load i3* @aesl_internal_available_spaces_be, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_188_count);
  llvm_cbe_tmp__81 = (unsigned char )*(&aesl_internal_available_spaces_be);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__81);
if (AESL_DEBUG_TRACE)
printf("\n  %%114 = add i3 %%113, 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_189_count);
  llvm_cbe_tmp__82 = (unsigned char )((unsigned char )(llvm_cbe_tmp__81&7ull)) + ((unsigned char )(((unsigned char )1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__82&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%114, i3* @aesl_internal_available_spaces_be, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_190_count);
  *(&aesl_internal_available_spaces_be) = ((llvm_cbe_tmp__82) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__82);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__133:
  if (((llvm_cbe_ac&3U) == (((unsigned char )2u)&3U))) {
    goto llvm_cbe_tmp__135;
  } else {
    goto llvm_cbe_tmp__136;
  }

llvm_cbe_tmp__135:
if (AESL_DEBUG_TRACE)
printf("\n  %%118 = load i3* @aesl_internal_available_spaces_vi, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_194_count);
  llvm_cbe_tmp__83 = (unsigned char )*(&aesl_internal_available_spaces_vi);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__83);
  if (((llvm_cbe_tmp__83&7U) == (((unsigned char )4u)&7U))) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge113__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader12;
  }

  do {     /* Syntactic loop '.preheader12' to make GCC happy */
llvm_cbe__2e_preheader12:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge113 = phi i32 [ %%129, %%.preheader12 ], [ 0, %%117  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge113_count);
  llvm_cbe_storemerge113 = (unsigned int )llvm_cbe_storemerge113__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge113 = 0x%X",llvm_cbe_storemerge113);
printf("\n = 0x%X",llvm_cbe_tmp__93);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%120 = load i2* @aesl_internal_read_pointer_vi, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_197_count);
  llvm_cbe_tmp__84 = (unsigned char )*(&aesl_internal_read_pointer_vi);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__84);
if (AESL_DEBUG_TRACE)
printf("\n  %%121 = zext i2 %%120 to i32, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_198_count);
  llvm_cbe_tmp__85 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__84&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__85);
if (AESL_DEBUG_TRACE)
printf("\n  %%122 = mul nsw i32 %%121, 100, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_199_count);
  llvm_cbe_tmp__86 = (unsigned int )((unsigned int )(llvm_cbe_tmp__85&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__86&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%123 = add nsw i32 %%122, %%storemerge113, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_200_count);
  llvm_cbe_tmp__87 = (unsigned int )((unsigned int )(llvm_cbe_tmp__86&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge113&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__87&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%124 = sext i32 %%123 to i64, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_201_count);
  llvm_cbe_tmp__88 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__87);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__88);
if (AESL_DEBUG_TRACE)
printf("\n  %%125 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_vi, i64 0, i64 %%124, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_202_count);
  llvm_cbe_tmp__89 = ( char *)(&aesl_internal_edca_fifo_vi[(((signed long long )llvm_cbe_tmp__88))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__88));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__88) < 400)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_edca_fifo_vi' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%126 = load i8* %%125, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_203_count);
  llvm_cbe_tmp__90 = (unsigned char )*llvm_cbe_tmp__89;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%127 = sext i32 %%storemerge113 to i64, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_204_count);
  llvm_cbe_tmp__91 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge113);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__91);
if (AESL_DEBUG_TRACE)
printf("\n  %%128 = getelementptr inbounds i8* %%inout_frame, i64 %%127, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_205_count);
  llvm_cbe_tmp__92 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__91))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__91));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%126, i8* %%128, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_206_count);
  *llvm_cbe_tmp__92 = llvm_cbe_tmp__90;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__90);
if (AESL_DEBUG_TRACE)
printf("\n  %%129 = add nsw i32 %%storemerge113, 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_207_count);
  llvm_cbe_tmp__93 = (unsigned int )((unsigned int )(llvm_cbe_storemerge113&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__93&4294967295ull)));
  if (((llvm_cbe_tmp__93&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__137;
  } else {
    llvm_cbe_storemerge113__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__93;   /* for PHI node */
    goto llvm_cbe__2e_preheader12;
  }

  } while (1); /* end of syntactic loop '.preheader12' */
llvm_cbe_tmp__137:
if (AESL_DEBUG_TRACE)
printf("\n  %%131 = load i2* @aesl_internal_read_pointer_vi, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_214_count);
  llvm_cbe_tmp__94 = (unsigned char )*(&aesl_internal_read_pointer_vi);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__94);
if (AESL_DEBUG_TRACE)
printf("\n  %%132 = add i2 %%131, 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_215_count);
  llvm_cbe_tmp__95 = (unsigned char )((unsigned char )(llvm_cbe_tmp__94&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__95&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%132, i2* @aesl_internal_read_pointer_vi, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_216_count);
  *(&aesl_internal_read_pointer_vi) = ((llvm_cbe_tmp__95) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__95);
if (AESL_DEBUG_TRACE)
printf("\n  %%133 = load i3* @aesl_internal_available_spaces_vi, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_217_count);
  llvm_cbe_tmp__96 = (unsigned char )*(&aesl_internal_available_spaces_vi);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__96);
if (AESL_DEBUG_TRACE)
printf("\n  %%134 = add i3 %%133, 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_218_count);
  llvm_cbe_tmp__97 = (unsigned char )((unsigned char )(llvm_cbe_tmp__96&7ull)) + ((unsigned char )(((unsigned char )1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__97&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%134, i3* @aesl_internal_available_spaces_vi, align 1, !dbg !16 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_219_count);
  *(&aesl_internal_available_spaces_vi) = ((llvm_cbe_tmp__97) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__97);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__136:
if (AESL_DEBUG_TRACE)
printf("\n  %%137 = load i3* @aesl_internal_available_spaces_vo, align 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_222_count);
  llvm_cbe_tmp__98 = (unsigned char )*(&aesl_internal_available_spaces_vo);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__98);
if (AESL_DEBUG_TRACE)
printf("\n  %%or.cond10 = or i1 %%136, %%138, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_or_2e_cond10_count);
  llvm_cbe_or_2e_cond10 = (bool )((((llvm_cbe_ac&3U) != (((unsigned char )-1)&3U)) | ((llvm_cbe_tmp__98&7U) == (((unsigned char )4u)&7U)))&1);
if (AESL_DEBUG_TRACE)
printf("\nor.cond10 = 0x%X\n", llvm_cbe_or_2e_cond10);
  if (llvm_cbe_or_2e_cond10) {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  } else {
    llvm_cbe_storemerge11__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge11 = phi i32 [ %%148, %%.preheader ], [ 0, %%135  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_storemerge11_count);
  llvm_cbe_storemerge11 = (unsigned int )llvm_cbe_storemerge11__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge11 = 0x%X",llvm_cbe_storemerge11);
printf("\n = 0x%X",llvm_cbe_tmp__108);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%139 = load i2* @aesl_internal_read_pointer_vo, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_225_count);
  llvm_cbe_tmp__99 = (unsigned char )*(&aesl_internal_read_pointer_vo);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__99);
if (AESL_DEBUG_TRACE)
printf("\n  %%140 = zext i2 %%139 to i32, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_226_count);
  llvm_cbe_tmp__100 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tmp__99&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__100);
if (AESL_DEBUG_TRACE)
printf("\n  %%141 = mul nsw i32 %%140, 100, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_227_count);
  llvm_cbe_tmp__101 = (unsigned int )((unsigned int )(llvm_cbe_tmp__100&4294967295ull)) * ((unsigned int )(100u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__101&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%142 = add nsw i32 %%141, %%storemerge11, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_228_count);
  llvm_cbe_tmp__102 = (unsigned int )((unsigned int )(llvm_cbe_tmp__101&4294967295ull)) + ((unsigned int )(llvm_cbe_storemerge11&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__102&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%143 = sext i32 %%142 to i64, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_229_count);
  llvm_cbe_tmp__103 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__102);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__103);
if (AESL_DEBUG_TRACE)
printf("\n  %%144 = getelementptr inbounds [400 x i8]* @aesl_internal_edca_fifo_vo, i64 0, i64 %%143, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_230_count);
  llvm_cbe_tmp__104 = ( char *)(&aesl_internal_edca_fifo_vo[(((signed long long )llvm_cbe_tmp__103))
#ifdef AESL_BC_SIM
 % 400
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__103));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__103) < 400)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_edca_fifo_vo' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%145 = load i8* %%144, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_231_count);
  llvm_cbe_tmp__105 = (unsigned char )*llvm_cbe_tmp__104;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%146 = sext i32 %%storemerge11 to i64, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_232_count);
  llvm_cbe_tmp__106 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge11);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__106);
if (AESL_DEBUG_TRACE)
printf("\n  %%147 = getelementptr inbounds i8* %%inout_frame, i64 %%146, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_233_count);
  llvm_cbe_tmp__107 = ( char *)(&llvm_cbe_inout_frame[(((signed long long )llvm_cbe_tmp__106))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__106));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%145, i8* %%147, align 1, !dbg !11 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_234_count);
  *llvm_cbe_tmp__107 = llvm_cbe_tmp__105;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__105);
if (AESL_DEBUG_TRACE)
printf("\n  %%148 = add nsw i32 %%storemerge11, 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_235_count);
  llvm_cbe_tmp__108 = (unsigned int )((unsigned int )(llvm_cbe_storemerge11&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__108&4294967295ull)));
  if (((llvm_cbe_tmp__108&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__138;
  } else {
    llvm_cbe_storemerge11__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__108;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__138:
if (AESL_DEBUG_TRACE)
printf("\n  %%150 = load i2* @aesl_internal_read_pointer_vo, align 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_242_count);
  llvm_cbe_tmp__109 = (unsigned char )*(&aesl_internal_read_pointer_vo);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__109);
if (AESL_DEBUG_TRACE)
printf("\n  %%151 = add i2 %%150, 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_243_count);
  llvm_cbe_tmp__110 = (unsigned char )((unsigned char )(llvm_cbe_tmp__109&3ull)) + ((unsigned char )(((unsigned char )1)&3ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__110&3ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 %%151, i2* @aesl_internal_read_pointer_vo, align 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_244_count);
  *(&aesl_internal_read_pointer_vo) = ((llvm_cbe_tmp__110) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__110);
if (AESL_DEBUG_TRACE)
printf("\n  %%152 = load i3* @aesl_internal_available_spaces_vo, align 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_245_count);
  llvm_cbe_tmp__111 = (unsigned char )*(&aesl_internal_available_spaces_vo);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__111);
if (AESL_DEBUG_TRACE)
printf("\n  %%153 = add i3 %%152, 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_246_count);
  llvm_cbe_tmp__112 = (unsigned char )((unsigned char )(llvm_cbe_tmp__111&7ull)) + ((unsigned char )(((unsigned char )1)&7ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )(llvm_cbe_tmp__112&7ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 %%153, i3* @aesl_internal_available_spaces_vo, align 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_247_count);
  *(&aesl_internal_available_spaces_vo) = ((llvm_cbe_tmp__112) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__112);
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__128:
  if (((llvm_cbe_operation&3U) == (((unsigned char )2u)&3U))) {
    goto llvm_cbe_tmp__139;
  } else {
    llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )0;   /* for PHI node */
    goto llvm_cbe_tmp__118;
  }

llvm_cbe_tmp__139:
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_read_pointer_vo, align 1, !dbg !17 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_251_count);
  *(&aesl_internal_read_pointer_vo) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_write_pointer_vo, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_252_count);
  *(&aesl_internal_write_pointer_vo) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 -4, i3* @aesl_internal_available_spaces_vo, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_253_count);
  *(&aesl_internal_available_spaces_vo) = ((((unsigned char )4u)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )4u));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_read_pointer_vi, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_254_count);
  *(&aesl_internal_read_pointer_vi) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_write_pointer_vi, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_255_count);
  *(&aesl_internal_write_pointer_vi) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 -4, i3* @aesl_internal_available_spaces_vi, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_256_count);
  *(&aesl_internal_available_spaces_vi) = ((((unsigned char )4u)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )4u));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_read_pointer_be, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_257_count);
  *(&aesl_internal_read_pointer_be) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_write_pointer_be, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_258_count);
  *(&aesl_internal_write_pointer_be) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 -4, i3* @aesl_internal_available_spaces_be, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_259_count);
  *(&aesl_internal_available_spaces_be) = ((((unsigned char )4u)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )4u));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_read_pointer_bk, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_260_count);
  *(&aesl_internal_read_pointer_bk) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i2 0, i2* @aesl_internal_write_pointer_bk, align 1, !dbg !18 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_261_count);
  *(&aesl_internal_write_pointer_bk) = ((((unsigned char )0)) & 3ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  store i3 -4, i3* @aesl_internal_available_spaces_bk, align 1, !dbg !19 for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_262_count);
  *(&aesl_internal_available_spaces_bk) = ((((unsigned char )4u)) & 7ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )4u));
  llvm_cbe_tmp__113__PHI_TEMPORARY = (bool )1;   /* for PHI node */
  goto llvm_cbe_tmp__118;

llvm_cbe_tmp__118:
if (AESL_DEBUG_TRACE)
printf("\n  %%158 = phi i1 [ true, %%156 ], [ true, %%149 ], [ true, %%130 ], [ true, %%110 ], [ true, %%90 ], [ true, %%70 ], [ true, %%53 ], [ true, %%35 ], [ true, %%17 ], [ false, %%4 ], [ false, %%22 ], [ false, %%40 ], [ false, %%56 ], [ false, %%77 ], [ false, %%97 ], [ false, %%117 ], [ false, %%135 ], [ false, %%154  for 0x%I64xth hint within @enqueue_dequeue_frame  --> \n", ++aesl_llvm_cbe_264_count);
  llvm_cbe_tmp__113 = (bool )((llvm_cbe_tmp__113__PHI_TEMPORARY)&1);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__113);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",1);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
printf("\n = 0x%X",0);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @enqueue_dequeue_frame}\n");
  return llvm_cbe_tmp__113;
}


void slot_boundary_timing( char llvm_cbe_timing_mode, bool *llvm_cbe_idle_waiting, bool *llvm_cbe_medium_state) {
  static  unsigned long long aesl_llvm_cbe_sifs_timeout_count = 0;
  bool llvm_cbe_sifs_timeout;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_idle_timeout_count = 0;
  bool llvm_cbe_idle_timeout;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_266_count = 0;
  static  unsigned long long aesl_llvm_cbe_267_count = 0;
  static  unsigned long long aesl_llvm_cbe_268_count = 0;
  static  unsigned long long aesl_llvm_cbe_269_count = 0;
  static  unsigned long long aesl_llvm_cbe_270_count = 0;
  static  unsigned long long aesl_llvm_cbe_271_count = 0;
  static  unsigned long long aesl_llvm_cbe_272_count = 0;
  static  unsigned long long aesl_llvm_cbe_273_count = 0;
  static  unsigned long long aesl_llvm_cbe_274_count = 0;
  static  unsigned long long aesl_llvm_cbe_275_count = 0;
  static  unsigned long long aesl_llvm_cbe_276_count = 0;
  static  unsigned long long aesl_llvm_cbe_277_count = 0;
  static  unsigned long long aesl_llvm_cbe_278_count = 0;
  static  unsigned long long aesl_llvm_cbe_279_count = 0;
  static  unsigned long long aesl_llvm_cbe_280_count = 0;
  static  unsigned long long aesl_llvm_cbe_281_count = 0;
  static  unsigned long long aesl_llvm_cbe_282_count = 0;
  static  unsigned long long aesl_llvm_cbe_283_count = 0;
  static  unsigned long long aesl_llvm_cbe_284_count = 0;
  static  unsigned long long aesl_llvm_cbe_285_count = 0;
  static  unsigned long long aesl_llvm_cbe_286_count = 0;
  static  unsigned long long aesl_llvm_cbe_287_count = 0;
  static  unsigned long long aesl_llvm_cbe_288_count = 0;
  static  unsigned long long aesl_llvm_cbe_289_count = 0;
  static  unsigned long long aesl_llvm_cbe_290_count = 0;
  static  unsigned long long aesl_llvm_cbe_291_count = 0;
  static  unsigned long long aesl_llvm_cbe_292_count = 0;
  static  unsigned long long aesl_llvm_cbe_293_count = 0;
  static  unsigned long long aesl_llvm_cbe_294_count = 0;
  static  unsigned long long aesl_llvm_cbe_295_count = 0;
  static  unsigned long long aesl_llvm_cbe_296_count = 0;
  static  unsigned long long aesl_llvm_cbe_297_count = 0;
  static  unsigned long long aesl_llvm_cbe_298_count = 0;
  static  unsigned long long aesl_llvm_cbe_299_count = 0;
  static  unsigned long long aesl_llvm_cbe_300_count = 0;
  static  unsigned long long aesl_llvm_cbe_301_count = 0;
  static  unsigned long long aesl_llvm_cbe_302_count = 0;
  static  unsigned long long aesl_llvm_cbe_303_count = 0;
  static  unsigned long long aesl_llvm_cbe_304_count = 0;
  static  unsigned long long aesl_llvm_cbe_305_count = 0;
  static  unsigned long long aesl_llvm_cbe_306_count = 0;
  static  unsigned long long aesl_llvm_cbe_307_count = 0;
  static  unsigned long long aesl_llvm_cbe_308_count = 0;
  static  unsigned long long aesl_llvm_cbe_309_count = 0;
  static  unsigned long long aesl_llvm_cbe_310_count = 0;
  static  unsigned long long aesl_llvm_cbe_311_count = 0;
  static  unsigned long long aesl_llvm_cbe_312_count = 0;
  static  unsigned long long aesl_llvm_cbe_313_count = 0;
  static  unsigned long long aesl_llvm_cbe_314_count = 0;
  static  unsigned long long aesl_llvm_cbe_315_count = 0;
  static  unsigned long long aesl_llvm_cbe_316_count = 0;
  static  unsigned long long aesl_llvm_cbe_317_count = 0;
  static  unsigned long long aesl_llvm_cbe_318_count = 0;
  static  unsigned long long aesl_llvm_cbe_319_count = 0;
  static  unsigned long long aesl_llvm_cbe_320_count = 0;
  static  unsigned long long aesl_llvm_cbe_321_count = 0;
  static  unsigned long long aesl_llvm_cbe_322_count = 0;
  static  unsigned long long aesl_llvm_cbe_323_count = 0;
  static  unsigned long long aesl_llvm_cbe_324_count = 0;
  static  unsigned long long aesl_llvm_cbe_325_count = 0;
  static  unsigned long long aesl_llvm_cbe_326_count = 0;
  static  unsigned long long aesl_llvm_cbe_327_count = 0;
  static  unsigned long long aesl_llvm_cbe_328_count = 0;
  bool llvm_cbe_tmp__140;
  static  unsigned long long aesl_llvm_cbe_329_count = 0;
  static  unsigned long long aesl_llvm_cbe_330_count = 0;
  static  unsigned long long aesl_llvm_cbe_331_count = 0;
  static  unsigned long long aesl_llvm_cbe_332_count = 0;
  static  unsigned long long aesl_llvm_cbe_333_count = 0;
  static  unsigned long long aesl_llvm_cbe_334_count = 0;
  static  unsigned long long aesl_llvm_cbe_335_count = 0;
  static  unsigned long long aesl_llvm_cbe_336_count = 0;
  static  unsigned long long aesl_llvm_cbe_337_count = 0;
  bool llvm_cbe_tmp__141;
  static  unsigned long long aesl_llvm_cbe_338_count = 0;
  static  unsigned long long aesl_llvm_cbe_339_count = 0;
  static  unsigned long long aesl_llvm_cbe_340_count = 0;
  static  unsigned long long aesl_llvm_cbe_341_count = 0;
  static  unsigned long long aesl_llvm_cbe_342_count = 0;
  static  unsigned long long aesl_llvm_cbe_343_count = 0;
  static  unsigned long long aesl_llvm_cbe_344_count = 0;
  static  unsigned long long aesl_llvm_cbe_345_count = 0;
  static  unsigned long long aesl_llvm_cbe_346_count = 0;
  static  unsigned long long aesl_llvm_cbe_347_count = 0;
  static  unsigned long long aesl_llvm_cbe_348_count = 0;
  static  unsigned long long aesl_llvm_cbe_349_count = 0;
  static  unsigned long long aesl_llvm_cbe_350_count = 0;
  static  unsigned long long aesl_llvm_cbe_351_count = 0;
  static  unsigned long long aesl_llvm_cbe_352_count = 0;
  static  unsigned long long aesl_llvm_cbe_353_count = 0;
  static  unsigned long long aesl_llvm_cbe_354_count = 0;
  static  unsigned long long aesl_llvm_cbe_355_count = 0;
  static  unsigned long long aesl_llvm_cbe_356_count = 0;
  static  unsigned long long aesl_llvm_cbe_357_count = 0;
  static  unsigned long long aesl_llvm_cbe_358_count = 0;
  static  unsigned long long aesl_llvm_cbe_359_count = 0;
  bool llvm_cbe_tmp__142;
  static  unsigned long long aesl_llvm_cbe_360_count = 0;
  static  unsigned long long aesl_llvm_cbe_361_count = 0;
  static  unsigned long long aesl_llvm_cbe_362_count = 0;
  static  unsigned long long aesl_llvm_cbe_363_count = 0;
  static  unsigned long long aesl_llvm_cbe_364_count = 0;
  static  unsigned long long aesl_llvm_cbe_365_count = 0;
  static  unsigned long long aesl_llvm_cbe_366_count = 0;
  static  unsigned long long aesl_llvm_cbe_367_count = 0;
  static  unsigned long long aesl_llvm_cbe_368_count = 0;
  static  unsigned long long aesl_llvm_cbe_369_count = 0;
  static  unsigned long long aesl_llvm_cbe_370_count = 0;
  static  unsigned long long aesl_llvm_cbe_371_count = 0;
  static  unsigned long long aesl_llvm_cbe_372_count = 0;
  static  unsigned long long aesl_llvm_cbe_373_count = 0;
  static  unsigned long long aesl_llvm_cbe_374_count = 0;
  static  unsigned long long aesl_llvm_cbe_375_count = 0;
  static  unsigned long long aesl_llvm_cbe_376_count = 0;
  static  unsigned long long aesl_llvm_cbe_377_count = 0;
  static  unsigned long long aesl_llvm_cbe_378_count = 0;
  static  unsigned long long aesl_llvm_cbe_379_count = 0;
  static  unsigned long long aesl_llvm_cbe_380_count = 0;
  static  unsigned long long aesl_llvm_cbe_381_count = 0;
  static  unsigned long long aesl_llvm_cbe_382_count = 0;
  static  unsigned long long aesl_llvm_cbe_383_count = 0;
  static  unsigned long long aesl_llvm_cbe_384_count = 0;
  static  unsigned long long aesl_llvm_cbe_385_count = 0;
  static  unsigned long long aesl_llvm_cbe_386_count = 0;
  static  unsigned long long aesl_llvm_cbe_387_count = 0;
  static  unsigned long long aesl_llvm_cbe_388_count = 0;
  bool llvm_cbe_tmp__143;
  static  unsigned long long aesl_llvm_cbe_389_count = 0;
  static  unsigned long long aesl_llvm_cbe_390_count = 0;
  static  unsigned long long aesl_llvm_cbe_391_count = 0;
  static  unsigned long long aesl_llvm_cbe_392_count = 0;
  static  unsigned long long aesl_llvm_cbe_393_count = 0;
  static  unsigned long long aesl_llvm_cbe_394_count = 0;
  static  unsigned long long aesl_llvm_cbe_395_count = 0;
  static  unsigned long long aesl_llvm_cbe_396_count = 0;
  static  unsigned long long aesl_llvm_cbe_397_count = 0;
  bool llvm_cbe_tmp__144;
  static  unsigned long long aesl_llvm_cbe_398_count = 0;
  static  unsigned long long aesl_llvm_cbe_399_count = 0;
  static  unsigned long long aesl_llvm_cbe_400_count = 0;
  static  unsigned long long aesl_llvm_cbe_401_count = 0;
  static  unsigned long long aesl_llvm_cbe_402_count = 0;
  static  unsigned long long aesl_llvm_cbe_403_count = 0;
  static  unsigned long long aesl_llvm_cbe_404_count = 0;
  static  unsigned long long aesl_llvm_cbe_405_count = 0;
  static  unsigned long long aesl_llvm_cbe_406_count = 0;
  static  unsigned long long aesl_llvm_cbe_407_count = 0;
  static  unsigned long long aesl_llvm_cbe_408_count = 0;
  static  unsigned long long aesl_llvm_cbe_409_count = 0;
  static  unsigned long long aesl_llvm_cbe_410_count = 0;
  static  unsigned long long aesl_llvm_cbe_411_count = 0;
  static  unsigned long long aesl_llvm_cbe_412_count = 0;
  static  unsigned long long aesl_llvm_cbe_413_count = 0;
  static  unsigned long long aesl_llvm_cbe_414_count = 0;
  static  unsigned long long aesl_llvm_cbe_415_count = 0;
  static  unsigned long long aesl_llvm_cbe_416_count = 0;
  static  unsigned long long aesl_llvm_cbe_417_count = 0;
  static  unsigned long long aesl_llvm_cbe_418_count = 0;
  static  unsigned long long aesl_llvm_cbe_419_count = 0;
  bool llvm_cbe_tmp__145;
  static  unsigned long long aesl_llvm_cbe_420_count = 0;
  static  unsigned long long aesl_llvm_cbe_421_count = 0;
  static  unsigned long long aesl_llvm_cbe_422_count = 0;
  static  unsigned long long aesl_llvm_cbe_423_count = 0;
  static  unsigned long long aesl_llvm_cbe_424_count = 0;
  static  unsigned long long aesl_llvm_cbe_425_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @slot_boundary_timing\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_waiting, align 1, !dbg !7 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_288_count);
  *llvm_cbe_idle_waiting = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%sifs_timeout, align 1, !dbg !11 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_296_count);
  *(&llvm_cbe_sifs_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_timeout, align 1, !dbg !11 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_304_count);
  *(&llvm_cbe_idle_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  if (((llvm_cbe_timing_mode&3U) == (((unsigned char )0)&3U))) {
    goto llvm_cbe_tmp__146;
  } else {
    goto llvm_cbe_tmp__147;
  }

llvm_cbe_tmp__146:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%sifs_timeout, align 1, !dbg !11 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_313_count);
  *(&llvm_cbe_sifs_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_timeout, align 1, !dbg !11 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_320_count);
  *(&llvm_cbe_idle_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_timer(i8 zeroext 2, i1* %%sifs_timeout, i1 zeroext false, i1* %%medium_state) nounwind, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_321_count);
  start_timer(((unsigned char )2), (bool *)(&llvm_cbe_sifs_timeout), 0, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument  = 0x%X",0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = load i1* %%sifs_timeout, align 1, !dbg !11 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_328_count);
  llvm_cbe_tmp__140 = (bool )((*(&llvm_cbe_sifs_timeout))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__140);
  if (llvm_cbe_tmp__140) {
    goto llvm_cbe_tmp__148;
  } else {
    goto llvm_cbe_tmp__149;
  }

llvm_cbe_tmp__148:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_timer(i8 zeroext 2, i1* %%idle_timeout, i1 zeroext true, i1* %%medium_state) nounwind, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_330_count);
  start_timer(((unsigned char )2), (bool *)(&llvm_cbe_idle_timeout), 1, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = load i1* %%idle_timeout, align 1, !dbg !12 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_337_count);
  llvm_cbe_tmp__141 = (bool )((*(&llvm_cbe_idle_timeout))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__141);
  if (llvm_cbe_tmp__141) {
    goto llvm_cbe_tmp__150;
  } else {
    goto llvm_cbe_tmp__151;
  }

llvm_cbe_tmp__150:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%idle_waiting, align 1, !dbg !8 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_339_count);
  *llvm_cbe_idle_waiting = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__151:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_waiting, align 1, !dbg !8 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_341_count);
  *llvm_cbe_idle_waiting = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__147:
  if (((llvm_cbe_timing_mode&3U) == (((unsigned char )1)&3U))) {
    goto llvm_cbe_tmp__152;
  } else {
    goto llvm_cbe_tmp__153;
  }

llvm_cbe_tmp__152:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_timeout, align 1, !dbg !12 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_351_count);
  *(&llvm_cbe_idle_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_timer(i8 zeroext 2, i1* %%idle_timeout, i1 zeroext true, i1* %%medium_state) nounwind, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_352_count);
  start_timer(((unsigned char )2), (bool *)(&llvm_cbe_idle_timeout), 1, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i1* %%idle_timeout, align 1, !dbg !12 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_359_count);
  llvm_cbe_tmp__142 = (bool )((*(&llvm_cbe_idle_timeout))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__142);
  if (llvm_cbe_tmp__142) {
    goto llvm_cbe_tmp__154;
  } else {
    goto llvm_cbe_tmp__155;
  }

llvm_cbe_tmp__154:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%idle_waiting, align 1, !dbg !8 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_361_count);
  *llvm_cbe_idle_waiting = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__155:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_waiting, align 1, !dbg !8 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_363_count);
  *llvm_cbe_idle_waiting = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__153:
  if (((llvm_cbe_timing_mode&3U) == (((unsigned char )2u)&3U))) {
    goto llvm_cbe_tmp__156;
  } else {
    goto llvm_cbe_tmp__157;
  }

llvm_cbe_tmp__156:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%sifs_timeout, align 1, !dbg !12 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_373_count);
  *(&llvm_cbe_sifs_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_timeout, align 1, !dbg !12 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_380_count);
  *(&llvm_cbe_idle_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_timer(i8 zeroext 2, i1* %%sifs_timeout, i1 zeroext false, i1* %%medium_state) nounwind, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_381_count);
  start_timer(((unsigned char )2), (bool *)(&llvm_cbe_sifs_timeout), 0, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument  = 0x%X",0);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i1* %%sifs_timeout, align 1, !dbg !12 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_388_count);
  llvm_cbe_tmp__143 = (bool )((*(&llvm_cbe_sifs_timeout))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__143);
  if (llvm_cbe_tmp__143) {
    goto llvm_cbe_tmp__158;
  } else {
    goto llvm_cbe_tmp__149;
  }

llvm_cbe_tmp__158:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_timer(i8 zeroext 2, i1* %%idle_timeout, i1 zeroext true, i1* %%medium_state) nounwind, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_390_count);
  start_timer(((unsigned char )2), (bool *)(&llvm_cbe_idle_timeout), 1, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = load i1* %%idle_timeout, align 1, !dbg !13 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_397_count);
  llvm_cbe_tmp__144 = (bool )((*(&llvm_cbe_idle_timeout))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__144);
  if (llvm_cbe_tmp__144) {
    goto llvm_cbe_tmp__159;
  } else {
    goto llvm_cbe_tmp__160;
  }

llvm_cbe_tmp__159:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%idle_waiting, align 1, !dbg !9 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_399_count);
  *llvm_cbe_idle_waiting = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__160:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_waiting, align 1, !dbg !9 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_401_count);
  *llvm_cbe_idle_waiting = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__157:
  if (((llvm_cbe_timing_mode&3U) == (((unsigned char )-1)&3U))) {
    goto llvm_cbe_tmp__161;
  } else {
    goto llvm_cbe_tmp__149;
  }

llvm_cbe_tmp__161:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_timeout, align 1, !dbg !13 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_411_count);
  *(&llvm_cbe_idle_timeout) = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_timer(i8 zeroext 2, i1* %%idle_timeout, i1 zeroext true, i1* %%medium_state) nounwind, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_412_count);
  start_timer(((unsigned char )2), (bool *)(&llvm_cbe_idle_timeout), 1, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i1* %%idle_timeout, align 1, !dbg !13 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_419_count);
  llvm_cbe_tmp__145 = (bool )((*(&llvm_cbe_idle_timeout))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__145);
  if (llvm_cbe_tmp__145) {
    goto llvm_cbe_tmp__162;
  } else {
    goto llvm_cbe_tmp__163;
  }

llvm_cbe_tmp__162:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 true, i1* %%idle_waiting, align 1, !dbg !9 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_421_count);
  *llvm_cbe_idle_waiting = ((1) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 1);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__163:
if (AESL_DEBUG_TRACE)
printf("\n  store i1 false, i1* %%idle_waiting, align 1, !dbg !10 for 0x%I64xth hint within @slot_boundary_timing  --> \n", ++aesl_llvm_cbe_423_count);
  *llvm_cbe_idle_waiting = ((0) & 1ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", 0);
  goto llvm_cbe_tmp__149;

llvm_cbe_tmp__149:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @slot_boundary_timing}\n");
  return;
}


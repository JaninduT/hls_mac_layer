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
typedef struct l_struct_OC_channel_identifier l_struct_OC_channel_identifier;

/* Structure contents */
struct l_struct_OC_mac48 {
   char field0[6];
};

struct l_struct_OC_channel_identifier {
  unsigned char field0;
  unsigned char field1;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void ma_unitdatax_request(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char *llvm_cbe_data,  char llvm_cbe_up, bool llvm_cbe_s_class, l_struct_OC_channel_identifier llvm_cbe_c_identifier,  char llvm_cbe_t_slot,  char llvm_cbe_d_rate,  char llvm_cbe_tx_power_lvl, signed long long llvm_cbe_expiry_time, bool *llvm_cbe_medium_state);
void ma_unitdatax_status_indication(l_struct_OC_mac48 , l_struct_OC_mac48 ,  char ,  char , bool );
void compose_mac_frame(l_struct_OC_mac48 ,  char ,  char , signed short ,  char ,  char *,  char *);
unsigned char enqueue_dequeue_frame( char ,  char ,  char *,  char *,  char *);
void start_backoff_bk(bool );
void start_backoff_be(bool );
void start_backoff_vi(bool );
void start_backoff_vo(bool );


/* Global Variable Definitions and Initialization */
static unsigned short aesl_internal_seq_number;


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

void ma_unitdatax_request(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char *llvm_cbe_data,  char llvm_cbe_up, bool llvm_cbe_s_class, l_struct_OC_channel_identifier llvm_cbe_c_identifier,  char llvm_cbe_t_slot,  char llvm_cbe_d_rate,  char llvm_cbe_tx_power_lvl, signed long long llvm_cbe_expiry_time, bool *llvm_cbe_medium_state) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
   char llvm_cbe_tmp__1;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
   char llvm_cbe_tmp__2;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_llc_data_count = 0;
   char llvm_cbe_llc_data[70];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_mac_data_count = 0;
   char llvm_cbe_mac_data[100];    /* Address-exposed local */
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
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
   char *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
   char *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  unsigned char llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge18_count = 0;
  unsigned int llvm_cbe_storemerge18;
  unsigned int llvm_cbe_storemerge18__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  unsigned long long llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
   char *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  unsigned char llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
   char *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  unsigned short llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
   char *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
   char *llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  static  unsigned long long aesl_llvm_cbe_up_2e_off_count = 0;
  unsigned char llvm_cbe_up_2e_off;
  static  unsigned long long aesl_llvm_cbe_switch_count = 0;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;
  unsigned char llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_116_count = 0;
  static  unsigned long long aesl_llvm_cbe_117_count = 0;
  static  unsigned long long aesl_llvm_cbe_118_count = 0;
  static  unsigned long long aesl_llvm_cbe_119_count = 0;
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  bool llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  unsigned short llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  unsigned short llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  unsigned char llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  bool llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  unsigned short llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  unsigned short llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  static  unsigned long long aesl_llvm_cbe_up_2e_off14_count = 0;
  unsigned char llvm_cbe_up_2e_off14;
  static  unsigned long long aesl_llvm_cbe_switch15_count = 0;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned char llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  bool llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
  unsigned short llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  unsigned short llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_up_2e_off16_count = 0;
  unsigned char llvm_cbe_up_2e_off16;
  static  unsigned long long aesl_llvm_cbe_switch17_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  unsigned char llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  bool llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  unsigned short llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
  unsigned short llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @ma_unitdatax_request\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i7 %%d_rate, i7* %%1, align  for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_54_count);
  *(&llvm_cbe_tmp__1) = ((llvm_cbe_d_rate) & 127ull);
if (AESL_DEBUG_TRACE)
printf("\nd_rate = 0x%X\n", llvm_cbe_d_rate);
if (AESL_DEBUG_TRACE)
printf("\n  store i4 %%tx_power_lvl, i4* %%2, align  for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_62_count);
  *(&llvm_cbe_tmp__2) = ((llvm_cbe_tx_power_lvl) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\ntx_power_lvl = 0x%X\n", llvm_cbe_tx_power_lvl);
  if (((( char )(llvm_cbe_up & (1U << 3U )  ? llvm_cbe_up | 4294967280U : llvm_cbe_up & 15U)) < (( char )(((unsigned char )0) & (1U << 3U )  ? ((unsigned char )0) | 4294967280U : ((unsigned char )0) & 15U)))) {
    goto llvm_cbe_tmp__31;
  } else {
    goto llvm_cbe_tmp__32;
  }

llvm_cbe_tmp__31:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 1, i4 zeroext %%up, i1 zeroext %%s_class) nounwind, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_72_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )1), llvm_cbe_up, llvm_cbe_s_class);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )1));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument s_class = 0x%X",llvm_cbe_s_class);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__32:
  if (llvm_cbe_s_class) {
    goto llvm_cbe_tmp__34;
  } else {
    goto llvm_cbe_tmp__35;
  }

llvm_cbe_tmp__35:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 2, i4 zeroext %%up, i1 zeroext false) nounwind, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_75_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )2), llvm_cbe_up, 0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )2));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",0);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds %%struct.channel_identifier* %%c_identifier, i64 0, i32 0, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__3 = ( char *)(&llvm_cbe_c_identifier.field0);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load i8* %%8, align 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__4 = (unsigned char )*llvm_cbe_tmp__3;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
  if (((llvm_cbe_tmp__4&255U) == (((unsigned char )17)&255U))) {
    goto llvm_cbe_tmp__36;
  } else {
    goto llvm_cbe_tmp__37;
  }

llvm_cbe_tmp__36:
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds %%struct.channel_identifier* %%c_identifier, i64 0, i32 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__5 = ( char *)(&llvm_cbe_c_identifier.field1);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load i8* %%12, align 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__6 = (unsigned char )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__6);
  if (((llvm_cbe_tmp__6&255U) == (((unsigned char )-78)&255U))) {
    goto llvm_cbe_tmp__38;
  } else {
    goto llvm_cbe_tmp__37;
  }

llvm_cbe_tmp__37:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 3, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_85_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )3), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )3));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__38:
  switch (((unsigned char )(llvm_cbe_d_rate&127ull))) {
  default:
    goto llvm_cbe_tmp__39;
;
  case ((unsigned char )(((unsigned char )24)&127ull)):
    goto llvm_cbe_tmp__40;
    break;
  case ((unsigned char )(((unsigned char )12)&127ull)):
    goto llvm_cbe_tmp__40;
    break;
  case ((unsigned char )(((unsigned char )6)&127ull)):
    goto llvm_cbe_tmp__40;
    break;
  }
llvm_cbe_tmp__40:
  switch (((unsigned char )(llvm_cbe_tx_power_lvl&15ull))) {
  default:
    llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
;
  case ((unsigned char )(((unsigned char )-1)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )-2)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )-3)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )-4)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )-5)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )-6)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )-7)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  case ((unsigned char )(((unsigned char )0)&15ull)):
    goto llvm_cbe_tmp__39;
    break;
  }
llvm_cbe_tmp__39:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext -4, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_96_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )4u), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )4u));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
  goto llvm_cbe_tmp__33;

  do {     /* Syntactic loop '.preheader' to make GCC happy */
llvm_cbe__2e_preheader:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge18 = phi i32 [ %%23, %%.preheader ], [ 0, %%17  for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_storemerge18_count);
  llvm_cbe_storemerge18 = (unsigned int )llvm_cbe_storemerge18__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge18 = 0x%X",llvm_cbe_storemerge18);
printf("\n = 0x%X",llvm_cbe_tmp__11);
printf("\n = 0x%X",0u);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = sext i32 %%storemerge18 to i64, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__7 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge18);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__7);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds i8* %%data, i64 %%19, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__8 = ( char *)(&llvm_cbe_data[(((signed long long )llvm_cbe_tmp__7))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__7));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load i8* %%20, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_100_count);
  llvm_cbe_tmp__9 = (unsigned char )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds [70 x i8]* %%llc_data, i64 0, i64 %%19, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__10 = ( char *)(&llvm_cbe_llc_data[(((signed long long )llvm_cbe_tmp__7))
#ifdef AESL_BC_SIM
 % 70
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__7));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__7) < 70 && "Write access out of array 'llc_data' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%21, i8* %%22, align 1, !dbg !8 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_102_count);
  *llvm_cbe_tmp__10 = llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = add nsw i32 %%storemerge18, 1, !dbg !15 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_103_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_storemerge18&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
  if (((llvm_cbe_tmp__11&4294967295U) == (70u&4294967295U))) {
    goto llvm_cbe_tmp__41;
  } else {
    llvm_cbe_storemerge18__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe__2e_preheader;
  }

  } while (1); /* end of syntactic loop '.preheader' */
llvm_cbe_tmp__41:
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load i12* @aesl_internal_seq_number, align 2, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_110_count);
  llvm_cbe_tmp__12 = (unsigned short )*(&aesl_internal_seq_number);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = getelementptr inbounds [70 x i8]* %%llc_data, i64 0, i64 0, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__13 = ( char *)(&llvm_cbe_llc_data[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 70
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds [100 x i8]* %%mac_data, i64 0, i64 0, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__14 = ( char *)(&llvm_cbe_mac_data[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 100
#endif
]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @compose_mac_frame(%%struct.mac48* byval %%source_addr, i2 zeroext 1, i4 zeroext 1, i12 zeroext %%25, i4 zeroext %%up, i8* %%26, i8* %%27) nounwind, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_113_count);
  compose_mac_frame(llvm_cbe_source_addr, ((unsigned char )1), ((unsigned char )1), llvm_cbe_tmp__12, llvm_cbe_up, ( char *)llvm_cbe_tmp__13, ( char *)llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )1));
printf("\nArgument  = 0x%X",((unsigned char )1));
printf("\nArgument  = 0x%X",llvm_cbe_tmp__12);
printf("\nArgument up = 0x%X",llvm_cbe_up);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%up.off = add i4 %%up, -1, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_up_2e_off_count);
  llvm_cbe_up_2e_off = (unsigned char )((unsigned char )(llvm_cbe_up&15ull)) + ((unsigned char )(((unsigned char )-1)&15ull));
if (AESL_DEBUG_TRACE)
printf("\nup.off = 0x%X\n", ((unsigned char )(llvm_cbe_up_2e_off&15ull)));
  if ((((unsigned char )llvm_cbe_up_2e_off&15U) < ((unsigned char )((unsigned char )2)&15U))) {
    goto llvm_cbe_tmp__42;
  } else {
    goto llvm_cbe_tmp__43;
  }

llvm_cbe_tmp__42:
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = call zeroext i4 @enqueue_dequeue_frame(i2 zeroext 0, i2 zeroext 0, i8* %%27, i7* %%1, i4* %%2) nounwind, !dbg !15 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_115_count);
  llvm_cbe_tmp__15 = (unsigned char )enqueue_dequeue_frame(((unsigned char )0), ((unsigned char )0), ( char *)llvm_cbe_tmp__14, ( char *)(&llvm_cbe_tmp__1), ( char *)(&llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__15);
}
  if (((llvm_cbe_tmp__15&15U) == (((unsigned char )-2)&15U))) {
    goto llvm_cbe_tmp__44;
  } else {
    goto llvm_cbe_tmp__45;
  }

llvm_cbe_tmp__44:
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = load volatile i1* %%medium_state, align 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_120_count);
  llvm_cbe_tmp__16 = (bool )((*((bool volatile*)llvm_cbe_medium_state))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__16);
  if (llvm_cbe_tmp__16) {
    goto llvm_cbe_tmp__46;
  } else {
    goto llvm_cbe_tmp__47;
  }

llvm_cbe_tmp__47:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_backoff_bk(i1 zeroext false) nounwind, !dbg !15 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_122_count);
  start_backoff_bk(0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0);
}
  goto llvm_cbe_tmp__46;

llvm_cbe_tmp__46:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 0, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_124_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )0), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = load i12* @aesl_internal_seq_number, align 2, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_125_count);
  llvm_cbe_tmp__17 = (unsigned short )*(&aesl_internal_seq_number);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = add i12 %%35, 1, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_126_count);
  llvm_cbe_tmp__18 = (unsigned short )((unsigned short )(llvm_cbe_tmp__17&4095ull)) + ((unsigned short )(((unsigned short )1)&4095ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__18&4095ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i12 %%36, i12* @aesl_internal_seq_number, align 2, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_127_count);
  *(&aesl_internal_seq_number) = ((llvm_cbe_tmp__18) & 4095ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__18);
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__45:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext -3, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !10 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_129_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )-3), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )-3));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__43:
  switch (((unsigned char )(llvm_cbe_up&15ull))) {
  default:
    goto llvm_cbe_tmp__48;
;
  case ((unsigned char )(((unsigned char )3)&15ull)):
    goto llvm_cbe_tmp__49;
    break;
  case ((unsigned char )(((unsigned char )0)&15ull)):
    goto llvm_cbe_tmp__49;
    break;
  }
llvm_cbe_tmp__49:
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = call zeroext i4 @enqueue_dequeue_frame(i2 zeroext 0, i2 zeroext 1, i8* %%27, i7* %%1, i4* %%2) nounwind, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_132_count);
  llvm_cbe_tmp__19 = (unsigned char )enqueue_dequeue_frame(((unsigned char )0), ((unsigned char )1), ( char *)llvm_cbe_tmp__14, ( char *)(&llvm_cbe_tmp__1), ( char *)(&llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )1));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__19);
}
  if (((llvm_cbe_tmp__19&15U) == (((unsigned char )-2)&15U))) {
    goto llvm_cbe_tmp__50;
  } else {
    goto llvm_cbe_tmp__51;
  }

llvm_cbe_tmp__50:
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = load volatile i1* %%medium_state, align 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__20 = (bool )((*((bool volatile*)llvm_cbe_medium_state))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
  if (llvm_cbe_tmp__20) {
    goto llvm_cbe_tmp__52;
  } else {
    goto llvm_cbe_tmp__53;
  }

llvm_cbe_tmp__53:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_backoff_be(i1 zeroext false) nounwind, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_139_count);
  start_backoff_be(0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0);
}
  goto llvm_cbe_tmp__52;

llvm_cbe_tmp__52:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 0, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !11 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_141_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )0), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = load i12* @aesl_internal_seq_number, align 2, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_142_count);
  llvm_cbe_tmp__21 = (unsigned short )*(&aesl_internal_seq_number);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = add i12 %%46, 1, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_143_count);
  llvm_cbe_tmp__22 = (unsigned short )((unsigned short )(llvm_cbe_tmp__21&4095ull)) + ((unsigned short )(((unsigned short )1)&4095ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__22&4095ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i12 %%47, i12* @aesl_internal_seq_number, align 2, !dbg !16 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_144_count);
  *(&aesl_internal_seq_number) = ((llvm_cbe_tmp__22) & 4095ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__22);
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__51:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext -3, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !11 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_146_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )-3), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )-3));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__48:
if (AESL_DEBUG_TRACE)
printf("\n  %%up.off14 = add i4 %%up, -4, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_up_2e_off14_count);
  llvm_cbe_up_2e_off14 = (unsigned char )((unsigned char )(llvm_cbe_up&15ull)) + ((unsigned char )(((unsigned char )-4)&15ull));
if (AESL_DEBUG_TRACE)
printf("\nup.off14 = 0x%X\n", ((unsigned char )(llvm_cbe_up_2e_off14&15ull)));
  if ((((unsigned char )llvm_cbe_up_2e_off14&15U) < ((unsigned char )((unsigned char )2)&15U))) {
    goto llvm_cbe_tmp__54;
  } else {
    goto llvm_cbe_tmp__55;
  }

llvm_cbe_tmp__54:
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = call zeroext i4 @enqueue_dequeue_frame(i2 zeroext 0, i2 zeroext -2, i8* %%27, i7* %%1, i4* %%2) nounwind, !dbg !17 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__23 = (unsigned char )enqueue_dequeue_frame(((unsigned char )0), ((unsigned char )2u), ( char *)llvm_cbe_tmp__14, ( char *)(&llvm_cbe_tmp__1), ( char *)(&llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )2u));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__23);
}
  if (((llvm_cbe_tmp__23&15U) == (((unsigned char )-2)&15U))) {
    goto llvm_cbe_tmp__56;
  } else {
    goto llvm_cbe_tmp__57;
  }

llvm_cbe_tmp__56:
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = load volatile i1* %%medium_state, align 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_154_count);
  llvm_cbe_tmp__24 = (bool )((*((bool volatile*)llvm_cbe_medium_state))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__24);
  if (llvm_cbe_tmp__24) {
    goto llvm_cbe_tmp__58;
  } else {
    goto llvm_cbe_tmp__59;
  }

llvm_cbe_tmp__59:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_backoff_vi(i1 zeroext false) nounwind, !dbg !17 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_156_count);
  start_backoff_vi(0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0);
}
  goto llvm_cbe_tmp__58;

llvm_cbe_tmp__58:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 0, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !11 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_158_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )0), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = load i12* @aesl_internal_seq_number, align 2, !dbg !17 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__25 = (unsigned short )*(&aesl_internal_seq_number);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = add i12 %%57, 1, !dbg !17 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_160_count);
  llvm_cbe_tmp__26 = (unsigned short )((unsigned short )(llvm_cbe_tmp__25&4095ull)) + ((unsigned short )(((unsigned short )1)&4095ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__26&4095ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i12 %%58, i12* @aesl_internal_seq_number, align 2, !dbg !17 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_161_count);
  *(&aesl_internal_seq_number) = ((llvm_cbe_tmp__26) & 4095ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__57:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext -3, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !11 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_163_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )-3), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )-3));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__55:
if (AESL_DEBUG_TRACE)
printf("\n  %%up.off16 = add i4 %%up, -6, !dbg !9 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_up_2e_off16_count);
  llvm_cbe_up_2e_off16 = (unsigned char )((unsigned char )(llvm_cbe_up&15ull)) + ((unsigned char )(((unsigned char )-6)&15ull));
if (AESL_DEBUG_TRACE)
printf("\nup.off16 = 0x%X\n", ((unsigned char )(llvm_cbe_up_2e_off16&15ull)));
  if ((((unsigned char )llvm_cbe_up_2e_off16&15U) < ((unsigned char )((unsigned char )2)&15U))) {
    goto llvm_cbe_tmp__60;
  } else {
    goto llvm_cbe_tmp__33;
  }

llvm_cbe_tmp__60:
if (AESL_DEBUG_TRACE)
printf("\n  %%62 = call zeroext i4 @enqueue_dequeue_frame(i2 zeroext 0, i2 zeroext -1, i8* %%27, i7* %%1, i4* %%2) nounwind, !dbg !18 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__27 = (unsigned char )enqueue_dequeue_frame(((unsigned char )0), ((unsigned char )-1), ( char *)llvm_cbe_tmp__14, ( char *)(&llvm_cbe_tmp__1), ( char *)(&llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument  = 0x%X",((unsigned char )-1));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__27);
}
  if (((llvm_cbe_tmp__27&15U) == (((unsigned char )-2)&15U))) {
    goto llvm_cbe_tmp__61;
  } else {
    goto llvm_cbe_tmp__62;
  }

llvm_cbe_tmp__61:
if (AESL_DEBUG_TRACE)
printf("\n  %%65 = load volatile i1* %%medium_state, align 1, !dbg !14 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_171_count);
  llvm_cbe_tmp__28 = (bool )((*((bool volatile*)llvm_cbe_medium_state))&1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__28);
  if (llvm_cbe_tmp__28) {
    goto llvm_cbe_tmp__63;
  } else {
    goto llvm_cbe_tmp__64;
  }

llvm_cbe_tmp__64:
if (AESL_DEBUG_TRACE)
printf("\n  call void @start_backoff_vo(i1 zeroext false) nounwind, !dbg !18 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_173_count);
  start_backoff_vo(0);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",0);
}
  goto llvm_cbe_tmp__63;

llvm_cbe_tmp__63:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext 0, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !12 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_175_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )0), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )0));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%68 = load i12* @aesl_internal_seq_number, align 2, !dbg !18 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_176_count);
  llvm_cbe_tmp__29 = (unsigned short )*(&aesl_internal_seq_number);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%69 = add i12 %%68, 1, !dbg !18 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_177_count);
  llvm_cbe_tmp__30 = (unsigned short )((unsigned short )(llvm_cbe_tmp__29&4095ull)) + ((unsigned short )(((unsigned short )1)&4095ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__30&4095ull)));
if (AESL_DEBUG_TRACE)
printf("\n  store i12 %%69, i12* @aesl_internal_seq_number, align 2, !dbg !18 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_178_count);
  *(&aesl_internal_seq_number) = ((llvm_cbe_tmp__30) & 4095ull);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__30);
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__62:
if (AESL_DEBUG_TRACE)
printf("\n  call void @ma_unitdatax_status_indication(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i3 zeroext -3, i4 zeroext %%up, i1 zeroext true) nounwind, !dbg !12 for 0x%I64xth hint within @ma_unitdatax_request  --> \n", ++aesl_llvm_cbe_180_count);
  ma_unitdatax_status_indication(llvm_cbe_source_addr, llvm_cbe_dest_addr, ((unsigned char )-3), llvm_cbe_up, 1);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )-3));
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument  = 0x%X",1);
}
  goto llvm_cbe_tmp__33;

llvm_cbe_tmp__33:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @ma_unitdatax_request}\n");
  return;
}


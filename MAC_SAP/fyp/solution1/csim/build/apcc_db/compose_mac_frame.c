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


/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void compose_mac_header(l_struct_OC_mac48 llvm_cbe_source_addr,  char llvm_cbe_ftype,  char llvm_cbe_fstype, signed short llvm_cbe_seqnumber,  char llvm_cbe_up,  char *llvm_cbe_frame_buffer);
void compose_mac_frame(l_struct_OC_mac48 llvm_cbe_source_addr,  char llvm_cbe_ftype,  char llvm_cbe_fstype, signed short llvm_cbe_seqnumber,  char llvm_cbe_up,  char *llvm_cbe_data,  char *llvm_cbe_mac_frame);
signed int calc_crc( char *);


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

void compose_mac_header(l_struct_OC_mac48 llvm_cbe_source_addr,  char llvm_cbe_ftype,  char llvm_cbe_fstype, signed short llvm_cbe_seqnumber,  char llvm_cbe_up,  char *llvm_cbe_frame_buffer) {
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
  unsigned char llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned char llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned char llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  unsigned char llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
   char *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
   char *llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
   char *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
   char *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
   char *llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
   char *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  unsigned char llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
   char *llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
   char *llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  unsigned char llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
   char *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
   char *llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  unsigned char llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
   char *llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
   char *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  unsigned char llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
   char *llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
   char *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned char llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
   char *llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
   char *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  unsigned char llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
   char *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
   char *llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  unsigned char llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  unsigned short llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  unsigned char llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
   char *llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
   char *llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
   char *llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  unsigned char llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  unsigned char llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  unsigned char llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
   char *llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
   char *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @compose_mac_header\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = zext i2 %%ftype to i8, !dbg !10 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__1 = (unsigned char )((unsigned char )(unsigned char )llvm_cbe_ftype&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = shl nuw nsw i8 %%1, 4, !dbg !10 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__2 = (unsigned char )((unsigned char )(llvm_cbe_tmp__1 << ((unsigned char )4)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = zext i4 %%fstype to i8, !dbg !10 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__3 = (unsigned char )((unsigned char )(unsigned char )llvm_cbe_fstype&15U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = or i8 %%2, %%3, !dbg !10 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_47_count);
  llvm_cbe_tmp__4 = (unsigned char )((unsigned char )(llvm_cbe_tmp__2 | llvm_cbe_tmp__3));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%4, i8* %%frame_buffer, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_50_count);
  *llvm_cbe_frame_buffer = llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = getelementptr inbounds i8* %%frame_buffer, i64 1, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__5 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%5, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_52_count);
  *llvm_cbe_tmp__5 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds i8* %%frame_buffer, i64 2, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__6 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%6, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_54_count);
  *llvm_cbe_tmp__6 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i8* %%frame_buffer, i64 3, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_55_count);
  llvm_cbe_tmp__7 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )3ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%7, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_56_count);
  *llvm_cbe_tmp__7 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = getelementptr inbounds i8* %%frame_buffer, i64 4, !dbg !7 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_57_count);
  llvm_cbe_tmp__8 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )4ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds %%struct.mac48* %%source_addr, i64 0, i32 0, i64 0, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_58_count);
  llvm_cbe_tmp__9 = ( char *)(&llvm_cbe_source_addr.field0[(((signed long long )0ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = call i8* @memset(i8* %%8, i32 255, i64 6 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_59_count);
  ( char *)memset(( char *)llvm_cbe_tmp__8, 255u, 6ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",255u);
printf("\nArgument  = 0x%I64X",6ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load i8* %%9, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__11 = (unsigned char )*llvm_cbe_tmp__9;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds i8* %%frame_buffer, i64 10, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__12 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )10ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%11, i8* %%12, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_62_count);
  *llvm_cbe_tmp__12 = llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__11);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds %%struct.mac48* %%source_addr, i64 0, i32 0, i64 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_63_count);
  llvm_cbe_tmp__13 = ( char *)(&llvm_cbe_source_addr.field0[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load i8* %%13, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__14 = (unsigned char )*llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = getelementptr inbounds i8* %%frame_buffer, i64 11, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_65_count);
  llvm_cbe_tmp__15 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )11ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%14, i8* %%15, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_66_count);
  *llvm_cbe_tmp__15 = llvm_cbe_tmp__14;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__14);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds %%struct.mac48* %%source_addr, i64 0, i32 0, i64 2, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__16 = ( char *)(&llvm_cbe_source_addr.field0[(((signed long long )2ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load i8* %%16, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__17 = (unsigned char )*llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = getelementptr inbounds i8* %%frame_buffer, i64 12, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_69_count);
  llvm_cbe_tmp__18 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )12ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%17, i8* %%18, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_70_count);
  *llvm_cbe_tmp__18 = llvm_cbe_tmp__17;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds %%struct.mac48* %%source_addr, i64 0, i32 0, i64 3, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__19 = ( char *)(&llvm_cbe_source_addr.field0[(((signed long long )3ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = load i8* %%19, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__20 = (unsigned char )*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = getelementptr inbounds i8* %%frame_buffer, i64 13, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__21 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )13ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%20, i8* %%21, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_74_count);
  *llvm_cbe_tmp__21 = llvm_cbe_tmp__20;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds %%struct.mac48* %%source_addr, i64 0, i32 0, i64 4, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__22 = ( char *)(&llvm_cbe_source_addr.field0[(((signed long long )4ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = load i8* %%22, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__23 = (unsigned char )*llvm_cbe_tmp__22;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds i8* %%frame_buffer, i64 14, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__24 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )14ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%23, i8* %%24, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_78_count);
  *llvm_cbe_tmp__24 = llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds %%struct.mac48* %%source_addr, i64 0, i32 0, i64 5, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__25 = ( char *)(&llvm_cbe_source_addr.field0[(((signed long long )5ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load i8* %%25, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__26 = (unsigned char )*llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = getelementptr inbounds i8* %%frame_buffer, i64 15, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__27 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )15ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%26, i8* %%27, align 1, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_82_count);
  *llvm_cbe_tmp__27 = llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__26);
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds i8* %%frame_buffer, i64 16, !dbg !8 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_83_count);
  llvm_cbe_tmp__28 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )16ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = trunc i12 %%seqnumber to i8, !dbg !6 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__29 = (unsigned char )((unsigned char )llvm_cbe_seqnumber&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = lshr i12 %%seqnumber, 8, !dbg !6 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_87_count);
  llvm_cbe_tmp__30 = (unsigned short )((unsigned short )(((unsigned short )(llvm_cbe_seqnumber&4095ull)) >> ((unsigned short )(((unsigned short )8)&4095ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned short )(llvm_cbe_tmp__30&4095ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = trunc i12 %%30 to i8, !dbg !6 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_88_count);
  llvm_cbe_tmp__31 = (unsigned char )((unsigned char )llvm_cbe_tmp__30&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = getelementptr inbounds i8* %%frame_buffer, i64 22, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_91_count);
  llvm_cbe_tmp__32 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )22ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = call i8* @memset(i8* %%28, i32 255, i64 6 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_92_count);
  ( char *)memset(( char *)llvm_cbe_tmp__28, 255u, 6ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",255u);
printf("\nArgument  = 0x%I64X",6ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__33);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%31, i8* %%32, align 1, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_93_count);
  *llvm_cbe_tmp__32 = llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = getelementptr inbounds i8* %%frame_buffer, i64 23, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_94_count);
  llvm_cbe_tmp__34 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )23ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%29, i8* %%34, align 1, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_95_count);
  *llvm_cbe_tmp__34 = llvm_cbe_tmp__29;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE)
printf("\n  %%35 = zext i4 %%up to i8, !dbg !6 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__35 = (unsigned char )((unsigned char )(unsigned char )llvm_cbe_up&15U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__35);
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = shl nuw i8 %%35, 4, !dbg !11 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__36 = (unsigned char )((unsigned char )(llvm_cbe_tmp__35 << ((unsigned char )4)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__36);
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = or i8 %%36, 4, !dbg !11 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__37 = (unsigned char )((unsigned char )(llvm_cbe_tmp__36 | ((unsigned char )4)));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%38 = getelementptr inbounds i8* %%frame_buffer, i64 24, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_105_count);
  llvm_cbe_tmp__38 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )24ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%37, i8* %%38, align 1, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_106_count);
  *llvm_cbe_tmp__38 = llvm_cbe_tmp__37;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE)
printf("\n  %%39 = getelementptr inbounds i8* %%frame_buffer, i64 25, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_107_count);
  llvm_cbe_tmp__39 = ( char *)(&llvm_cbe_frame_buffer[(((signed long long )25ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 0, i8* %%39, align 1, !dbg !9 for 0x%I64xth hint within @compose_mac_header  --> \n", ++aesl_llvm_cbe_108_count);
  *llvm_cbe_tmp__39 = ((unsigned char )0);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned char )0));
  if (AESL_DEBUG_TRACE)
      printf("\nEND @compose_mac_header}\n");
  return;
}


void compose_mac_frame(l_struct_OC_mac48 llvm_cbe_source_addr,  char llvm_cbe_ftype,  char llvm_cbe_fstype, signed short llvm_cbe_seqnumber,  char llvm_cbe_up,  char *llvm_cbe_data,  char *llvm_cbe_mac_frame) {
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
  static  unsigned long long aesl_llvm_cbe_120_count = 0;
  static  unsigned long long aesl_llvm_cbe_121_count = 0;
  static  unsigned long long aesl_llvm_cbe_122_count = 0;
  static  unsigned long long aesl_llvm_cbe_123_count = 0;
  static  unsigned long long aesl_llvm_cbe_124_count = 0;
  static  unsigned long long aesl_llvm_cbe_125_count = 0;
  static  unsigned long long aesl_llvm_cbe_126_count = 0;
  static  unsigned long long aesl_llvm_cbe_127_count = 0;
  static  unsigned long long aesl_llvm_cbe_128_count = 0;
  static  unsigned long long aesl_llvm_cbe_129_count = 0;
  static  unsigned long long aesl_llvm_cbe_130_count = 0;
  static  unsigned long long aesl_llvm_cbe_131_count = 0;
  static  unsigned long long aesl_llvm_cbe_132_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_133_count = 0;
  unsigned long long llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_134_count = 0;
   char *llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_135_count = 0;
  unsigned char llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_136_count = 0;
  unsigned int llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_137_count = 0;
  unsigned long long llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_138_count = 0;
   char *llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_139_count = 0;
  static  unsigned long long aesl_llvm_cbe_140_count = 0;
  unsigned int llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_141_count = 0;
  static  unsigned long long aesl_llvm_cbe_142_count = 0;
  static  unsigned long long aesl_llvm_cbe_143_count = 0;
  static  unsigned long long aesl_llvm_cbe_144_count = 0;
  static  unsigned long long aesl_llvm_cbe_145_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_146_count = 0;
  static  unsigned long long aesl_llvm_cbe_147_count = 0;
  unsigned int llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_148_count = 0;
  static  unsigned long long aesl_llvm_cbe_149_count = 0;
  unsigned int llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_150_count = 0;
  static  unsigned long long aesl_llvm_cbe_151_count = 0;
  static  unsigned long long aesl_llvm_cbe_152_count = 0;
  static  unsigned long long aesl_llvm_cbe_153_count = 0;
  static  unsigned long long aesl_llvm_cbe_154_count = 0;
  static  unsigned long long aesl_llvm_cbe_155_count = 0;
  static  unsigned long long aesl_llvm_cbe_156_count = 0;
  static  unsigned long long aesl_llvm_cbe_157_count = 0;
  static  unsigned long long aesl_llvm_cbe_158_count = 0;
  unsigned char llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_159_count = 0;
   char *llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_160_count = 0;
  static  unsigned long long aesl_llvm_cbe_161_count = 0;
  static  unsigned long long aesl_llvm_cbe_162_count = 0;
  static  unsigned long long aesl_llvm_cbe_163_count = 0;
  static  unsigned long long aesl_llvm_cbe_164_count = 0;
  static  unsigned long long aesl_llvm_cbe_165_count = 0;
  static  unsigned long long aesl_llvm_cbe_166_count = 0;
  unsigned int llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_167_count = 0;
  unsigned char llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_168_count = 0;
   char *llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_169_count = 0;
  static  unsigned long long aesl_llvm_cbe_170_count = 0;
  static  unsigned long long aesl_llvm_cbe_171_count = 0;
  static  unsigned long long aesl_llvm_cbe_172_count = 0;
  static  unsigned long long aesl_llvm_cbe_173_count = 0;
  static  unsigned long long aesl_llvm_cbe_174_count = 0;
  static  unsigned long long aesl_llvm_cbe_175_count = 0;
  unsigned int llvm_cbe_tmp__54;
  static  unsigned long long aesl_llvm_cbe_176_count = 0;
  unsigned char llvm_cbe_tmp__55;
  static  unsigned long long aesl_llvm_cbe_177_count = 0;
   char *llvm_cbe_tmp__56;
  static  unsigned long long aesl_llvm_cbe_178_count = 0;
  static  unsigned long long aesl_llvm_cbe_179_count = 0;
  static  unsigned long long aesl_llvm_cbe_180_count = 0;
  static  unsigned long long aesl_llvm_cbe_181_count = 0;
  static  unsigned long long aesl_llvm_cbe_182_count = 0;
  static  unsigned long long aesl_llvm_cbe_183_count = 0;
  static  unsigned long long aesl_llvm_cbe_184_count = 0;
  unsigned int llvm_cbe_tmp__57;
  static  unsigned long long aesl_llvm_cbe_185_count = 0;
  unsigned char llvm_cbe_tmp__58;
  static  unsigned long long aesl_llvm_cbe_186_count = 0;
   char *llvm_cbe_tmp__59;
  static  unsigned long long aesl_llvm_cbe_187_count = 0;
  static  unsigned long long aesl_llvm_cbe_188_count = 0;
  static  unsigned long long aesl_llvm_cbe_189_count = 0;
  static  unsigned long long aesl_llvm_cbe_190_count = 0;
  static  unsigned long long aesl_llvm_cbe_191_count = 0;
  static  unsigned long long aesl_llvm_cbe_192_count = 0;
  static  unsigned long long aesl_llvm_cbe_193_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @compose_mac_frame\n");
if (AESL_DEBUG_TRACE)
printf("\n  tail call void @compose_mac_header(%%struct.mac48* byval %%source_addr, i2 zeroext %%ftype, i4 zeroext %%fstype, i12 zeroext %%seqnumber, i4 zeroext %%up, i8* %%mac_frame), !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_126_count);
   /*tail*/ compose_mac_header(llvm_cbe_source_addr, llvm_cbe_ftype, llvm_cbe_fstype, llvm_cbe_seqnumber, llvm_cbe_up, ( char *)llvm_cbe_mac_frame);
if (AESL_DEBUG_TRACE) {
printf("\nArgument ftype = 0x%X",llvm_cbe_ftype);
printf("\nArgument fstype = 0x%X",llvm_cbe_fstype);
printf("\nArgument seqnumber = 0x%X",llvm_cbe_seqnumber);
printf("\nArgument up = 0x%X",llvm_cbe_up);
}
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__60;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__60:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ 0, %%0 ], [ %%8, %%1  for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__46);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = sext i32 %%storemerge3 to i64, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_133_count);
  llvm_cbe_tmp__40 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = getelementptr inbounds i8* %%data, i64 %%2, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_134_count);
  llvm_cbe_tmp__41 = ( char *)(&llvm_cbe_data[(((signed long long )llvm_cbe_tmp__40))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__40));
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = load i8* %%3, align 1, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_135_count);
  llvm_cbe_tmp__42 = (unsigned char )*llvm_cbe_tmp__41;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add nsw i32 %%storemerge3, 26, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_136_count);
  llvm_cbe_tmp__43 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(26u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__43&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sext i32 %%5 to i64, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_137_count);
  llvm_cbe_tmp__44 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__44);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds i8* %%mac_frame, i64 %%6, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_138_count);
  llvm_cbe_tmp__45 = ( char *)(&llvm_cbe_mac_frame[(((signed long long )llvm_cbe_tmp__44))]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__44));
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%4, i8* %%7, align 1, !dbg !6 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_139_count);
  *llvm_cbe_tmp__45 = llvm_cbe_tmp__42;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__42);
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%storemerge3, 1, !dbg !8 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_140_count);
  llvm_cbe_tmp__46 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__46&4294967295ull)));
  if (((llvm_cbe_tmp__46&4294967295U) == (70u&4294967295U))) {
    goto llvm_cbe_tmp__61;
  } else {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__46;   /* for PHI node */
    goto llvm_cbe_tmp__60;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__61:
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = tail call i32 @calc_crc(i8* %%mac_frame) nounwind, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_147_count);
  llvm_cbe_tmp__47 = (unsigned int ) /*tail*/ calc_crc(( char *)llvm_cbe_mac_frame);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__47);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = xor i32 %%10, -1, !dbg !8 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_149_count);
  llvm_cbe_tmp__48 = (unsigned int )llvm_cbe_tmp__47 ^ 4294967295u;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__48);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = trunc i32 %%11 to i8, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_158_count);
  llvm_cbe_tmp__49 = (unsigned char )((unsigned char )llvm_cbe_tmp__48&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds i8* %%mac_frame, i64 99, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_159_count);
  llvm_cbe_tmp__50 = ( char *)(&llvm_cbe_mac_frame[(((signed long long )99ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%12, i8* %%13, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_160_count);
  *llvm_cbe_tmp__50 = llvm_cbe_tmp__49;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = lshr i32 %%11, 8, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_166_count);
  llvm_cbe_tmp__51 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__48&4294967295ull)) >> ((unsigned int )(8u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__51&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = trunc i32 %%14 to i8, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_167_count);
  llvm_cbe_tmp__52 = (unsigned char )((unsigned char )llvm_cbe_tmp__51&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds i8* %%mac_frame, i64 98, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_168_count);
  llvm_cbe_tmp__53 = ( char *)(&llvm_cbe_mac_frame[(((signed long long )98ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%15, i8* %%16, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_169_count);
  *llvm_cbe_tmp__53 = llvm_cbe_tmp__52;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = lshr i32 %%11, 16, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_175_count);
  llvm_cbe_tmp__54 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__48&4294967295ull)) >> ((unsigned int )(16u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__54&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = trunc i32 %%17 to i8, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_176_count);
  llvm_cbe_tmp__55 = (unsigned char )((unsigned char )llvm_cbe_tmp__54&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = getelementptr inbounds i8* %%mac_frame, i64 97, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_177_count);
  llvm_cbe_tmp__56 = ( char *)(&llvm_cbe_mac_frame[(((signed long long )97ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%18, i8* %%19, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_178_count);
  *llvm_cbe_tmp__56 = llvm_cbe_tmp__55;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__55);
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = lshr i32 %%11, 24, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_184_count);
  llvm_cbe_tmp__57 = (unsigned int )((unsigned int )(((unsigned int )(llvm_cbe_tmp__48&4294967295ull)) >> ((unsigned int )(24u&4294967295ull))));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__57&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = trunc i32 %%20 to i8, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_185_count);
  llvm_cbe_tmp__58 = (unsigned char )((unsigned char )llvm_cbe_tmp__57&255U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__58);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = getelementptr inbounds i8* %%mac_frame, i64 96, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_186_count);
  llvm_cbe_tmp__59 = ( char *)(&llvm_cbe_mac_frame[(((signed long long )96ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%21, i8* %%22, align 1, !dbg !7 for 0x%I64xth hint within @compose_mac_frame  --> \n", ++aesl_llvm_cbe_187_count);
  *llvm_cbe_tmp__59 = llvm_cbe_tmp__58;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__58);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @compose_mac_frame}\n");
  return;
}


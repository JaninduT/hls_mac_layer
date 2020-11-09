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


/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void send_frame(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char *llvm_cbe_data,  char llvm_cbe_up, bool llvm_cbe_s_class, l_struct_OC_channel_identifier llvm_cbe_c_identifier,  char llvm_cbe_t_slot,  char llvm_cbe_d_rate,  char llvm_cbe_tx_power_lvl, signed long long llvm_cbe_expiry_time,  char *llvm_cbe_mac_frame, bool *llvm_cbe_medium_state);
void AESL_WRAP_ma_unitdatax_request(l_struct_OC_mac48 , l_struct_OC_mac48 ,  char *,  char , bool , l_struct_OC_channel_identifier ,  char ,  char ,  char , signed long long , bool *);
unsigned char enqueue_dequeue_frame( char ,  char ,  char *,  char *,  char *);


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

void send_frame(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char *llvm_cbe_data,  char llvm_cbe_up, bool llvm_cbe_s_class, l_struct_OC_channel_identifier llvm_cbe_c_identifier,  char llvm_cbe_t_slot,  char llvm_cbe_d_rate,  char llvm_cbe_tx_power_lvl, signed long long llvm_cbe_expiry_time,  char *llvm_cbe_mac_frame, bool *llvm_cbe_medium_state) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
   char llvm_cbe_tmp__1;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
   char llvm_cbe_tmp__2;    /* Address-exposed local */
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
  unsigned char llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @send_frame\n");
if (AESL_DEBUG_TRACE)
printf("\n  store i7 %%d_rate, i7* %%1, align  for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_20_count);
  *(&llvm_cbe_tmp__1) = ((llvm_cbe_d_rate) & 127ull);
if (AESL_DEBUG_TRACE)
printf("\nd_rate = 0x%X\n", llvm_cbe_d_rate);
if (AESL_DEBUG_TRACE)
printf("\n  store i4 %%tx_power_lvl, i4* %%2, align  for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_28_count);
  *(&llvm_cbe_tmp__2) = ((llvm_cbe_tx_power_lvl) & 15ull);
if (AESL_DEBUG_TRACE)
printf("\ntx_power_lvl = 0x%X\n", llvm_cbe_tx_power_lvl);
if (AESL_DEBUG_TRACE)
printf("\n  call void @AESL_WRAP_ma_unitdatax_request(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i8* %%data, i4 zeroext %%up, i1 zeroext %%s_class, %%struct.channel_identifier* byval %%c_identifier, i2 zeroext %%t_slot, i7 zeroext %%d_rate, i4 zeroext %%tx_power_lvl, i64 %%expiry_time, i1* %%medium_state) nounwind, !dbg !6 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_39_count);
  AESL_WRAP_ma_unitdatax_request(llvm_cbe_source_addr, llvm_cbe_dest_addr, ( char *)llvm_cbe_data, llvm_cbe_up, llvm_cbe_s_class, llvm_cbe_c_identifier, llvm_cbe_t_slot, llvm_cbe_d_rate, llvm_cbe_tx_power_lvl, llvm_cbe_expiry_time, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument up = 0x%X",llvm_cbe_up);
printf("\nArgument s_class = 0x%X",llvm_cbe_s_class);
printf("\nArgument t_slot = 0x%X",llvm_cbe_t_slot);
printf("\nArgument d_rate = 0x%X",llvm_cbe_d_rate);
printf("\nArgument tx_power_lvl = 0x%X",llvm_cbe_tx_power_lvl);
printf("\nArgument expiry_time = 0x%I64X",llvm_cbe_expiry_time);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call zeroext i4 @enqueue_dequeue_frame(i2 zeroext 1, i2 zeroext -1, i8* %%mac_frame, i7* %%1, i4* %%2) nounwind, !dbg !8 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_40_count);
  enqueue_dequeue_frame(((unsigned char )1), ((unsigned char )-1), ( char *)llvm_cbe_mac_frame, ( char *)(&llvm_cbe_tmp__1), ( char *)(&llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",((unsigned char )1));
printf("\nArgument  = 0x%X",((unsigned char )-1));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @send_frame}\n");
  return;
}


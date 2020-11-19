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
void send_frame(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char *llvm_cbe_data,  char llvm_cbe_up, bool llvm_cbe_s_class, l_struct_OC_channel_identifier llvm_cbe_c_identifier,  char llvm_cbe_t_slot,  char llvm_cbe_d_rate,  char llvm_cbe_tx_power_lvl, signed long long llvm_cbe_expiry_time,  char *llvm_cbe_mac_frame, bool *llvm_cbe_medium_state,  char *llvm_cbe_current_txop_holder,  char *llvm_cbe_received_frame);
signed int ma_unitdatax_request();
void initial_edca_process(bool *,  char *,  char *);
signed int phy_txstart_confirm();
signed int phy_data_confirm();
signed int phy_txend_confirm();


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

void send_frame(l_struct_OC_mac48 llvm_cbe_source_addr, l_struct_OC_mac48 llvm_cbe_dest_addr,  char *llvm_cbe_data,  char llvm_cbe_up, bool llvm_cbe_s_class, l_struct_OC_channel_identifier llvm_cbe_c_identifier,  char llvm_cbe_t_slot,  char llvm_cbe_d_rate,  char llvm_cbe_tx_power_lvl, signed long long llvm_cbe_expiry_time,  char *llvm_cbe_mac_frame, bool *llvm_cbe_medium_state,  char *llvm_cbe_current_txop_holder,  char *llvm_cbe_received_frame) {
  static  unsigned long long aesl_llvm_cbe_data_0_count = 0;
   char llvm_cbe_data_0;    /* Address-exposed local */
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
  unsigned int llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  unsigned int llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  unsigned char llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @send_frame\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = zext i4 %%up to i32, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__1 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_up&15U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__1);
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = zext i1 %%s_class to i32, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(bool )llvm_cbe_s_class&1U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = zext i2 %%t_slot to i32, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_41_count);
  llvm_cbe_tmp__3 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_t_slot&3U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = zext i7 %%d_rate to i32, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__4 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_d_rate&127U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = zext i4 %%tx_power_lvl to i32, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(unsigned char )llvm_cbe_tx_power_lvl&15U);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = call i32 bitcast (i32 (...)* @ma_unitdatax_request to i32 (%%struct.mac48*, %%struct.mac48*, i8*, i32, i32, %%struct.channel_identifier*, i32, i32, i32, i64, i1*)*)(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i8* %%data, i32 %%1, i32 %%2, %%struct.channel_identifier* byval %%c_identifier, i32 %%3, i32 %%4, i32 %%5, i64 %%expiry_time, i1* %%medium_state) nounwind, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_44_count);
  ma_unitdatax_request(llvm_cbe_source_addr, llvm_cbe_dest_addr, ( char *)llvm_cbe_data, llvm_cbe_tmp__1, llvm_cbe_tmp__2, llvm_cbe_c_identifier, llvm_cbe_tmp__3, llvm_cbe_tmp__4, llvm_cbe_tmp__5, llvm_cbe_expiry_time, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__1);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__2);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__4);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__5);
printf("\nArgument expiry_time = 0x%I64X",llvm_cbe_expiry_time);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__6);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = call i32 bitcast (i32 (...)* @ma_unitdatax_request to i32 (%%struct.mac48*, %%struct.mac48*, i8*, i32, i32, %%struct.channel_identifier*, i32, i32, i32, i64, i1*)*)(%%struct.mac48* byval %%source_addr, %%struct.mac48* byval %%dest_addr, i8* %%data, i32 %%1, i32 %%2, %%struct.channel_identifier* byval %%c_identifier, i32 %%3, i32 %%4, i32 %%5, i64 %%expiry_time, i1* %%medium_state) nounwind, !dbg !7 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_45_count);
  ma_unitdatax_request(llvm_cbe_source_addr, llvm_cbe_dest_addr, ( char *)llvm_cbe_data, llvm_cbe_tmp__1, llvm_cbe_tmp__2, llvm_cbe_c_identifier, llvm_cbe_tmp__3, llvm_cbe_tmp__4, llvm_cbe_tmp__5, llvm_cbe_expiry_time, (bool *)llvm_cbe_medium_state);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__1);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__2);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__3);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__4);
printf("\nArgument  = 0x%X",llvm_cbe_tmp__5);
printf("\nArgument expiry_time = 0x%I64X",llvm_cbe_expiry_time);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__7);
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @initial_edca_process(i1* %%medium_state, i3* %%current_txop_holder, i8* %%mac_frame) nounwind, !dbg !9 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_46_count);
  initial_edca_process((bool *)llvm_cbe_medium_state, ( char *)llvm_cbe_current_txop_holder, ( char *)llvm_cbe_mac_frame);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i8* %%mac_frame, align 1, !dbg !9 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_48_count);
  llvm_cbe_tmp__8 = (unsigned char )*llvm_cbe_mac_frame;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  store i8 %%8, i8* %%data_0, align 1, !dbg !9 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_55_count);
  *(&llvm_cbe_data_0) = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = call i32 bitcast (i32 (...)* @phy_txstart_confirm to i32 (i8*)*)(i8* %%data_0) nounwind, !dbg !10 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_56_count);
  phy_txstart_confirm(( char *)(&llvm_cbe_data_0));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__9);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__13;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__13:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 0, %%0 ], [ %%12, %%10  for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__11);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = call i32 bitcast (i32 (...)* @phy_data_confirm to i32 (i8*)*)(i8* %%mac_frame) nounwind, !dbg !9 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_61_count);
  phy_data_confirm(( char *)llvm_cbe_mac_frame);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = add nsw i32 %%storemerge1, 1, !dbg !11 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
  if (((llvm_cbe_tmp__11&4294967295U) == (100u&4294967295U))) {
    goto llvm_cbe_tmp__14;
  } else {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe_tmp__13;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__14:
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = call i32 bitcast (i32 (...)* @phy_txend_confirm to i32 (i1*, i3*, i8*)*)(i1* %%medium_state, i3* %%current_txop_holder, i8* %%mac_frame) nounwind, !dbg !9 for 0x%I64xth hint within @send_frame  --> \n", ++aesl_llvm_cbe_67_count);
  phy_txend_confirm((bool *)llvm_cbe_medium_state, ( char *)llvm_cbe_current_txop_holder, ( char *)llvm_cbe_mac_frame);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__12);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @send_frame}\n");
  return;
}


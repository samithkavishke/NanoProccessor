/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                         */
/*  \   \        Copyright (c) 2003-2013 Xilinx, Inc.                 */
/*  /   /        All Right Reserved.                                  */
/* /---/   /\                                                         */
/* \   \  /  \                                                        */
/*  \___\/\___\                                                       */
/**********************************************************************/


#include "iki.h"
#include <string.h>
#include <math.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
typedef void (*funcp)(char *, char *);
extern int main(int, char**);
extern void execute_2(char*, char *);
extern void execute_3(char*, char *);
extern void execute_4(char*, char *);
extern void execute_5(char*, char *);
extern void execute_6(char*, char *);
extern void execute_7(char*, char *);
extern void execute_8(char*, char *);
extern void execute_9(char*, char *);
extern void execute_471(char*, char *);
extern void execute_472(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_18(char*, char *);
extern void execute_475(char*, char *);
extern void execute_476(char*, char *);
extern void execute_477(char*, char *);
extern void execute_487(char*, char *);
extern void execute_488(char*, char *);
extern void execute_489(char*, char *);
extern void execute_27(char*, char *);
extern void execute_490(char*, char *);
extern void execute_713(char*, char *);
extern void execute_715(char*, char *);
extern void execute_717(char*, char *);
extern void execute_719(char*, char *);
extern void execute_721(char*, char *);
extern void execute_723(char*, char *);
extern void execute_725(char*, char *);
extern void execute_727(char*, char *);
extern void execute_728(char*, char *);
extern void execute_528(char*, char *);
extern void execute_529(char*, char *);
extern void execute_530(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_533(char*, char *);
extern void execute_534(char*, char *);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_65(char*, char *);
extern void execute_601(char*, char *);
extern void execute_602(char*, char *);
extern void execute_600(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_109(char*, char *);
extern void execute_612(char*, char *);
extern void execute_613(char*, char *);
extern void execute_614(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_615(char*, char *);
extern void execute_616(char*, char *);
extern void execute_617(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_310(char*, char *);
extern void execute_782(char*, char *);
extern void execute_783(char*, char *);
extern void execute_784(char*, char *);
extern void execute_785(char*, char *);
extern void execute_786(char*, char *);
extern void execute_787(char*, char *);
extern void execute_788(char*, char *);
extern void execute_789(char*, char *);
extern void execute_781(char*, char *);
extern void vlog_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_32(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_33(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_34(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_35(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_36(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_37(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_38(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_39(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_40(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_41(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_42(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_75(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_677(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_678(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_679(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_680(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_681(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_682(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_683(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_684(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_285(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_290(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_295(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_305(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_310(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_315(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_320(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_325(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_330(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_340(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_345(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_350(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_355(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_360(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_365(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_370(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_375(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_380(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_385(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_390(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_395(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_400(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_410(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_415(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_420(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_425(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_430(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_435(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_666(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_671(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_676(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_691(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_706(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_742(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_747(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_752(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_757(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_778(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_783(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_788(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_793(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_798(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_803(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_808(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_813(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[158] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_471, (funcp)execute_472, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_18, (funcp)execute_475, (funcp)execute_476, (funcp)execute_477, (funcp)execute_487, (funcp)execute_488, (funcp)execute_489, (funcp)execute_27, (funcp)execute_490, (funcp)execute_713, (funcp)execute_715, (funcp)execute_717, (funcp)execute_719, (funcp)execute_721, (funcp)execute_723, (funcp)execute_725, (funcp)execute_727, (funcp)execute_728, (funcp)execute_528, (funcp)execute_529, (funcp)execute_530, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_533, (funcp)execute_534, (funcp)execute_535, (funcp)execute_536, (funcp)execute_65, (funcp)execute_601, (funcp)execute_602, (funcp)execute_600, (funcp)execute_68, (funcp)execute_69, (funcp)execute_73, (funcp)execute_74, (funcp)execute_107, (funcp)execute_108, (funcp)execute_109, (funcp)execute_612, (funcp)execute_613, (funcp)execute_614, (funcp)execute_111, (funcp)execute_112, (funcp)execute_113, (funcp)execute_615, (funcp)execute_616, (funcp)execute_617, (funcp)execute_297, (funcp)execute_298, (funcp)execute_310, (funcp)execute_782, (funcp)execute_783, (funcp)execute_784, (funcp)execute_785, (funcp)execute_786, (funcp)execute_787, (funcp)execute_788, (funcp)execute_789, (funcp)execute_781, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_75, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_102, (funcp)transaction_677, (funcp)transaction_678, (funcp)transaction_679, (funcp)transaction_680, (funcp)transaction_681, (funcp)transaction_682, (funcp)transaction_683, (funcp)transaction_684, (funcp)transaction_285, (funcp)transaction_290, (funcp)transaction_295, (funcp)transaction_300, (funcp)transaction_305, (funcp)transaction_310, (funcp)transaction_315, (funcp)transaction_320, (funcp)transaction_325, (funcp)transaction_330, (funcp)transaction_335, (funcp)transaction_340, (funcp)transaction_345, (funcp)transaction_350, (funcp)transaction_355, (funcp)transaction_360, (funcp)transaction_365, (funcp)transaction_370, (funcp)transaction_375, (funcp)transaction_380, (funcp)transaction_385, (funcp)transaction_390, (funcp)transaction_395, (funcp)transaction_400, (funcp)transaction_405, (funcp)transaction_410, (funcp)transaction_415, (funcp)transaction_420, (funcp)transaction_425, (funcp)transaction_430, (funcp)transaction_435, (funcp)transaction_440, (funcp)transaction_454, (funcp)transaction_666, (funcp)transaction_671, (funcp)transaction_676, (funcp)transaction_691, (funcp)transaction_696, (funcp)transaction_701, (funcp)transaction_706, (funcp)transaction_742, (funcp)transaction_747, (funcp)transaction_752, (funcp)transaction_757, (funcp)transaction_778, (funcp)transaction_783, (funcp)transaction_788, (funcp)transaction_793, (funcp)transaction_798, (funcp)transaction_803, (funcp)transaction_808, (funcp)transaction_813};
const int NumRelocateId= 158;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/System_sim_func_impl/xsim.reloc",  (void **)funcTab, 158);
	iki_vhdl_file_variable_register(dp + 163776);
	iki_vhdl_file_variable_register(dp + 163832);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/System_sim_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/System_sim_func_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 168808, dp + 169528, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 168864, dp + 169976, 0, 0, 0, 0, 1, 1);
	iki_execute_processes();

	// Schedule resolution functions for the multiply driven Verilog nets that have strength
	// Schedule transaction functions for the singly driven Verilog nets that have strength

}
#include "iki_bridge.h"
void relocate(char *);

void sensitize(char *);

void simulate(char *);

extern SYSTEMCLIB_IMP_DLLSPEC void local_register_implicit_channel(int, char*);
extern void implicit_HDL_SCinstatiate();

extern SYSTEMCLIB_IMP_DLLSPEC int xsim_argc_copy ;
extern SYSTEMCLIB_IMP_DLLSPEC char** xsim_argv_copy ;

int main(int argc, char **argv)
{
    iki_heap_initialize("ms", "isimmm", 0, 2147483648) ;
    iki_set_sv_type_file_path_name("xsim.dir/System_sim_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/System_sim_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/System_sim_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

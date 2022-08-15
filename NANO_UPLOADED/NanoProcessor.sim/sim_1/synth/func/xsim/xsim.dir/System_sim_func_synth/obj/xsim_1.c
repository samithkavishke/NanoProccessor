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
extern void execute_473(char*, char *);
extern void execute_474(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_18(char*, char *);
extern void execute_477(char*, char *);
extern void execute_478(char*, char *);
extern void execute_479(char*, char *);
extern void execute_489(char*, char *);
extern void execute_490(char*, char *);
extern void execute_491(char*, char *);
extern void execute_27(char*, char *);
extern void execute_492(char*, char *);
extern void execute_715(char*, char *);
extern void execute_717(char*, char *);
extern void execute_719(char*, char *);
extern void execute_721(char*, char *);
extern void execute_723(char*, char *);
extern void execute_725(char*, char *);
extern void execute_727(char*, char *);
extern void execute_729(char*, char *);
extern void execute_730(char*, char *);
extern void execute_530(char*, char *);
extern void execute_531(char*, char *);
extern void execute_532(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_535(char*, char *);
extern void execute_536(char*, char *);
extern void execute_537(char*, char *);
extern void execute_538(char*, char *);
extern void execute_65(char*, char *);
extern void execute_603(char*, char *);
extern void execute_604(char*, char *);
extern void execute_602(char*, char *);
extern void execute_68(char*, char *);
extern void execute_69(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_107(char*, char *);
extern void execute_108(char*, char *);
extern void execute_109(char*, char *);
extern void execute_614(char*, char *);
extern void execute_615(char*, char *);
extern void execute_616(char*, char *);
extern void execute_111(char*, char *);
extern void execute_112(char*, char *);
extern void execute_113(char*, char *);
extern void execute_617(char*, char *);
extern void execute_618(char*, char *);
extern void execute_619(char*, char *);
extern void execute_297(char*, char *);
extern void execute_298(char*, char *);
extern void execute_310(char*, char *);
extern void execute_784(char*, char *);
extern void execute_785(char*, char *);
extern void execute_786(char*, char *);
extern void execute_787(char*, char *);
extern void execute_788(char*, char *);
extern void execute_789(char*, char *);
extern void execute_790(char*, char *);
extern void execute_791(char*, char *);
extern void execute_783(char*, char *);
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
extern void transaction_44(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_80(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_81(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_82(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_83(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_84(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_85(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_86(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_87(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_88(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_89(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_90(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_92(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_93(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_94(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_95(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_97(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_98(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_99(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_100(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_102(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_103(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_104(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_105(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_118(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_119(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_120(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_696(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_697(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_698(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_699(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_700(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_701(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_702(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_703(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_304(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_309(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_319(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_324(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_329(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_334(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_339(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_344(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_354(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_359(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_364(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_369(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_374(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_379(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_389(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_394(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_399(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_409(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_414(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_419(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_424(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_429(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_439(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_444(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_449(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_459(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_473(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_685(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_690(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_695(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_710(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_715(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_720(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_725(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_761(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_766(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_771(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_776(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_797(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_802(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_807(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_812(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_817(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_822(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_827(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_832(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[177] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_473, (funcp)execute_474, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_18, (funcp)execute_477, (funcp)execute_478, (funcp)execute_479, (funcp)execute_489, (funcp)execute_490, (funcp)execute_491, (funcp)execute_27, (funcp)execute_492, (funcp)execute_715, (funcp)execute_717, (funcp)execute_719, (funcp)execute_721, (funcp)execute_723, (funcp)execute_725, (funcp)execute_727, (funcp)execute_729, (funcp)execute_730, (funcp)execute_530, (funcp)execute_531, (funcp)execute_532, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_535, (funcp)execute_536, (funcp)execute_537, (funcp)execute_538, (funcp)execute_65, (funcp)execute_603, (funcp)execute_604, (funcp)execute_602, (funcp)execute_68, (funcp)execute_69, (funcp)execute_73, (funcp)execute_74, (funcp)execute_107, (funcp)execute_108, (funcp)execute_109, (funcp)execute_614, (funcp)execute_615, (funcp)execute_616, (funcp)execute_111, (funcp)execute_112, (funcp)execute_113, (funcp)execute_617, (funcp)execute_618, (funcp)execute_619, (funcp)execute_297, (funcp)execute_298, (funcp)execute_310, (funcp)execute_784, (funcp)execute_785, (funcp)execute_786, (funcp)execute_787, (funcp)execute_788, (funcp)execute_789, (funcp)execute_790, (funcp)execute_791, (funcp)execute_783, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_80, (funcp)transaction_81, (funcp)transaction_82, (funcp)transaction_83, (funcp)transaction_84, (funcp)transaction_85, (funcp)transaction_86, (funcp)transaction_87, (funcp)transaction_88, (funcp)transaction_89, (funcp)transaction_90, (funcp)transaction_91, (funcp)transaction_92, (funcp)transaction_93, (funcp)transaction_94, (funcp)transaction_95, (funcp)transaction_96, (funcp)transaction_97, (funcp)transaction_98, (funcp)transaction_99, (funcp)transaction_100, (funcp)transaction_101, (funcp)transaction_102, (funcp)transaction_103, (funcp)transaction_104, (funcp)transaction_105, (funcp)transaction_106, (funcp)transaction_118, (funcp)transaction_119, (funcp)transaction_120, (funcp)transaction_696, (funcp)transaction_697, (funcp)transaction_698, (funcp)transaction_699, (funcp)transaction_700, (funcp)transaction_701, (funcp)transaction_702, (funcp)transaction_703, (funcp)transaction_304, (funcp)transaction_309, (funcp)transaction_314, (funcp)transaction_319, (funcp)transaction_324, (funcp)transaction_329, (funcp)transaction_334, (funcp)transaction_339, (funcp)transaction_344, (funcp)transaction_349, (funcp)transaction_354, (funcp)transaction_359, (funcp)transaction_364, (funcp)transaction_369, (funcp)transaction_374, (funcp)transaction_379, (funcp)transaction_384, (funcp)transaction_389, (funcp)transaction_394, (funcp)transaction_399, (funcp)transaction_404, (funcp)transaction_409, (funcp)transaction_414, (funcp)transaction_419, (funcp)transaction_424, (funcp)transaction_429, (funcp)transaction_434, (funcp)transaction_439, (funcp)transaction_444, (funcp)transaction_449, (funcp)transaction_454, (funcp)transaction_459, (funcp)transaction_473, (funcp)transaction_685, (funcp)transaction_690, (funcp)transaction_695, (funcp)transaction_710, (funcp)transaction_715, (funcp)transaction_720, (funcp)transaction_725, (funcp)transaction_761, (funcp)transaction_766, (funcp)transaction_771, (funcp)transaction_776, (funcp)transaction_797, (funcp)transaction_802, (funcp)transaction_807, (funcp)transaction_812, (funcp)transaction_817, (funcp)transaction_822, (funcp)transaction_827, (funcp)transaction_832};
const int NumRelocateId= 177;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/System_sim_func_synth/xsim.reloc",  (void **)funcTab, 177);
	iki_vhdl_file_variable_register(dp + 169608);
	iki_vhdl_file_variable_register(dp + 169664);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/System_sim_func_synth/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/System_sim_func_synth/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 174696, dp + 175416, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 174752, dp + 175808, 0, 0, 0, 0, 1, 1);
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
    iki_set_sv_type_file_path_name("xsim.dir/System_sim_func_synth/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/System_sim_func_synth/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/System_sim_func_synth/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

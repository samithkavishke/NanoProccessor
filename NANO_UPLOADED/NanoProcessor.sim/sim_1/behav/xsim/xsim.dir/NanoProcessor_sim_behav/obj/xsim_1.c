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
extern void execute_376(char*, char *);
extern void execute_377(char*, char *);
extern void execute_67(char*, char *);
extern void execute_68(char*, char *);
extern void execute_286(char*, char *);
extern void execute_375(char*, char *);
extern void execute_16(char*, char *);
extern void execute_57(char*, char *);
extern void execute_19(char*, char *);
extern void execute_21(char*, char *);
extern void execute_54(char*, char *);
extern void execute_34(char*, char *);
extern void execute_35(char*, char *);
extern void execute_29(char*, char *);
extern void execute_30(char*, char *);
extern void execute_56(char*, char *);
extern void execute_62(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_72(char*, char *);
extern void execute_73(char*, char *);
extern void execute_74(char*, char *);
extern void execute_75(char*, char *);
extern void execute_76(char*, char *);
extern void execute_82(char*, char *);
extern void execute_83(char*, char *);
extern void execute_84(char*, char *);
extern void execute_85(char*, char *);
extern void execute_86(char*, char *);
extern void execute_87(char*, char *);
extern void execute_88(char*, char *);
extern void execute_89(char*, char *);
extern void execute_90(char*, char *);
extern void execute_91(char*, char *);
extern void execute_92(char*, char *);
extern void execute_93(char*, char *);
extern void execute_94(char*, char *);
extern void execute_95(char*, char *);
extern void execute_96(char*, char *);
extern void execute_97(char*, char *);
extern void execute_98(char*, char *);
extern void execute_99(char*, char *);
extern void execute_100(char*, char *);
extern void execute_78(char*, char *);
extern void execute_79(char*, char *);
extern void execute_80(char*, char *);
extern void execute_81(char*, char *);
extern void execute_200(char*, char *);
extern void execute_201(char*, char *);
extern void execute_103(char*, char *);
extern void execute_193(char*, char *);
extern void execute_194(char*, char *);
extern void execute_195(char*, char *);
extern void execute_196(char*, char *);
extern void execute_197(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
extern void execute_324(char*, char *);
extern void execute_325(char*, char *);
extern void execute_326(char*, char *);
extern void execute_327(char*, char *);
extern void execute_328(char*, char *);
extern void execute_329(char*, char *);
extern void execute_330(char*, char *);
extern void execute_331(char*, char *);
extern void execute_332(char*, char *);
extern void execute_352(char*, char *);
extern void execute_374(char*, char *);
extern void transaction_0(char*, char*, unsigned, unsigned, unsigned);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_11(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_12(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_13(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_14(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_15(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_22(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_29(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_43(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_45(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_76(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_77(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_78(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_79(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_91(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_96(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_101(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_106(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_111(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_116(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_121(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_126(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_138(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_143(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_148(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_153(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_158(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_163(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_168(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[99] = {(funcp)execute_376, (funcp)execute_377, (funcp)execute_67, (funcp)execute_68, (funcp)execute_286, (funcp)execute_375, (funcp)execute_16, (funcp)execute_57, (funcp)execute_19, (funcp)execute_21, (funcp)execute_54, (funcp)execute_34, (funcp)execute_35, (funcp)execute_29, (funcp)execute_30, (funcp)execute_56, (funcp)execute_62, (funcp)execute_65, (funcp)execute_66, (funcp)execute_72, (funcp)execute_73, (funcp)execute_74, (funcp)execute_75, (funcp)execute_76, (funcp)execute_82, (funcp)execute_83, (funcp)execute_84, (funcp)execute_85, (funcp)execute_86, (funcp)execute_87, (funcp)execute_88, (funcp)execute_89, (funcp)execute_90, (funcp)execute_91, (funcp)execute_92, (funcp)execute_93, (funcp)execute_94, (funcp)execute_95, (funcp)execute_96, (funcp)execute_97, (funcp)execute_98, (funcp)execute_99, (funcp)execute_100, (funcp)execute_78, (funcp)execute_79, (funcp)execute_80, (funcp)execute_81, (funcp)execute_200, (funcp)execute_201, (funcp)execute_103, (funcp)execute_193, (funcp)execute_194, (funcp)execute_195, (funcp)execute_196, (funcp)execute_197, (funcp)execute_198, (funcp)execute_199, (funcp)execute_324, (funcp)execute_325, (funcp)execute_326, (funcp)execute_327, (funcp)execute_328, (funcp)execute_329, (funcp)execute_330, (funcp)execute_331, (funcp)execute_332, (funcp)execute_352, (funcp)execute_374, (funcp)transaction_0, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_11, (funcp)transaction_12, (funcp)transaction_13, (funcp)transaction_14, (funcp)transaction_15, (funcp)transaction_22, (funcp)transaction_29, (funcp)transaction_43, (funcp)transaction_45, (funcp)transaction_76, (funcp)transaction_77, (funcp)transaction_78, (funcp)transaction_79, (funcp)transaction_91, (funcp)transaction_96, (funcp)transaction_101, (funcp)transaction_106, (funcp)transaction_111, (funcp)transaction_116, (funcp)transaction_121, (funcp)transaction_126, (funcp)transaction_138, (funcp)transaction_143, (funcp)transaction_148, (funcp)transaction_153, (funcp)transaction_158, (funcp)transaction_163, (funcp)transaction_168, (funcp)transaction_173};
const int NumRelocateId= 99;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/NanoProcessor_sim_behav/xsim.reloc",  (void **)funcTab, 99);
	iki_vhdl_file_variable_register(dp + 55136);
	iki_vhdl_file_variable_register(dp + 55192);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/NanoProcessor_sim_behav/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/NanoProcessor_sim_behav/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net
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
    iki_set_sv_type_file_path_name("xsim.dir/NanoProcessor_sim_behav/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/NanoProcessor_sim_behav/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/NanoProcessor_sim_behav/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

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
extern void execute_370(char*, char *);
extern void vlog_const_rhs_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_373(char*, char *);
extern void execute_374(char*, char *);
extern void execute_375(char*, char *);
extern void execute_19(char*, char *);
extern void execute_376(char*, char *);
extern void execute_21(char*, char *);
extern void execute_377(char*, char *);
extern void execute_378(char*, char *);
extern void execute_379(char*, char *);
extern void execute_25(char*, char *);
extern void execute_26(char*, char *);
extern void execute_27(char*, char *);
extern void execute_380(char*, char *);
extern void execute_381(char*, char *);
extern void execute_382(char*, char *);
extern void execute_32(char*, char *);
extern void execute_33(char*, char *);
extern void vlog_simple_process_execute_0_fast_no_reg_no_agg(char*, char*, char*);
extern void execute_46(char*, char *);
extern void execute_389(char*, char *);
extern void execute_390(char*, char *);
extern void execute_391(char*, char *);
extern void execute_392(char*, char *);
extern void execute_393(char*, char *);
extern void execute_394(char*, char *);
extern void execute_395(char*, char *);
extern void execute_396(char*, char *);
extern void execute_388(char*, char *);
extern void execute_65(char*, char *);
extern void execute_66(char*, char *);
extern void execute_69(char*, char *);
extern void execute_70(char*, char *);
extern void execute_330(char*, char *);
extern void execute_637(char*, char *);
extern void execute_638(char*, char *);
extern void execute_639(char*, char *);
extern void execute_640(char*, char *);
extern void execute_636(char*, char *);
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
extern void transaction_46(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_47(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_48(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_49(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_50(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_51(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_53(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_54(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_55(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_74(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_109(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_173(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_273(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_340(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_346(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_352(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_358(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_371(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_392(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_404(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_416(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_428(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_434(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_446(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_466(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_471(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_481(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_486(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_491(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_501(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_506(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_511(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_527(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_532(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_537(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_543(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_550(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_562(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_568(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[105] = {(funcp)execute_2, (funcp)execute_3, (funcp)execute_4, (funcp)execute_5, (funcp)execute_6, (funcp)execute_7, (funcp)execute_8, (funcp)execute_9, (funcp)execute_370, (funcp)vlog_const_rhs_process_execute_0_fast_no_reg_no_agg, (funcp)execute_373, (funcp)execute_374, (funcp)execute_375, (funcp)execute_19, (funcp)execute_376, (funcp)execute_21, (funcp)execute_377, (funcp)execute_378, (funcp)execute_379, (funcp)execute_25, (funcp)execute_26, (funcp)execute_27, (funcp)execute_380, (funcp)execute_381, (funcp)execute_382, (funcp)execute_32, (funcp)execute_33, (funcp)vlog_simple_process_execute_0_fast_no_reg_no_agg, (funcp)execute_46, (funcp)execute_389, (funcp)execute_390, (funcp)execute_391, (funcp)execute_392, (funcp)execute_393, (funcp)execute_394, (funcp)execute_395, (funcp)execute_396, (funcp)execute_388, (funcp)execute_65, (funcp)execute_66, (funcp)execute_69, (funcp)execute_70, (funcp)execute_330, (funcp)execute_637, (funcp)execute_638, (funcp)execute_639, (funcp)execute_640, (funcp)execute_636, (funcp)vlog_transfunc_eventcallback, (funcp)transaction_32, (funcp)transaction_33, (funcp)transaction_34, (funcp)transaction_35, (funcp)transaction_36, (funcp)transaction_37, (funcp)transaction_38, (funcp)transaction_39, (funcp)transaction_40, (funcp)transaction_41, (funcp)transaction_42, (funcp)transaction_43, (funcp)transaction_44, (funcp)transaction_45, (funcp)transaction_46, (funcp)transaction_47, (funcp)transaction_48, (funcp)transaction_49, (funcp)transaction_50, (funcp)transaction_51, (funcp)transaction_52, (funcp)transaction_53, (funcp)transaction_54, (funcp)transaction_55, (funcp)transaction_74, (funcp)transaction_109, (funcp)transaction_173, (funcp)transaction_273, (funcp)transaction_340, (funcp)transaction_346, (funcp)transaction_352, (funcp)transaction_358, (funcp)transaction_371, (funcp)transaction_392, (funcp)transaction_404, (funcp)transaction_416, (funcp)transaction_428, (funcp)transaction_434, (funcp)transaction_440, (funcp)transaction_446, (funcp)transaction_461, (funcp)transaction_466, (funcp)transaction_471, (funcp)transaction_481, (funcp)transaction_486, (funcp)transaction_491, (funcp)transaction_501, (funcp)transaction_506, (funcp)transaction_511, (funcp)transaction_527, (funcp)transaction_532, (funcp)transaction_537, (funcp)transaction_543, (funcp)transaction_550, (funcp)transaction_562, (funcp)transaction_568};
const int NumRelocateId= 105;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/NanoProcessorsim_func_impl/xsim.reloc",  (void **)funcTab, 105);
	iki_vhdl_file_variable_register(dp + 110416);
	iki_vhdl_file_variable_register(dp + 110472);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/NanoProcessorsim_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/NanoProcessorsim_func_impl/xsim.reloc");
	// Initialize Verilog nets in mixed simulation, for the cases when the value at time 0 should be propagated from the mixed language Vhdl net

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 115768, dp + 116472, 0, 0, 0, 0, 1, 1);

	iki_vlog_schedule_transaction_signal_fast_vhdl_value_time_0(dp + 115824, dp + 117816, 0, 0, 0, 0, 1, 1);
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
    iki_set_sv_type_file_path_name("xsim.dir/NanoProcessorsim_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/NanoProcessorsim_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/NanoProcessorsim_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

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
extern void execute_1100(char*, char *);
extern void execute_1101(char*, char *);
extern void execute_1102(char*, char *);
extern void execute_1103(char*, char *);
extern void execute_1104(char*, char *);
extern void execute_1105(char*, char *);
extern void execute_1106(char*, char *);
extern void execute_1107(char*, char *);
extern void execute_16(char*, char *);
extern void execute_18(char*, char *);
extern void execute_19(char*, char *);
extern void execute_170(char*, char *);
extern void execute_171(char*, char *);
extern void execute_176(char*, char *);
extern void execute_181(char*, char *);
extern void execute_184(char*, char *);
extern void execute_189(char*, char *);
extern void execute_192(char*, char *);
extern void execute_196(char*, char *);
extern void execute_198(char*, char *);
extern void execute_199(char*, char *);
extern void execute_200(char*, char *);
extern void execute_208(char*, char *);
extern void execute_212(char*, char *);
extern void execute_216(char*, char *);
extern void execute_253(char*, char *);
extern void execute_272(char*, char *);
extern void execute_276(char*, char *);
extern void execute_331(char*, char *);
extern void execute_394(char*, char *);
extern void execute_398(char*, char *);
extern void execute_402(char*, char *);
extern void execute_420(char*, char *);
extern void execute_423(char*, char *);
extern void execute_427(char*, char *);
extern void execute_465(char*, char *);
extern void execute_469(char*, char *);
extern void execute_474(char*, char *);
extern void execute_478(char*, char *);
extern void execute_482(char*, char *);
extern void execute_485(char*, char *);
extern void execute_491(char*, char *);
extern void execute_508(char*, char *);
extern void execute_512(char*, char *);
extern void execute_571(char*, char *);
extern void execute_578(char*, char *);
extern void execute_581(char*, char *);
extern void execute_671(char*, char *);
extern void execute_676(char*, char *);
extern void execute_679(char*, char *);
extern void execute_682(char*, char *);
extern void execute_696(char*, char *);
extern void execute_700(char*, char *);
extern void execute_722(char*, char *);
extern void execute_729(char*, char *);
extern void execute_738(char*, char *);
extern void execute_742(char*, char *);
extern void execute_750(char*, char *);
extern void execute_760(char*, char *);
extern void execute_763(char*, char *);
extern void execute_772(char*, char *);
extern void execute_778(char*, char *);
extern void execute_781(char*, char *);
extern void execute_784(char*, char *);
extern void execute_789(char*, char *);
extern void execute_812(char*, char *);
extern void execute_944(char*, char *);
extern void execute_949(char*, char *);
extern void execute_953(char*, char *);
extern void execute_956(char*, char *);
extern void execute_959(char*, char *);
extern void execute_964(char*, char *);
extern void execute_992(char*, char *);
extern void execute_996(char*, char *);
extern void execute_1000(char*, char *);
extern void execute_1010(char*, char *);
extern void execute_1015(char*, char *);
extern void execute_1029(char*, char *);
extern void execute_1038(char*, char *);
extern void execute_1039(char*, char *);
extern void execute_1040(char*, char *);
extern void execute_1041(char*, char *);
extern void execute_1042(char*, char *);
extern void execute_1043(char*, char *);
extern void execute_1044(char*, char *);
extern void execute_1045(char*, char *);
extern void execute_1046(char*, char *);
extern void execute_1048(char*, char *);
extern void execute_1050(char*, char *);
extern void execute_1054(char*, char *);
extern void execute_1058(char*, char *);
extern void execute_1068(char*, char *);
extern void execute_1072(char*, char *);
extern void execute_1075(char*, char *);
extern void execute_1078(char*, char *);
extern void execute_1085(char*, char *);
extern void execute_1089(char*, char *);
extern void execute_1095(char*, char *);
extern void vhdl_transfunc_eventcallback(char*, char*, unsigned, unsigned, unsigned, char *);
extern void transaction_52(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_258(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_265(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_272(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_279(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_286(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_293(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_300(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_307(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_314(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_321(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_328(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_335(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_342(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_349(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_356(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_363(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_370(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_377(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_384(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_391(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_398(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_405(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_412(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_419(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_426(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_433(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_440(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_447(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_454(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_461(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_468(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_475(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_482(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_489(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_496(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_503(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_510(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_517(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_524(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_531(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_538(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_545(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_552(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_559(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_566(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_573(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_580(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_587(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_594(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_601(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_608(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_615(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_622(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_629(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_636(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_643(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_650(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_665(char*, char*, unsigned, unsigned, unsigned);
extern void transaction_672(char*, char*, unsigned, unsigned, unsigned);
funcp funcTab[159] = {(funcp)execute_1100, (funcp)execute_1101, (funcp)execute_1102, (funcp)execute_1103, (funcp)execute_1104, (funcp)execute_1105, (funcp)execute_1106, (funcp)execute_1107, (funcp)execute_16, (funcp)execute_18, (funcp)execute_19, (funcp)execute_170, (funcp)execute_171, (funcp)execute_176, (funcp)execute_181, (funcp)execute_184, (funcp)execute_189, (funcp)execute_192, (funcp)execute_196, (funcp)execute_198, (funcp)execute_199, (funcp)execute_200, (funcp)execute_208, (funcp)execute_212, (funcp)execute_216, (funcp)execute_253, (funcp)execute_272, (funcp)execute_276, (funcp)execute_331, (funcp)execute_394, (funcp)execute_398, (funcp)execute_402, (funcp)execute_420, (funcp)execute_423, (funcp)execute_427, (funcp)execute_465, (funcp)execute_469, (funcp)execute_474, (funcp)execute_478, (funcp)execute_482, (funcp)execute_485, (funcp)execute_491, (funcp)execute_508, (funcp)execute_512, (funcp)execute_571, (funcp)execute_578, (funcp)execute_581, (funcp)execute_671, (funcp)execute_676, (funcp)execute_679, (funcp)execute_682, (funcp)execute_696, (funcp)execute_700, (funcp)execute_722, (funcp)execute_729, (funcp)execute_738, (funcp)execute_742, (funcp)execute_750, (funcp)execute_760, (funcp)execute_763, (funcp)execute_772, (funcp)execute_778, (funcp)execute_781, (funcp)execute_784, (funcp)execute_789, (funcp)execute_812, (funcp)execute_944, (funcp)execute_949, (funcp)execute_953, (funcp)execute_956, (funcp)execute_959, (funcp)execute_964, (funcp)execute_992, (funcp)execute_996, (funcp)execute_1000, (funcp)execute_1010, (funcp)execute_1015, (funcp)execute_1029, (funcp)execute_1038, (funcp)execute_1039, (funcp)execute_1040, (funcp)execute_1041, (funcp)execute_1042, (funcp)execute_1043, (funcp)execute_1044, (funcp)execute_1045, (funcp)execute_1046, (funcp)execute_1048, (funcp)execute_1050, (funcp)execute_1054, (funcp)execute_1058, (funcp)execute_1068, (funcp)execute_1072, (funcp)execute_1075, (funcp)execute_1078, (funcp)execute_1085, (funcp)execute_1089, (funcp)execute_1095, (funcp)vhdl_transfunc_eventcallback, (funcp)transaction_52, (funcp)transaction_258, (funcp)transaction_265, (funcp)transaction_272, (funcp)transaction_279, (funcp)transaction_286, (funcp)transaction_293, (funcp)transaction_300, (funcp)transaction_307, (funcp)transaction_314, (funcp)transaction_321, (funcp)transaction_328, (funcp)transaction_335, (funcp)transaction_342, (funcp)transaction_349, (funcp)transaction_356, (funcp)transaction_363, (funcp)transaction_370, (funcp)transaction_377, (funcp)transaction_384, (funcp)transaction_391, (funcp)transaction_398, (funcp)transaction_405, (funcp)transaction_412, (funcp)transaction_419, (funcp)transaction_426, (funcp)transaction_433, (funcp)transaction_440, (funcp)transaction_447, (funcp)transaction_454, (funcp)transaction_461, (funcp)transaction_468, (funcp)transaction_475, (funcp)transaction_482, (funcp)transaction_489, (funcp)transaction_496, (funcp)transaction_503, (funcp)transaction_510, (funcp)transaction_517, (funcp)transaction_524, (funcp)transaction_531, (funcp)transaction_538, (funcp)transaction_545, (funcp)transaction_552, (funcp)transaction_559, (funcp)transaction_566, (funcp)transaction_573, (funcp)transaction_580, (funcp)transaction_587, (funcp)transaction_594, (funcp)transaction_601, (funcp)transaction_608, (funcp)transaction_615, (funcp)transaction_622, (funcp)transaction_629, (funcp)transaction_636, (funcp)transaction_643, (funcp)transaction_650, (funcp)transaction_665, (funcp)transaction_672};
const int NumRelocateId= 159;

void relocate(char *dp)
{
	iki_relocate(dp, "xsim.dir/test_transmission_ethernet_func_impl/xsim.reloc",  (void **)funcTab, 159);
	iki_vhdl_file_variable_register(dp + 143328);
	iki_vhdl_file_variable_register(dp + 143384);


	/*Populate the transaction function pointer field in the whole net structure */
}

void sensitize(char *dp)
{
	iki_sensitize(dp, "xsim.dir/test_transmission_ethernet_func_impl/xsim.reloc");
}

void simulate(char *dp)
{
	iki_schedule_processes_at_time_zero(dp, "xsim.dir/test_transmission_ethernet_func_impl/xsim.reloc");
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
    iki_set_sv_type_file_path_name("xsim.dir/test_transmission_ethernet_func_impl/xsim.svtype");
    iki_set_crvs_dump_file_path_name("xsim.dir/test_transmission_ethernet_func_impl/xsim.crvsdump");
    void* design_handle = iki_create_design("xsim.dir/test_transmission_ethernet_func_impl/xsim.mem", (void *)relocate, (void *)sensitize, (void *)simulate, 0, isimBridge_getWdbWriter(), 0, argc, argv);
     iki_set_rc_trial_count(100);
    (void) design_handle;
    return iki_simulate_design();
}

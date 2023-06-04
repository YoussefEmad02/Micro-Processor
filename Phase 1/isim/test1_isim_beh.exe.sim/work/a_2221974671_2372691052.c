/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/ASU/Sophomore/Spring 2022/Computer Organization and Architecture CSE112/Labs/Phase1.1/test1.vhd";



static void work_a_2221974671_2372691052_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    int64 t7;
    int64 t8;

LAB0:    t1 = (t0 + 3432U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(88, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(90, ng0);
    t2 = (t0 + 4064);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    *((unsigned char *)t6) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(91, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t7 = *((int64 *)t3);
    t8 = (t7 / 2);
    t2 = (t0 + 3240);
    xsi_process_wait(t2, t8);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    goto LAB2;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

}

static void work_a_2221974671_2372691052_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    int64 t5;
    int64 t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;
    char *t11;
    unsigned char t12;
    unsigned int t13;

LAB0:    t1 = (t0 + 3680U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (3 * 1LL);
    t6 = (t4 - t5);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t6);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 7616);
    t7 = (t0 + 4128);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(104, ng0);
    t2 = (t0 + 7621);
    t7 = (t0 + 4192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(105, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 1);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t5);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 7653);
    t7 = (t0 + 4128);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(110, ng0);
    t2 = (t0 + 7658);
    t7 = (t0 + 4192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(111, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 1);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t5);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(115, ng0);
    t2 = (t0 + 7690);
    t7 = (t0 + 4320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 7695);
    t7 = (t0 + 4384);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 2);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t5);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(120, ng0);
    t2 = (t0 + 7700);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(121, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7705);
    t12 = 1;
    if (32U == 32U)
        goto LAB22;

LAB23:    t12 = 0;

LAB24:    if (t12 == 0)
        goto LAB20;

LAB21:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 7743);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(123, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7748);
    t12 = 1;
    if (32U == 32U)
        goto LAB30;

LAB31:    t12 = 0;

LAB32:    if (t12 == 0)
        goto LAB28;

LAB29:    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 1);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t5);

LAB38:    *((char **)t1) = &&LAB39;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t10 = (t0 + 7737);
    xsi_report(t10, 6U, (unsigned char)2);
    goto LAB21;

LAB22:    t13 = 0;

LAB25:    if (t13 < 32U)
        goto LAB26;
    else
        goto LAB24;

LAB26:    t8 = (t3 + t13);
    t9 = (t2 + t13);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB23;

LAB27:    t13 = (t13 + 1);
    goto LAB25;

LAB28:    t10 = (t0 + 7780);
    xsi_report(t10, 6U, (unsigned char)2);
    goto LAB29;

LAB30:    t13 = 0;

LAB33:    if (t13 < 32U)
        goto LAB34;
    else
        goto LAB32;

LAB34:    t8 = (t3 + t13);
    t9 = (t2 + t13);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB31;

LAB35:    t13 = (t13 + 1);
    goto LAB33;

LAB36:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 7786);
    t7 = (t0 + 4320);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(129, ng0);
    t2 = (t0 + 7791);
    t7 = (t0 + 4384);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(130, ng0);
    t2 = (t0 + 7796);
    t7 = (t0 + 4128);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 5U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(131, ng0);
    t2 = (t0 + 7801);
    t7 = (t0 + 4192);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t10 = (t9 + 56U);
    t11 = *((char **)t10);
    memcpy(t11, t2, 32U);
    xsi_driver_first_trans_fast(t7);
    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4256);
    t3 = (t2 + 56U);
    t7 = *((char **)t3);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(134, ng0);
    t2 = (t0 + 2448U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t5 = (t4 * 2);
    t2 = (t0 + 3488);
    xsi_process_wait(t2, t5);

LAB42:    *((char **)t1) = &&LAB43;
    goto LAB1;

LAB37:    goto LAB36;

LAB39:    goto LAB37;

LAB40:    xsi_set_current_line(136, ng0);
    t2 = (t0 + 7833);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(137, ng0);
    t2 = (t0 + 1992U);
    t3 = *((char **)t2);
    t2 = (t0 + 7838);
    t12 = 1;
    if (32U == 32U)
        goto LAB46;

LAB47:    t12 = 0;

LAB48:    if (t12 == 0)
        goto LAB44;

LAB45:    xsi_set_current_line(138, ng0);
    t2 = (t0 + 7876);
    xsi_report(t2, 5U, 0);
    xsi_set_current_line(139, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 7881);
    t12 = 1;
    if (32U == 32U)
        goto LAB54;

LAB55:    t12 = 0;

LAB56:    if (t12 == 0)
        goto LAB52;

LAB53:    xsi_set_current_line(141, ng0);
    t2 = (t0 + 7919);
    xsi_report(t2, 13U, 0);
    xsi_set_current_line(142, ng0);

LAB62:    *((char **)t1) = &&LAB63;
    goto LAB1;

LAB41:    goto LAB40;

LAB43:    goto LAB41;

LAB44:    t10 = (t0 + 7870);
    xsi_report(t10, 6U, (unsigned char)2);
    goto LAB45;

LAB46:    t13 = 0;

LAB49:    if (t13 < 32U)
        goto LAB50;
    else
        goto LAB48;

LAB50:    t8 = (t3 + t13);
    t9 = (t2 + t13);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB47;

LAB51:    t13 = (t13 + 1);
    goto LAB49;

LAB52:    t10 = (t0 + 7913);
    xsi_report(t10, 6U, (unsigned char)2);
    goto LAB53;

LAB54:    t13 = 0;

LAB57:    if (t13 < 32U)
        goto LAB58;
    else
        goto LAB56;

LAB58:    t8 = (t3 + t13);
    t9 = (t2 + t13);
    if (*((unsigned char *)t8) != *((unsigned char *)t9))
        goto LAB55;

LAB59:    t13 = (t13 + 1);
    goto LAB57;

LAB60:    goto LAB2;

LAB61:    goto LAB60;

LAB63:    goto LAB61;

}


extern void work_a_2221974671_2372691052_init()
{
	static char *pe[] = {(void *)work_a_2221974671_2372691052_p_0,(void *)work_a_2221974671_2372691052_p_1};
	xsi_register_didat("work_a_2221974671_2372691052", "isim/test1_isim_beh.exe.sim/work/a_2221974671_2372691052.didat");
	xsi_register_executes(pe);
}

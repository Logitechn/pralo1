/* sosomt02.i - SALES ORDER MAINTENANCE - SHARED FRAME B                */
/* Copyright 1986 QAD Inc. All rights reserved.                           */
/* $Revision: 1.15 $                                            */
/*V8:ConvertMode=Maintenance                                            */
/* REVISION: 7.3      LAST MODIFIED: 05/25/93   BY: afs *GB31**/
/* REVISION: 7.4      LAST MODIFIED: 09/22/93   BY: cdt *H086**/
/* REVISION: 7.4      LAST MODIFIED: 10/19/93   BY: cdt *H184**/
/* REVISION: 7.4      LAST MODIFIED: 09/22/94   BY: jpm *GM78**/
/* REVISION: 7.5      LAST MODIFIED: 02/17/95   BY: dpm *J044**/
/* REVISION: 7.5      LAST MODIFIED: 03/10/95   BY: DAH *J042**/
/* REVISION: 8.5      LAST MODIFIED: 08/27/96   BY: *G2D5* Suresh Nayak */
/* REVISION: 8.5      LAST MODIFIED: 11/19/96   BY: *J190* Sue Poland   */
/* REVISION: 8.6      LAST MODIFIED: 06/03/97   BY: *K0DQ* Taek-Soo Chang */

/* REVISION: 8.6E     LAST MODIFIED: 02/23/98   BY: *L007* A. Rahane */
/* REVISION: 8.6E     LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan     */
/* REVISION: 8.6E     LAST MODIFIED: 10/04/98   BY: *J314* Alfred Tan     */
/* REVISION: 9.1      LAST MODIFIED: 03/24/00 BY: *N08T* Annasaheb Rahane */
/* REVISION: 9.1      LAST MODIFIED: 08/12/00 BY: *N0KN* myb              */
/* REVISION: 9.1      LAST MODIFIED: 10/16/00 BY: *N0WB* BalbeerS Rajput  */
/* Old ECO marker removed, but no ECO header exists *F0PN*               */
/* Revision: 1.14     BY: Russ Witt  DATE: 09/21/01  ECO: *P01H*      */
/* $Revision: 1.15 $    BY: Patrick Rowan  DATE: 03/14/02  ECO: *P00G*      */

/******************************************************************************/
/* All patch markers and commented out code have been removed from the source */
/* code below. For all future modifications to this file, any code which is   */
/* no longer required should be deleted and no in-line patch markers should   */
/* be added.  The ECO marker should only be included in the Revision History. */
/******************************************************************************/

{cxcustom.i "SOSOMT02.I"}

/* ********** Begin Translatable Strings Definitions ********* */

&SCOPED-DEFINE sosomt02_i_1 "Imp/Exp"
/* MaxLen: Comment: */

&SCOPED-DEFINE sosomt02_i_2 "Order"
/* MaxLen: Comment: */

&SCOPED-DEFINE sosomt02_i_3 "Entered By"
/* MaxLen: Comment: */

&SCOPED-DEFINE sosomt02_i_4 "Multiple"
/* MaxLen: Comment: */

&SCOPED-DEFINE sosomt02_i_5 "Allocate Days"
/* MaxLen: Comment: */

/* ********** End Translatable Strings Definitions ********* */

form
   space (1)
   so_nbr label {&sosomt02_i_2}
   so_cust so_bill so_ship
with frame a side-labels width 80 attr-space.

/* SET EXTERNAL LABELS */
setFrameLabels(frame a:handle).

/*YF10

/*{&SOSOMT02-I-TAG1}*/
form
   so_ord_date     colon 15

   line_pricing    colon 38
   confirm         colon 58 so_conf_date no-label

   so_req_date     colon 15
   so_pr_list      colon 38
   so_curr         colon 58 so_lang

   promise_date    colon 15
   so_site         colon 38
   /*V8-*/
   so_taxable      colon 58 so_taxc no-label so_tax_date to 77 no-label
   /*V8+*/
   /*V8!
   so_taxable      colon 58
   view-as fill-in size 3.5 by 1
   so_taxc no-label so_tax_date to 79 no-label */

   so_due_date     colon 15
   so_channel      colon 38
   so_fix_pr       colon 68

   perform_date   colon 15
   so_project      colon 38
   so_cr_terms     colon 68

   so_pricing_dt   colon 15
   socrt_int       colon 68

   so_po           colon 15
   reprice         colon 68

   so_rmks         colon 15
   so_userid       colon 68 label {&sosomt02_i_3}

with frame b side-labels width 80 attr-space.
/*{&SOSOMT02-I-TAG2}*/

YF10*/

form
   so_ord_date     colon 5
   line_pricing    colon 28
   confirm         colon 38 so_conf_date no-label

   so_req_date     colon 15
   so_pr_list      colon 38
   so_curr         colon 58 so_lang

   promise_date    colon 15
   so_site         colon 38
   /*V8-*/
   so_taxable      colon 58 so_taxc no-label so_tax_date to 77 no-label
   /*V8+*/
   /*V8!
   so_taxable      colon 58
   view-as fill-in size 3.5 by 1
   so_taxc no-label so_tax_date to 79 no-label */

   so_due_date     colon 15
   so_channel      colon 38
   so_fix_pr       colon 68

   perform_date    colon 15
   so_project      colon 38
   so_cr_terms     colon 68

   so_pricing_dt   colon 15
   so_userid       colon 38 label "Entered By"
   inv_org         colon 58 label "Original Invoice" reprice

   so_po           colon 15
   socrt_int       colon 68

   so_rmks         colon 15
   /*reprice         colon 68*/

   /*timer            colon */
with frame b side-labels width 80 attr-space.

form
   so__qadc03      colon 15 label "CIG" format "x(10)"
   so__qadc04      colon 58 label "CUP" format "x(15)"
with overlay frame cigcup side-labels width 80.

find mfc_ctrl where mfc_domain = global_domain and mfc_field = "l_use_cig_cup"
no-lock no-error.
l_no_cig_cup = (available mfc_ctrl = no or mfc_logical = no).

form
   inv_org       colon 19 label "Original Invoice"
   org_nbr       colon 40 label "Org. Order"
   cil_cor_rsn   colon 68 label "Correction Reason"  format "x(10)"
with frame f_cor_inv overlay no-box
   side-labels column 1 row 4 width 80 no-attr-space.

/* SET EXTERNAL LABELS */
setFrameLabels(frame f_cor_inv:handle).

/* SET EXTERNAL LABELS */
setFrameLabels(frame b:handle).

form
   so_slspsn[1]    colon 15
   so_fr_list      colon 38 so_weight_um no-label

   so_consignment  colon 69
   mult_slspsn     colon 15 label {&sosomt02_i_4}
   so_fr_min_wt    colon 38
   consume         colon 69

   so_comm_pct[1]  colon 15
   so_fr_terms     colon 38
   so-detail-all   colon 69

   calc_fr         colon 38

   all_days        colon 69 label {&sosomt02_i_5}
   disp_fr         colon 38
   socmmts         colon 69
   impexp          colon 69 label {&sosomt02_i_1}

with frame b1 overlay side-labels column 1 row 12 width 80 attr-space.

/* SET EXTERNAL LABELS */
setFrameLabels(frame b1:handle).

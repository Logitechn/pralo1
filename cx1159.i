/* cx1159.i - localization file for sosomt02.i                              */
/* Copyright 1986 QAD Inc. All rights reserved.                             */
/*V8:ConvertMode=Maintenance                                                */
/* REVISION: 9.1    LAST MODIFIED: 10/16/00    BY: *N0FB* BalbeerS Rajput   */
/* REVISION: 9.2      LAST MODIFIED: 01/22/03   BY: *P0M5* Ed van de Gevel  */
/* $Revision: 1.1.2.2 $     BY: Ed van de Gevel DATE: 02/07/12 ECO: *Q57B* */

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

   perform_date    colon 15
   so_project      colon 38
   so_cr_terms     colon 68

   so_pricing_dt   colon 15
   so_userid       colon 38 label "Entered By"
   inv_org         colon 68 label "Original Invoice"

   so_po           colon 15
   socrt_int       colon 68

   so_rmks         colon 15
   reprice         colon 68
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

/* solinfrm.i - DEFINES FORMS FOR SALES ORDER LINE ENTRY                      */
/* Copyright 1986 QAD Inc. All rights reserved.                                 */
/* $Revision: 1.10.2.14 $                                                              */
/*V8:ConvertMode=Maintenance                                                  */
/* REVISION: 6.0      LAST MODIFIED: 04/02/90   BY: ftb *Dftb**/
/* REVISION: 6.0      LAST MODIFIED: 04/11/90   BY: MLB *D021**/
/* REVISION: 6.0      LAST MODIFIED: 12/19/90   BY: afs *D266**/
/* REVISION: 6.0      LAST MODIFIED: 09/19/91   BY: afs *F040**/
/* REVISION: 7.0      LAST MODIFIED: 03/23/92   BY: dld *F297**/
/* REVISION: 7.0      LAST MODIFIED: 04/06/92   BY: afs *F356**/
/* REVISION: 7.0      LAST MODIFIED: 06/01/92   BY: tjs *F504**/
/* REVISION: 7.3      LAST MODIFIED: 09/15/92   BY: tjs *G035**/
/* REVISION: 7.3      LAST MODIFIED: 10/28/92   BY: afs *G244**/
/* REVISION: 7.3      LAST MODIFIED: 01/04/93   BY: afs *G501**/
/* REVISION: 7.4      LAST MODIFIED: 10/19/93   BY: cdt *H086**/
/* REVISION: 7.4      LAST MODIFIED: 10/19/93   BY: cdt *H184**/
/* REVISION: 7.4      LAST MODIFIED: 09/21/94   BY: ljm *GM77**/
/* REVISION: 7.4      LAST MODIFIED: 10/16/94   BY: dpm *FR95**/
/* REVISION: 7.4      LAST MODIFIED: 04/03/95   BY: jpm *G0FB**/
/* REVISION: 7.4      LAST MODIFIED: 04/23/95   BY: jpm *H0D9**/
/* REVISION: 8.5      LAST MODIFIED: 03/05/95   BY: DAH *J042**/
/* REVISION: 7.4      LAST MODIFIED: 09/11/95   BY: jym *G0WJ**/
/* REVISION: 8.5      LAST MODIFIED: 04/10/96   BY: *J04C* Sue Poland   */
/* REVISION: 8.6      LAST MODIFIED: 09/27/96   BY: svs *K007**/
/* REVISION: 8.6      LAST MODIFIED: 12/31/96   BY: jpm *K03Y**/
/* REVISION: 8.6E     LAST MODIFIED: 02/23/98   BY: *L007* A. Rahane */
/* REVISION: 8.6E     LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan   */
/* REVISION: 8.6E     LAST MODIFIED: 10/04/98   BY: *J314* Alfred Tan   */
/* REVISION: 9.1      LAST MODIFIED: 10/01/99   BY: *N014* Patti Gaultney */
/* REVISION: 9.1      LAST MODIFIED: 03/24/00 BY: *N08T* Annasaheb Rahane */
/* REVISION: 9.1      LAST MODIFIED: 08/12/00 BY: *N0KN* myb              */
/* Revision: 1.10.2.5        BY:Falguni Dalal      DATE: 11/23/00   ECO: *M0WH*  */
/* REVISION: 9.1      LAST MODIFIED: 10/10/00 BY: *N0WB* Mudit Mehta      */
/* Old ECO marker removed, but no ECO header exists *F0PN*               */
/* Old ECO marker removed, but no ECO header exists *J0N2*               */
/* Revision: 1.10.2.6       BY: Russ Witt       DATE: 09/21/01   ECO: *P01H*  */
/* Revision: 1.10.2.12      BY: Steve Nugent    DATE: 10/15/01   ECO: *P004*  */
/* Revision: 1.10.2.14             BY: Priya Idnani    DATE: 11/24/04   ECO: *P2WH*  */
/* $Revision: 1.11 $            BY: Aurimas Blazys    DATE: 2016/07/07   ECO: *YF10*  */
/******************************************************************************/
/* All patch markers and commented out code have been removed from the source */
/* code below. For all future modifications to this file, any code which is   */
/* no longer required should be deleted and no in-line patch markers should   */
/* be added.  The ECO marker should only be included in the Revision History. */
/******************************************************************************/

{cxcustom.i "SOLINFRM.I"}

/* ********** Begin Translatable Strings Definitions ********* */

&SCOPED-DEFINE solinfrm_i_1 "Consume Fcst"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_2 "Frt List"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_3 "Discount"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_4 "Comm%[1]"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_5 "Manual"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_6 "Detail Alloc"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_7 "Cred Terms Int"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_8 "Pricing"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_9 "Multiple"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_10 "Net Price"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_11 "Promised"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_12 "Reprice"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_13 "Required"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_14 "Salesperson[1]"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_15 "UM Conv"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_16 "Type"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_17 "Desc"
/* MaxLen: Comment: */

&SCOPED-DEFINE solinfrm_i_18 "Loc"
/* MaxLen: Comment: */

/* ********** End Translatable Strings Definitions ********* */

form
   line
   sod_part
   /*V8! view-as fill-in size 18 by 1 */
   sod_qty_ord                    format "->>>>,>>9.9<<<<"
   sod_um
   sod_list_pr                    format ">>>,>>>,>>9.99<<<"
   discount     label {&solinfrm_i_3} format "->>>9.9<<<"
   sod_price    label {&solinfrm_i_10}
   no-attr-space
with frame c clines down width 80
   title color normal frametitle.

/* SET EXTERNAL LABELS */
setFrameLabels(frame c:handle).

{&SOLINFRM-I-TAG1}
form
   /*ROW 1  ============================================================  */
   desc1           colon  5    label {&solinfrm_i_17} format "x(24)"
   /*V8!view-as fill-in size 22 by 1 space(.5) */
   sod_acct        colon 42
   /*V8!view-as fill-in size 9 by 1 space(.5) */
   sod_sub                     no-label
   /*V8!view-as fill-in size 9 by 1 space(.5) */
   sod_cc                      no-label
   /*V8!view-as fill-in size 5 by 1 space(.5) */
   sod_project                 no-label
   /*V8!view-as fill-in size 9 by 1 space(.5) */
   /*ROW 2  ============================================================= */
   sod_loc         colon  5    label {&solinfrm_i_18}
   sod_site
   sod_dsc_acct    colon 42
   /*V8!view-as fill-in size 9 by 1 space(.5) */
   sod_dsc_sub                 no-label
   /*V8!view-as fill-in size 9 by 1 space(.5) */
   sod_dsc_cc                  no-label
   /*V8!view-as fill-in size 5 by 1 space(.5) */
   sod_dsc_project             no-label
   /*V8!view-as fill-in size 9 by 1 space(.5) */
   /*ROW 3  ============================================================= */
   base_curr       at 4        no-label no-attr-space
   sod_std_cost    colon 12
   sod_confirm     colon 42
   sod_crt_int     colon 66    label {&solinfrm_i_7}
   /*ROW 4  ============================================================= */
   sod_serial      colon 12
   sod_req_date    colon 42    label "Required"
   sod_type        colon 66    label {&solinfrm_i_16}
   /*ROW 5  ============================================================= */
   sod_qty_all     colon 15
   sod_promise_date colon 42   label "Promised"
   sod_um_conv     colon 66    label {&solinfrm_i_15}
   /*ROW 6  ============================================================= */
   sod_qty_pick    colon 15
   sod_due_date    colon 42
   sod_consume     colon 66    label {&solinfrm_i_1}
   /*ROW 7  ============================================================= */
   sod_qty_ship    colon 15    no-attr-space
   sod_per_date    colon 42    label "Performance"
   sod-detail-all  colon 66    label {&solinfrm_i_6}
   /*ROW 8  ============================================================= */
   sod_qty_inv     colon 15    no-attr-space
   sod_pricing_dt  colon 42    label "Pricing"
   sod_taxable     colon 66
   sod_taxc                    no-label
   /*ROW 9  ============================================================= */
   sod_slspsn[1]   colon 15    label {&solinfrm_i_14}
   mult_slspsn     colon 42    label {&solinfrm_i_9}
   sod_fr_list     colon 66    label {&solinfrm_i_2}
   /*ROW 10 ============================================================= */
   sod_comm_pct[1]    colon 15    label {&solinfrm_i_4}
   sod_order_category
   sod_fix_pr
   sodcmmts
with frame d side-labels /*V8-*/ 1 down /*V8+*/ width 80
   attr-space overlay
   /*V8-*/   row 10
   /*V8+*/ .

/* SET EXTERNAL LABELS */
setFrameLabels(frame d:handle).

/*************YF10*************/

form
   sod_pricing_dt colon 20
   /*V8! space(2) */
   sod_crt_int    colon 20
   /*V8! space(2) */
   reprice_dtl    colon 20 label {&solinfrm_i_12}
   /*V8! space(2) */
   sod_pr_list    colon 20 label {&solinfrm_i_5}
   /*V8! space(2) */
with frame line_pop overlay side-labels row 12 column 25.

/* SET EXTERNAL LABELS */
setFrameLabels(frame line_pop:handle).

/***************YF10********/


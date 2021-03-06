/* sosomt1.p - SALES ORDER MAINTENANCE                                        */
/* Copyright 1986 QAD Inc. All rights reserved.                               */
/* REVISION: 7.4      LAST MODIFIED: 03/29/95   BY: *F0PN* dzn                */
/* REVISION: 8.5      LAST MODIFIED: 08/25/95   BY: *J04C* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 04/09/96   BY: *J034* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 04/09/96   BY: *J042* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 04/09/96   BY: *J053* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 04/17/96   BY: *J0HR* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 04/19/96   BY: *J0JW* gwm                */
/* REVISION: 8.5      LAST MODIFIED: 04/26/96   BY: *J0KJ* DAH                */
/* REVISION: 8.5      LAST MODIFIED: 05/14/96   BY: *J0M3* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 07/10/96   BY: *J0YH* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 07/29/96   BY: *J12Q* Andy Wasilczuk     */
/* REVISION: 8.6      LAST MODIFIED: 09/27/96   BY: *K007* svs                */
/* REVISION: 8.6      LAST MODIFIED: 10/22/96   BY: *K004* Elke Van Maele     */
/* REVISION: 8.6      LAST MODIFIED: 11/05/96   BY: *K01T* Stephane Collard   */
/* REVISION: 8.6      LAST MODIFIED: 05/07/97   BY: *J1P5* Ajit Deodhar       */
/* REVISION: 8.6      LAST MODIFIED: 06/06/97   BY: *K0CZ* Kieu Nguyen        */
/* REVISION: 8.6      LAST MODIFIED: 07/11/97   BY: *K0DH* Kieu Nguyen        */
/* REVISION: 8.6      LAST MODIFIED: 08/06/97   BY: *J1YG* Seema Varma        */
/* REVISION: 8.6      LAST MODIFIED: 09/23/97   BY: *K0HB* Kieu Nguyen        */
/* REVISION: 8.6      LAST MODIFIED: 11/18/97   BY: *J25B* Aruna Patil        */
/* REVISION: 8.6      LAST MODIFIED: 11/18/97   BY: *K1BG* Aruna Patil        */
/* REVISION: 8.6      LAST MODIFIED: 12/01/97   BY: *K1BN* Bryan Merich       */
/* REVISION: 8.6      LAST MODIFIED: 01/31/98   BY: *J2D6* Seema Varma        */
/* REVISION: 8.6E     LAST MODIFIED: 02/23/98   BY: *L007* Annasaheb Rahane   */
/* REVISION: 8.6E     LAST MODIFIED: 04/23/98   BY: *L00L* Ed van de Gevel    */
/* REVISION: 8.6E     LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan         */
/* REVISION: 8.6E     LAST MODIFIED: 10/04/98   BY: *J314* Alfred Tan         */
/* REVISION: 9.0      LAST MODIFIED: 11/24/98   BY: *M017* David Morris       */
/* REVISION: 9.0      LAST MODIFIED: 02/24/99   BY: *M094* Jean Miller        */
/* REVISION: 9.0      LAST MODIFIED: 03/13/99   BY: *M0BD* Alfred Tan         */
/* REVISION: 9.1      LAST MODIFIED: 10/06/99   BY: *L0J4* Satish Chavan      */
/* REVISION: 9.1      LAST MODIFIED: 03/24/00   BY: *N08T* Annasaheb Rahane   */
/* REVISION: 9.1      LAST MODIFIED: 04/25/00   BY: *N0CG* Santosh Rao        */
/* REVISION: 9.1      LAST MODIFIED: 06/14/00   BY: *L0Y4* Santosh Rao        */
/* REVISION: 9.1      LAST MODIFIED: 07/03/00   BY: *N0DX* Rajinder Kamra     */
/* REVISION: 9.1      LAST MODIFIED: 08/12/00   BY: *N0KN* Mark Brown         */
/* REVISION: 9.1      LAST MODIFIED: 11/19/00   BY: *M0WC* Rajesh Thomas      */
/* REVISION: 9.1      LAST MODIFIED: 12/18/00   BY: *M0TZ* Veena Lad          */
/* REVISION: 9.1      LAST MODIFIED: 10/16/00   BY: *N0WB* BalbeerS Rajput    */
/* Revision: 1.35         BY: Katie Hilbert       DATE: 04/01/01  ECO: *P002* */
/* Revision: 1.36         BY: Sachin Shinde       DATE: 06/26/01  ECO: *M1C2* */
/* Revision: 1.37         BY: Ellen Borden        DATE: 02/27/01  ECO: *P007* */
/* Revision: 1.38         BY: Jean Miller         DATE: 08/08/01  ECO: *M11Z* */
/* Revision: 1.39         BY: Russ Witt           DATE: 09/21/01  ECO: *P01H* */
/* Revision: 1.40         BY: Ashwini Ghaisas     DATE: 01/10/02  ECO: *L194* */
/* Revision: 1.41         BY: Santhosh Nair       DATE: 03/05/02  ECO: *M1H1* */
/* Revision: 1.42         BY: Ashish Maheshwari   DATE: 05/14/02  ECO: *P06M* */
/* Revision: 1.43         BY: Ashish Maheshwari   DATE: 05/20/02  ECO: *P04J* */
/* Revision: 1.45         BY: Samir Bavkar        DATE: 04/29/02  ECO: *P042* */
/* Revision: 1.47         BY: Robin McCarthy      DATE: 07/03/02  ECO: *P08Q* */
/* Revision: 1.48         BY: Samir Bavkar        DATE: 07/07/02  ECO: *P0B0* */
/* Revision: 1.49         BY: Robin McCarthy      DATE: 07/15/02  ECO: *P0BJ* */
/* Revision: 1.51         BY: Paul Donnelly (SB)  DATE: 06/28/03  ECO: *Q00L* */
/* Revision: 1.52         BY: Ashish Maheshwari   DATE: 09/03/03  ECO: *N2KT* */
/* Revision: 1.55         BY: Rajaneesh S.        DATE: 10/07/03  ECO: *P15F* */
/* Revision: 1.56         BY: Ken Casey           DATE: 02/19/04  ECO: *N2GM* */
/* Revision: 1.59         BY: Jean Miller         DATE: 02/23/04  ECO: *Q063* */
/* Revision: 1.60         BY: Jean Miller         DATE: 02/23/04  ECO: *Q062* */
/* Revision: 1.61         BY: Katie Hilbert       DATE: 03/02/04  ECO: *Q06B* */
/* Revision: 1.62         BY: Shivaraman V.       DATE: 04/28/04  ECO: *P1Z7* */
/* Revision: 1.63         BY: Mercy Chittilapilly DATE: 05/10/04  ECO: *P20G* */
/* Revision: 1.64         BY: Shivanand H         DATE: 05/13/04  ECO: *P1YS* */
/* Revision: 1.65         BY: Vivek Gogte         DATE: 06/09/04  ECO: *P25L* */
/* Revision: 1.66         BY: Ed van de Gevel     DATE: 06/23/04  ECO: *Q09H* */
/* Revision: 1.67         BY: Shivanand H         DATE: 06/22/04  ECO: *P25X* */
/* Revision: 1.68         BY: Paul Dreslinski     DATE: 10/15/04  ECO: *P2Q4* */
/* Revision: 1.69         BY: Jean Miller         DATE: 12/08/04  ECO: *P2RY* */
/* Revision: 1.69.1.1     BY: Ken Casey           DATE: 02/22/05  ECO: *P38T* */
/* Revision: 1.69.1.3     BY: Nishit V            DATE: 05/19/05  ECO: *P3LY* */
/* Revision: 1.69.1.7     BY: Paul Dreslinski     DATE: 08/15/05  ECO: *Q0KY* */
/* Revision: 1.69.1.8     BY: Shivaraman V.       DATE: 11/17/05  ECO: *P484* */
/* Revision: 1.69.1.9     BY: Shivganesh Hegde    DATE: 02/03/06  ECO: *P4H6* */
/* Revision: 1.69.1.10    BY: Tejasvi Kulkarni    DATE: 07/14/06  ECO: *P4MJ* */
/* Revision: 1.69.1.11    BY: Masroor Alam        DATE: 10/15/06  ECO: *P4XK* */
/* Revision: 1.69.1.14    BY: Antony LejoS        DATE: 11/04/07  ECO: *P5T1* */
/* Revision: 1.69.1.20    BY: Vivek Kamath        DATE: 11/06/07  ECO: *P6CW* */
/* Revision: 1.69.1.21    BY: Chi Liu             DATE: 12/12/07  ECO: *P6BR* */
/* Revision: 1.69.1.22    BY: Chi Liu             DATE: 01/18/08  ECO: *P6JP* */
/* Revision: 1.69.1.23    BY: Vivek Kamath        DATE: 02/20/08  ECO: *P6M2* */
/* Revision: 1.69.1.24    BY: Jean Miller         DATE: 09/22/08  ECO: *P4RW* */
/* Revision: 1.69.1.25    BY: Chi Liu             DATE: 02/20/09  ECO: *Q22F* */
/* Revision: 1.69.1.26    BY: Prajakta Patil      DATE: 06/12/09  ECO: *Q30C* */
/* Revision: 1.69.1.27    BY: Prabu M             DATE: 09/16/09  ECO: *Q39L* */
/* Revision: 1.69.1.28    BY: Robert Jensen       DATE: 10/05/09  ECO: *Q3GV* */
/* Revision: 1.69.1.29   BY: Katie Hilbert        DATE: 10/05/09  ECO: *Q3RL* */
/* $Revision: 1.80 $       BY: Aurimas Blazys      DATE: 2016/07/07  ECO: *YF10* */
/*-Revision end---------------------------------------------------------------*/

/******************************************************************************/
/* All patch markers and commented out code have been removed from the source */
/* code below. For all future modifications to this file, any code which is   */
/* no longer required should be deleted and no in-line patch markers should   */
/* be added.  The ECO marker should only be included in the Revision History. */
/******************************************************************************/

/*!
 *  Sosomt1.p performs the 'driver' function for Sales Order and RMA
 *  Maintenance.  These two functions were previously handled by sosomt.p
 *  and fsrmamt.p.  This program was originally copied from sosomt.p.
*/

/* DISPLAY TITLE */
/*V8:ConvertMode=Maintenance                                                  */
{mfdeclre.i}
{cxcustom.i "SOSOMT1.P"}
{gplabel.i}    /* EXTERNAL LABEL INCLUDE */
{apconsdf.i}   /* PRE-PROCESSOR CONSTANTS FOR LOGISTICS ACCOUNTING */

define input parameter         this-is-rma     as logical.
/*YF10*/  define input parameter         p__sft01     as logical.
/*YF10*/  define input parameter         p__sft02     as logical.
/*YF10*/  define input parameter         p__csb     as logical.
/*YF10*/  define input parameter         p__csb2     as logical.   /* "Užsakymas perduotas į CSB. Atšaukti" */
/*YF10*/  define input parameter         p__csb4     as logical.
/*YF10*/  define input parameter         p__qxt     as logical.
/*YF10*/  define input parameter         p__h15     as logical.
/*YF10*/  define input parameter         p__nconf     as logical.
/*YF10*/  define input parameter         p__part1_9   as logical.

/*YF10*/  define variable ar_p_nm_vers  as character  initial "l4somt1e.p Y713" no-undo.
/*YF10*/  define variable l_csb3       as logical initial yes no-undo. /* "Užsakymas perduotas į CSB. Koreguoti negalima..." */
/*YF10*/  define variable n_i03        as integer initial 0 no-undo.
/*YF10*/  define variable l__sft01b    as logical initial yes no-undo. /* for each so_mstr where   so_nbr <> ip-nbr */

define new shared variable line          like sod_line.
define new shared variable del-yn        like mfc_logical.
define new shared variable qty_req       like in_qty_req.
define new shared variable prev_due      like sod_due_date.
define new shared variable prev_qty_ord  like sod_qty_ord.
define new shared variable trnbr         like tr_trnbr.
define new shared variable qty           as decimal.
define new shared variable part          as character format "x(18)".
define new shared variable eff_date      as date.
define new shared variable all_days      like soc_all_days.
define new shared variable all_avail     like soc_all_avl.
define new shared variable sngl_ln       like soc_ln_fmt.
define new shared variable so_recno      as recid.
define new shared variable cm_recno      as recid.
define new shared variable comp          like ps_comp.
define new shared variable cmtindx       like cmt_indx.
define new shared variable socmmts       like soc_hcmmts label "Comments".
define new shared variable prev_abnormal like sod_abnormal.
define new shared variable promise_date  as date label "Promise Date".
define new shared variable perform_date  as date label "Perform Date".
define new shared variable base_amt      like ar_amt.
define new shared variable sod_recno     as recid.
define new shared variable consume       like sod_consume.
define new shared variable prev_consume  like sod_consume.
define new shared variable confirm       like mfc_logical initial yes
                                         label "Confirmed".
define new shared variable sotrcust      like so_cust.
define new shared variable merror        like mfc_logical initial no.
define new shared variable so-detail-all like soc_det_all.
define new shared variable new_order     like mfc_logical initial no.
define new shared variable sotax_trl     like tax_trl.
define new shared variable tax_in        like cm_tax_in.
define new shared variable rebook_lines  as logical initial no no-undo.
define new shared variable so_db         like dc_name.
define new shared variable inv_db        like dc_name.
define new shared variable mult_slspsn   like mfc_logical no-undo.
define new shared variable undo_cust     like mfc_logical.
define new shared variable freight_ok    like mfc_logical initial yes.
define new shared variable old_ft_type   like ft_type.
define new shared variable calc_fr       like mfc_logical
                                         label "Calculate Freight".
define new shared variable undo_flag     like mfc_logical.
define new shared variable disp_fr       like mfc_logical.
define new shared variable display_trail like mfc_logical initial yes.
define new shared variable soc_pc_line   like mfc_logical initial yes.
define new shared variable socrt_int     like sod_crt_int.
define new shared variable impexp_label  as character format "x(12)" no-undo.
define new shared variable impexp        like mfc_logical no-undo.
define new shared variable sonbr         like so_nbr.
define new shared variable picust        like cm_addr.
define new shared variable price_changed like mfc_logical.
define new shared variable line_pricing  like pic_so_linpri
                                         label "Line Pricing".
define new shared variable reprice       like mfc_logical label "Reprice"
                                         initial no.
define new shared variable rndmthd       like rnd_rnd_mthd.
define new shared variable oldcurr       like so_curr.
define new shared variable balance_fmt   as character.
define new shared variable limit_fmt     as character.
define new shared variable prepaid_fmt   as character no-undo.
define new shared variable prepaid_old   as character no-undo.
define new shared variable trans_conv    like sod_um_conv.
define new shared variable wk_bs_line    like pih_bonus_line no-undo.
define new shared variable wk_bs_promo   as character format "x(8)" no-undo.
define new shared variable wk_bs_listid  like pih_list_id no-undo.
define new shared variable coverage-discount  like sod_disc_pct.
define variable lv_shipfrom     like so_site no-undo.
define variable comment_type    like so_lang.
define variable old_so_print_pl like so_print_pl no-undo.
define variable impexp_edit     like mfc_logical no-undo.
define variable upd_okay        like mfc_logical no-undo.
define variable batch_job       as logical.
define variable dev             as character.
define variable batch_id        as character.
define variable use-log-acctg   as logical no-undo.
define variable allaccepted     like mfc_logical no-undo.

/*YF10*/define variable date         as date.
/*YF10*/define variable timer         as character.
/*YF10*/define variable print_list   like mfc_logical initial no.

/* RMA-SPECIFIC VARIABLES */
define variable rma-recno       as recid.

/* Handle for the restore on stop condition */
define variable stop_recno  as recid no-undo.

/* TEMP TABLE DEFINITIONS FOR APM/API */
{ifttcmdr.i "new"}
{ifttcmdv.i "new"}

{sobtbvar.i "new"}   /* BACK TO BACK SHARED WORKFILES AND VARIABLES */

{&SOSOMT1-P-TAG1}

/* RECORD BUFFERS */
define buffer   bill_cm     for  cm_mstr.

/* SHARED FRAMES */
define new shared frame a.
define new shared frame sotot.
define new shared frame d.

{pppivar.i "new"}  /* PRICING VARIABLES */

/* FREIGHT ACCRUAL TEMP TABLE DEFINITION */
{lafrttmp.i "new"}

/*THIS TEMP TABLE IS CREATED TO CALCULATE FREIGHT CHARGES  */
/*WHEN A NEW SALES ORDER LINE IS ADDED TO AN EXISTING ORDER*/
/*WHEN THE FREIGHT TYPE IS "INCLUDE".                      */
define new shared temp-table l_fr_table
       field l_fr_sonbr   like sod_nbr
       field l_fr_soline  like sod_line
       field l_fr_chrg    like sod_fr_chg
       field l_sodlist_pr like sod_list_pr
       index nbrline is primary l_fr_sonbr l_fr_soline.

{gptxcdec.i}
{etdcrvar.i "new"}
{etvar.i &new="new"}
{etrpvar.i &new="new"}

{etsotrla.i "NEW"}

/*YF10*
{sosomt01.i}
*YF10*/

/*YF10*/{lysosomt01.i}

{gpcrfmt.i}

/*DEFINE WORKFILE FOR QTY ACCUM USED BY BEST PRICING ROUTINES*/
{pppiwqty.i "new" }

define new shared temp-table tt_soddet no-undo like sod_det.

/* ASSIGN ORIGINAL FORMAT TO _OLD VARIABLES */
assign
   nontax_old      = nontaxable_amt:format
   taxable_old     = taxable_amt:format
   line_tot_old    = line_total:format
   disc_old        = disc_amt:format
   trl_amt_old     = so_trl1_amt:format
   tax_amt_old     = tax_amt:format
   ord_amt_old     = ord_amt:format
   prepaid_old     = so_prepaid:format
   container_old   = container_charge_total:format
   line_charge_old = line_charge_total:format.

oldcurr = "".

for first gl_ctrl
   fields(gl_domain gl_rnd_mthd)
   where gl_domain = global_domain
no-lock: end.

/* SET LIMIT_FMT ACCORDING TO BASE CURR ROUND METHOD*/
limit_fmt = "->>>>,>>>,>>9.99".
run gpcrfmt
   (input-output limit_fmt,
    input gl_rnd_mthd).

/* SET BALANCE_FMT ACCORDING TO BASE CURR ROUND METHOD*/
balance_fmt = "->>>>,>>>,>>9.99".
run gpcrfmt
   (input-output balance_fmt,
    input gl_rnd_mthd).

/* CHECK IF LOGISTICS ACCOUNTING IS ENABLED */
{gprun.i ""lactrl.p"" "(output use-log-acctg)"}

/*YF10*/  find code_mstr where code_domain = global_domain  and code_fldname = "##CREDIT-CONTROL"
             and code_value = "overdue"  no-lock no-error.
          if available(code_mstr) then  if trim(code_cmmt) = "N" then assign l__sft01b = no.

do transaction on error undo, retry:       /* TRANSACTION 10 */

   for first soc_ctrl
      fields(soc_domain soc_all_avl soc_all_days soc_confirm
             soc_det_all soc_edit_isb soc_hcmmts soc_lcmmts
             soc_ln_fmt soc_so_hist soc_trl_ntax
             soc_trl_tax soc_use_btb)
      where soc_domain = global_domain
   no-lock: end.

   if not available soc_ctrl then do:
      create soc_ctrl.
      soc_domain = global_domain.
   end.

   assign
      all_days     = soc_all_days
      all_avail    = soc_all_avl
      sngl_ln      = soc_ln_fmt
      socmmts      = soc_hcmmts
      comment_type = global_type
      confirm      = soc_confirm.

   /* BATCH PROCESSING PARAMETERS */
   for first mfc_ctrl
      fields(mfc_domain mfc_char mfc_field mfc_logical)
      where mfc_domain = global_domain
        and mfc_field = "soc_batch"
   no-lock:
      batch_job = mfc_logical.
   end.

   for first mfc_ctrl
      fields(mfc_domain mfc_char mfc_field mfc_logical)
      where mfc_domain = global_domain
        and mfc_field = "soc_print_id"
   no-lock:
      dev = mfc_char.
   end.

   for first mfc_ctrl
      fields(mfc_domain mfc_char mfc_field mfc_logical)
      where mfc_domain = global_domain
        and mfc_field = "soc_batch_id"
   no-lock:
      batch_id = mfc_char.
   end.

   /* FOR RMA'S, VALUES USUALLY OBTAINED FROM SOC_CTRL */
   /* COME FROM RMC_CTRL.  GET SVC_CTRL ALSO - IT'LL   */
   /* BE NEEDED LATER ON...                            */
   if this-is-rma then do:

      for first rmc_ctrl
         fields(rmc_domain rmc_all_days rmc_consume rmc_det_all rmc_edit_isb
                rmc_hcmmts rmc_history rmc_lcmmts)
         where rmc_domain = global_domain
      no-lock: end.

      if not available rmc_ctrl then do:
         create rmc_ctrl.
         assign
            rmc_domain   = global_domain
            rmc_hcmmts   = soc_hcmmts
            rmc_lcmmts   = soc_lcmmts
            rmc_det_all  = soc_det_all
            rmc_all_days = soc_all_days
            rmc_edit_isb = soc_edit_isb
            rmc_history  = soc_so_hist.
      end.

      assign
         socmmts  = rmc_hcmmts
         consume  = rmc_consume
         all_days = rmc_all_days.

   end.   /* if this-is-rma */

end. /* TRANSACTION 10 */

/* Transaction 20 */
do transaction on error undo, retry:

   /* SET UP PRICING BY LINE VALUES */
   for first mfc_ctrl
      fields(mfc_domain mfc_char mfc_field mfc_logical)
      where mfc_domain = global_domain and mfc_field = "soc_pc_line"
   no-lock:
      soc_pc_line = mfc_logical.
   end. /* FOR FIRST MFC_CTRL */

end. /* TRANSACTION 20 */

so_db = global_db.

/* Transaction 25 */
do transaction on error undo, retry:
   for first pic_ctrl where pic_domain = global_domain
   no-lock: end.
   if not available pic_ctrl then do:
      create pic_ctrl.
      pic_domain = global_domain.
   end.
end.


stopskip:
do:
   stoptrap:
   do:
      mainloop:
      repeat on stop undo, leave stoptrap:

         stop_recno = ?.

         if not this-is-rma then do:
            /* TRAILER FRAMES FOR RMA ARE HIDDED IN sosomtc.p */
            hide frame sotot no-pause.
            hide frame d no-pause.
         end. /* IF NOT THIS-IS-RMA */

         for first mfc_ctrl
            fields(mfc_domain mfc_char mfc_field mfc_logical)
            where mfc_domain = global_domain and mfc_field = "soc_batch"
          no-lock:
            batch_job = mfc_logical.
         end. /* FOR FIRST MFC_CTRL */

         {sosomt02.i}  /* FORM DEFINITIONS FOR SHARED FRAMES A AND B */

         assign
            cr_terms_changed = no
            tax_edit         = no.

         /* IF AN EXPLICIT TRANSACTION SURROUNDS THIS, SOC_CTRL */
         /* IS LOCKED FOR THE DURATION OF SO HEADER PROCESSING  */

         /* PROCESS SALES ORDER HEADER FRAMES */
/*YF10*  {gprun.i ""sosomta1.p""  *YF10*/
 /*YF10*/ {gprun.i ""lysosomta1.p""
            "(input this-is-rma,
/*YF10*/      input p__sft01, input p__csb, input p__csb2, input l_csb3,
/*YF10*/      input n_i03,
/*YF10*/      input p__csb4,
              output return_int,
              output rma-recno)"}

         if return_int = 1 then next mainloop.
         if return_int = 2 then undo mainloop, next mainloop.
         if return_int = 3 then undo mainloop, retry mainloop.
         if return_int = 4 then undo mainloop, leave.

         /* record the current salesorder no-undo */
         stop_recno = so_recno.

         /* FIND SO_MSTR NO-LOCK TO ENSURE THE USER DIDN'T DELETE */
         /* IT.  NO-LOCK ALSO PREVENTS WARNINGS RELATED TO THE    */
         /* OTHER EXPLICIT TRANSACTIONS IN THIS PROGRAM.          */
         for first so_mstr where recid(so_mstr) = so_recno
         no-lock: end.

         if not available so_mstr then undo mainloop, leave mainloop.

         /* During line-item entry/edit, the printing of packing list is */
         /* disabled */
         do transaction:

            find so_mstr where recid(so_mstr) = so_recno exclusive-lock.
            assign
               old_so_print_pl = so_print_pl
               so_print_pl     = false.

         end. /* transaction */

         /* CHECK FOR A CHANGE TO THE CREDIT STATUS */
         if soc_use_btb
            and so_primary
         then do:
            /* PROCESS THE SO MASTER TO CREATE NEW EMT PO */
            {gprunp.i "soemttrg" "p" "process-order-header"
               "(input new_order,
                 input so_nbr,
                 output return-msg)" }

            if return-msg <> 0
            then do:
               {pxmsg.i &MSGNUM=return-msg &ERRORLEVEL=4}
               return-msg = 0.
               if not batchrun then pause.
               undo mainloop, retry mainloop.
            end. /* IF return-msg <> 0 */

         end. /* IF soc_use_btb ... */

         /* LINE ITEMS */

         line_loop:
         do on endkey undo ,retry:

            /* SOSOMTA.P'S THIRD INPUT PARAMETER IS USED BY RMA'S ONLY.   */
            /* YES INDICATES THAT RMA ISSUE LINES ARE BEING PROCESSED.    */
            /* FOR RMA'S, WE'LL CALL SOSOMTA.P TWICE - FIRST FOR ISSUES   */
            /* THEN FOR RMA RECEIPT LINES.                                */

            /* Identify context for QXtend */
            {gpcontxt.i
               &STACKFRAG = 'sosomta,sosomt1,fsrmamt'
               &FRAME = 'c' &CONTEXT = 'ISS'}
/*YF10*  {gprun.i ""sosomta.p""  *YF10*/
/*YF10*/     {gprun.i ""lysosomta.p""
               "(input this-is-rma,
                 input rma-recno,
                 input yes
/*YF10*/         , input p__sft01, /*YF10*/ input l__sft01b, input p__csb, /*YF10*/ input p__part1_9)"}

            /* Clear context for QXtend */
            {gpcontxt.i
               &STACKFRAG = 'sosomta,sosomt1,fsrmamt'
               &FRAME = 'c'}
/*YF10               &STACKFRAG = 'sosomta,sosomt1,fsrmamt'  */

            if this-is-rma then do:

               /* Identify context for QXtend */
               {gpcontxt.i
                  &STACKFRAG = '*sosomta,sosomt1,fsrmamt*'
                  &FRAME =
                   'a,c,c_site,d,rmd-prodline,j,h,set_comm,set_tax,line_pop'
                  &CONTEXT = 'REC'}

               /* FOR RMA'S, WE CREATED OUR ISSUE LINES (THE PARTS WE'LL BE */
               /* SENDING OUT TO CUSTOMERS).  NOW, CREATE THE RECEIPT LINES */
               /* (THE PARTS THEY'RE RETURNING TO US).                      */
               {gprun.i ""sosomta.p""
                  "(input this-is-rma,
                    input rma-recno,
                    input no)"}

               /* Clear context for QXtend */
               {gpcontxt.i
                  &STACKFRAG = '*sosomta,sosomt1,fsrmamt*'
                  &FRAME =
                   'a,c,c_site,d,rmd-prodline,j,h,set_comm,set_tax,line_pop'}

            end.    /* if this-is-rma */

            {&SOSOMT1-P-TAG5}
            /* Reprice after Line processing */
            {gprun.i ""sosoprc.p""
               "(input so_recno,
                 input reprice,
                 input new_order,
                 input line_pricing)" }
            {&SOSOMT1-P-TAG6}

            /*Show the items which line quantity below min order qty*/
            if new_order and line_pricing = no and this-is-rma = no
            then do:
               {gprun.i ""sorcmt.p""  "(input so_nbr,output allaccepted)"}
               if not allaccepted then
                  undo line_loop, retry line_loop.
            end.

         end. /* lineloop */

         /* SET CREDIT & FREIGHT TERMS FIELDS */
         do transaction:

            if current_cr_terms <> "" and
               current_cr_terms <> so_cr_terms
            then
               assign
                  cr_terms_changed = yes
                  so_cr_terms = current_cr_terms.

            if current_fr_terms <> ""
               and so_manual_fr_terms = no
            then
               so_fr_terms = current_fr_terms.

            assign
               current_cr_terms = ""
               current_fr_terms = ""
               so_print_pl   =  old_so_print_pl
               stop_recno = ?. /* Disable special stop processing here */

         end.

         view frame a.
         display so_ship with frame a.

         /* IF LOGISTICS ACCOUNTING IS ENABLED AND VALID FREIGHT TERMS/LIST */
         /* IS ENTERED DISPLAY THE LOGISTICS CHARGE DETAIL FRAME WHICH      */
         /* DISPLAYS THE DEFAULT LOGISTICS SUPPLIER FOR THIS ORDER WHICH CAN*/
         /* BE UPDATED IN THIS FRAME. NOTE: A CORRESPONDING lacd_det RECORD */
         /* IS CREATED AND THIS LOGISTICS SUPPLIER IS STORED THERE.         */
         if use-log-acctg and
            so_fr_terms <> "" and
            (can-find(first sod_det where sod_domain = global_domain and
                                          sod_nbr = so_nbr and
                                          sod_fr_list <> ""))
         then do transaction on error undo, retry:

            for first ft_mstr
               fields(ft_domain ft_lc_charge ft_accrual_level)
               where ft_domain = global_domain and ft_terms = so_fr_terms
            no-lock: end.

            if available ft_mstr
               and (ft_accrual_level = {&LEVEL_Shipment}
                    or ft_accrual_level = {&LEVEL_Line})
            then do:

               lv_shipfrom = "".

               for first sod_det
                  fields(sod_domain sod_nbr sod_site)
                  where sod_domain = global_domain and sod_nbr = so_nbr
                no-lock:
                  lv_shipfrom = sod_site.
               end.

               if ft_accrual_level = {&LEVEL_Shipment} and so_site <> "" then
                  lv_shipfrom = so_site.

               /* DISPLAY LOGISTICS CHARGE DETAIL */
               {gprunmo.i  &module = "LA" &program = "laosupp.p"
                           &param  = """(input 'ADD',
                                         input '{&TYPE_SO}',
                                         input so_nbr,
                                         input lv_shipfrom,
                                         input ft_lc_charge,
                                         input ft_accrual_level,
                                         input if not batchrun
                                               then
                                                  yes
                                               else
                                                  no,
                                         input yes)"""}
            end. /* IF AVAILABLE FT_MSTR AND ... */

         end.   /* TRANSACTION */

         do transaction on error undo, retry:

            /* INITIALIZE TRAILER CODES FROM CONTROL FILE FOR NEW ORDERS ONLY */
            {&SOSOMT1-P-TAG2}
            {gpgettrl.i &hdr_file="so" &ctrl_file="soc"}
            {&SOSOMT1-P-TAG3}

            /* FOR A VALID fr_list ENTERED IN SO HEADER, WHICH IS NOT A  */
            /* DEFAULT IN SALES ORDER CONTROL FILE, TRAILER CODE 1 IS    */
            /* UPDATED WITH TRAILER CODE OF THE FREIGHT LIST.            */
            if new_order
               and soc_use_frt_trl_cd
            then do:

               for first fr_mstr
                  fields(fr_domain fr_curr fr_list fr_site fr_trl_cd)
                  where fr_domain = global_domain
                    and fr_list = so_fr_list
                    and fr_site = so_site
                    and fr_curr = so_curr
               no-lock:
                  so_trl1_cd = fr_trl_cd.
               end. /* FOR FIRST fr_mstr */

            end. /* IF new-order and ... */

            /* CALCULATE FREIGHT */
            if calc_fr and so_fr_terms = "" then do:
               /* INVALID FREIGHT TERMS */
               {pxmsg.i &MSGNUM=671 &ERRORLEVEL=2 &MSGARG1=so_fr_terms}
            end. /* IF CALC_FR AND SO_FR_TERMS */

            if calc_fr and so_fr_terms <> "" then do:
               {gprun.i ""sofrcalc.p""}

               if use-log-acctg then do:
                  /* CREATE TAX RECORDS FOR FREIGHT ACCRUAL */
                  {gprunmo.i  &module = "LA" &program = "lafrtax.p"
                              &param  =
                                 """(input so_site,
                                     input '{&TYPE_SO}',
                                     input (if so_tax_date <> ? then
                                                so_tax_date
                                            else if so_due_date <> ? then
                                                so_due_date
                                            else so_ord_date),
                                     input (if so_due_date <> ? then
                                                so_due_date
                                            else so_ord_date),
                                     input so_curr,
                                     input so_ex_rate,
                                     input so_ex_rate2,
                                     input ' ',  /* BLANK PVO_EX_RATETYPE */
                                     input so_exru_seq,
                                     input this-is-rma)"""}
               end.

            end.

         end.   /* TRANSACTION */

         /* TRAILER */
         for first bill_cm
            fields(cm_domain cm_addr)
            where bill_cm.cm_domain = global_domain
              and bill_cm.cm_addr = so_bill
         no-lock: end.

         cm_recno = recid(bill_cm).

         /* Maintain Trailer Section */
/*YF10*  {gprun.i ""sosomtc.p"" "(input this-is-rma)"} *YF10*/
/*YF10*/        {gprun.i ""lysosomtc.p"" "(input this-is-rma ,input p__sft01, input p__sft02, input p__csb
                        , input p__qxt, input p__h15 )"}
	
         /* CHECK FOR A CHANGE TO THE CREDIT STATUS */
         if soc_use_btb
            and so_primary
         then do:
            /* PROCESS THE SO MASTER TO CREATE NEW EMT PO */
            {gprunp.i "soemttrg" "p" "process-order-header"
            "(input new_order,
              input so_nbr,
              output return-msg)" }

            if return-msg <> 0
            then do:
               {pxmsg.i &MSGNUM=return-msg &ERRORLEVEL=4}
               return-msg = 0.
               if not batchrun then pause.
               undo mainloop, retry mainloop.
            end. /* IF return-msg <> 0 */
         end. /* IF soc_use_btb ... */


         {gpdelp.i "soemttrg" "p"}

         for first mfc_ctrl
            fields (mfc_domain mfc_field mfc_char)
            where mfc_ctrl.mfc_domain = global_domain
            and   mfc_field           = "soc_act_stat"
            and   (mfc_char           = so_stat
                   or mfc_char        = "")
         no-lock:
         end. /* FOR FIRST mfc_ctrl ... */

         for each wkf-btb
            where w-msg-type <> ""
            break by w-po-nbr by w-msg-type:

            if first-of(w-po-nbr)
               and can-find(po_mstr
                               where po_domain = global_domain
                               and   po_nbr    = w-po-nbr)
            then do:

               for first po_mstr
                  where po_domain = global_domain
                  and   po_nbr    = w-po-nbr
               exclusive-lock:

                  assign
                     po_so_hold = if available mfc_ctrl
                                     and so_stat <> ""
                                     and bill_cm.cm_btb_cr
                                  then
                                     yes
                                  else
                                     no.
                  for first sod_det
                     where sod_domain = global_domain
                     and   sod_nbr    = w-so-nbr
                     and   sod_line   = w-sod-line
                  no-lock:
                  end. /* FOR FIRST sod_Det */
                  if available sod_det
                     and sod_det.sod_btb_type = "03"
                  then
                     po_shipvia = so_shipvia.
                  else do:
                     for first vd_mstr
                        where vd_domain = global_domain
                        and   vd_addr   = po_vend
                     no-lock:
                     end. /* FOR FIRST vd_mstr  */

                     if available vd_mstr
                     then
                        po_shipvia = vd_shipvia.
                  end. /* IF NOT AVAILABLE sod_det  */
                  po_fob = so_fob.

               end. /* FOR FIRST po_mstr */

               for first po_mstr
                  fields(po_domain  po_fob  po_nbr po_shipvia
                         po_so_hold po_stat po_xmit)
                  where po_domain = global_domain
                  and   po_nbr    = w-po-nbr
               no-lock:

               end. /* FOR FIRST po_mstr */

            end. /* IF FIRST-OF */

            assign
               doc-type = "PO"
               doc-ref  = w-po-nbr
               add-ref  = ""
               msg-type = w-msg-type
               trq-id   = 0.

            {gprun.i ""gpquedoc.p""
               "(input-output doc-type,
                 input-output doc-ref,
                 input-output add-ref,
                 input-output msg-type,
                 input-output trq-id,
                 input no)"}

         end. /* FOR EACH wkf-btb */

         {sofsemt.i}

         if so_secondary then do:

            find first wkf-btb
               where w-msg-type <> ""
               and   w-msg-type <> "ORDERS"
               and   w-msg-type <> "ORDCHG"
            exclusive-lock no-error.

            if available wkf-btb
            then do:

               assign
                  doc-type = "SO"
                  doc-ref  = w-so-nbr
                  add-ref  = ""
                  msg-type = w-msg-type
                  trq-id   = 0.

               /* QUEUE DOCUMENT FOR TRANSMISSION - EMT */
               {gprun.i ""gpquedoc.p""
                  "(input-output doc-type,
                    input-output doc-ref,
                    input-output add-ref,
                    input-output msg-type,
                    input-output trq-id,
                    input yes)"}

            end.  /* AVAIL WKF-BTB AND INVOICE METHOD = EDI */

            if available wkf-btb then delete wkf-btb.

         end. /* SECONDARY SO */

         {&SOSOMT1-P-TAG4}

         /* IMPORT EXPORT FLAG IS SET TO YES CALL THE IMPORT EXPORT DETAIL */
         /* LINE MAINTENANCE PROGRAM FOR USER TO UPDATE ied_det            */

         if not batchrun and impexp then do:

            impexp_edit = no.

            /* VIEW EDIT IMPORT EXPORT DATA ? */
            {pxmsg.i &MSGNUM=271 &ERRORLEVEL=1 &CONFIRM=impexp_edit}

            if impexp_edit then do:
               hide frame sotot no-pause.
               hide frame d no-pause.
               upd_okay = no.
               {gprun.i ""iedmta.p""
                  "(input ""1"",
                    input so_nbr,
                    input-output upd_okay )" }
            end.
         end.    /* if not batchrun and impexp */

         if not this-is-rma then do:
            /* TRAILER FRAMES FOR RMA ARE HIDDED IN sosomtc.p */
            hide frame sotot no-pause.
            hide frame d no-pause.
         end. /* IF NOT THIS-IS-RMA */

         /* FOR RMA'S, THE ADDITIONAL TRAILER ROUTINE WILL OPTIONALLY   */
         /* REDISPLAY THE RMA LINES, AND ALLOWS THE USER TO SHIP AND    */
         /* RECEIVE RMA LINES FROM RMA MAINTENANCE.                     */
         if this-is-rma then do:
            {gprun.i ""fsrmamtu.p"" "(input rma-recno)"}
         end.

         global_type = comment_type.

         /* Batch checking for SO processing*/
         for first sod_det
            fields(sod_domain sod_nbr sod_confirm)
            where sod_domain = global_domain
              and sod_nbr = so_nbr
              and not sod_confirm
         no-lock: end.

         if batch_job and available sod_det then do:
            {gprun.i ""sobatch.p""
               "(input so_nbr,
                 input-output batch_job,
                 input-output dev,
                 input-output batch_id)"}
         end.

         /* RECORD QXTEND OUTBOUND EVENT. */
/*YF10
.         {qxotrign.i
.            &EVENT-NAME = 'SalesOrderMaintenance'
.            &TABLE-NAME = 'so_mstr'
.            &ROW-ID = string(rowid(so_mstr))
.            &OID = string(so_mstr.oid_so_mstr)
.            &TRIGGER-TYPE = 'WRITE'}.
*/
/*YF10*/ {gprun.i ""lysomddp.p"" "(input rowid(so_mstr))"}

      end. /* mainloop */

      leave stopskip. /* Bypass stop processing */
   end. /*stoptrap*/

   /* This code should only be executed if STOP occured */
   /* in the mainloop */
   if old_so_print_pl <> ? and stop_recno <> ? then
      run revertSOPrintPL.
   /* Rethrow the STOP */
   STOP.

end. /*stopskip*/

{gpdelp.i "soemttrg" "p"}

status input.

PROCEDURE revertSOPrintPL:
   define buffer so_mstr for so_mstr.
   do transaction:
      find first so_mstr where recid(so_mstr) = stop_recno
      exclusive-lock no-wait.
      if available so_mstr then
         so_print_pl = old_so_print_pl.
      release so_mstr no-error.
   end.

END PROCEDURE.

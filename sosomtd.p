/* sosomtd.p  - SALES ORDER MAINTENANCE - Delete Block                        */
/* Copyright 1986-2012 QAD Inc., Santa Barbara, CA, USA.                      */
/* All rights reserved worldwide.  This is an unpublished work.               */
/* REVISION: 7.4      LAST MODIFIED: 03/29/95   BY: dzn *F0PN*                */
/* REVISION: 6.0      LAST MODIFIED: 04/27/90   BY: MLB *D021*                */
/* REVISION: 6.0      LAST MODIFIED: 08/30/90   BY: EMB *D040*                */
/* REVISION: 6.0      LAST MODIFIED: 11/13/91   BY: WUG *D887*                */
/* REVISION: 7.0      LAST MODIFIED: 09/19/91   BY: afs *F040*                */
/* REVISION: 7.0      LAST MODIFIED: 04/15/92   BY: afs *F398*                */
/* REVISION: 7.0      LAST MODIFIED: 06/04/92   BY: tjs *F504*                */
/* REVISION: 7.0      LAST MODIFIED: 07/24/92   BY: tjs *F802*                */
/* REVISION: 7.0      LAST MODIFIED: 08/20/92   BY: afs *F862*                */
/* REVISION: 7.3      LAST MODIFIED: 09/27/92   BY: jcd *G247*                */
/* REVISION: 7.3      LAST MODIFIED: 02/04/93   BY: bcm *G415*                */
/* REVISION: 7.3      LAST MODIFIED: 02/24/93   BY: sas *G457*                */
/* REVISION: 7.3      LAST MODIFIED: 04/20/93   BY: tjs *G948*                */
/* REVISION: 7.3      LAST MODIFIED: 04/20/93   BY: afs *G970*                */
/* REVISION: 7.3      LAST MODIFIED: 03/28/94   BY: WUG *GJ21*                */
/* REVISION: 7.4      LAST MODIFIED: 05/05/94   BY: afs *FN92*                */
/* REVISION: 7.4      LAST MODIFIED: 09/15/94   BY: dpm *FR43*                */
/* REVISION: 7.4      LAST MODIFIED: 11/01/94   BY: ame *GN90*                */
/* REVISION: 8.5      LAST MODIFIED: 11/29/94   BY: mwd *J034*                */
/* REVISION: 7.4      LAST MODIFIED: 01/28/95   BY: ljm *G0D7*                */
/* REVISION: 7.4      LAST MODIFIED: 02/24/95   BY: smp *F0H4*                */
/* REVISION: 8.5      LAST MODIFIED: 02/27/95   BY: dpm *J044*                */
/* REVISION: 8.5      LAST MODIFIED: 03/05/95   BY: DAH *J042*                */
/* REVISION: 7.4      LAST MODIFIED: 03/20/95   BY: smp *F0ND*                */
/* REVISION: 7.4      LAST MODIFIED: 03/29/95   BY: bcm *H0CB*                */
/* REVISION: 7.4      LAST MODIFIED: 05/30/95   BY: tvo *H0BJ*                */
/* REVISION: 7.4      LAST MODIFIED: 09/20/95   BY: ais *G0XN*                */
/* REVISION: 7.4      LAST MODIFIED: 10/05/95   BY: ais *G0YK*                */
/* REVISION: 8.5      LAST MODIFIED: 03/22/96   BY: vrn *G1R5*                */
/* REVISION: 8.5      LAST MODIFIED: 04/11/96   BY: *J04C* Sue Poland         */
/* REVISION: 8.5      LAST MODIFIED: 04/11/96   BY: *J04C* Markus Barone      */
/* REVISION: 8.6      LAST MODIFIED: 09/23/96   BY: *K003* forrest mori       */
/* REVISION: 8.5      LAST MODIFIED: 10/14/96   BY: *H0N7* Sue Poland         */
/* REVISION: 8.6      LAST MODIFIED: 10/22/96   BY: *K004* Elke Van Maele     */
/* REVISION: 8.6      LAST MODIFIED: 11/12/96   BY: *G2H6* Suresh Nayak       */
/* REVISION: 8.6      LAST MODIFIED: 06/30/97   BY: *K0FL* Taek-Soo Chang     */
/* REVISION: 8.6      LAST MODIFIED: 07/07/97   BY: *K0DT* Arul Victoria      */
/* REVISION: 8.6      LAST MODIFIED: 07/11/97   BY: *K0DH* Kieu Nguyen        */
/* REVISION: 8.6      LAST MODIFIED: 09/14/97   BY: *K0J2* Kieu Nguyen        */
/* REVISION: 8.6      LAST MODIFIED: 10/06/97   BY: *K0KJ* Joe Gawel          */
/* REVISION: 8.6      LAST MODIFIED: 12/01/97   BY: *K1BN* Bryan Merich       */
/* REVISION: 8.6E     LAST MODIFIED: 02/23/98   BY: *L007* Annasaheb Rahane   */
/* REVISION: 8.6E     LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan         */
/* REVISION: 8.6E     LAST MODIFIED: 06/25/98   BY: *L034* Russ Witt          */
/* REVISION: 8.6E     LAST MODIFIED: 07/03/98   BY: *L024* Sami Kureishy      */
/* REVISION: 9.0      LAST MODIFIED: 11/24/98   BY: *M017* Mayse Lai          */
/* REVISION: 9.0      LAST MODIFIED: 03/13/99   BY: *M0BD* Alfred Tan         */
/* REVISION: 9.0      LAST MODIFIED: 08/10/99   BY: *J3K7* Surekha Joshi      */
/* REVISION: 9.1      LAST MODIFIED: 10/12/99   BY: *K23M* Kedar Deherkar     */
/* REVISION: 9.1      LAST MODIFIED: 10/27/99   BY: *N03P* Mayse Lai          */
/* REVISION: 9.1      LAST MODIFIED: 11/03/99   BY: *N04P* Robert Jensen      */
/* REVISION: 9.1      LAST MODIFIED: 03/03/00   BY: *N05Q* David Morris       */
/* REVISION: 9.1      LAST MODIFIED: 04/25/00   BY: *N0CG* Santosh Rao        */
/* REVISION: 9.1      LAST MODIFIED: 06/28/00   BY: *M0PF* Kedar Deherkar     */
/* REVISION: 9.1      LAST MODIFIED: 08/12/00   BY: *N0KN* Mark Brown         */
/* REVISION: 9.1      LAST MODIFIED: 09/25/00   BY: *L121* Gurudev Chennuru   */
/* REVISION: 9.1      LAST MODIFIED: 11/13/00   BY: *N0TN* Jean Miller        */
/* REVISION: 9.1      LAST MODIFIED: 10/10/00   BY: *N0X3* Mudit Mehta        */
/* Revision: 1.36          BY: Katie Hilbert      DATE: 04/01/01  ECO: *P002* */
/* Revision: 1.37          BY: Ellen Borden       DATE: 07/09/01  ECO: *P007* */
/* Revision: 1.38          BY: Jean Miller        DATE: 08/09/01  ECO: *M11Z* */
/* Revision: 1.39          BY: Russ Witt          DATE: 10/17/01  ECO: *P021* */
/* Revision: 1.42          BY: Samir Bavkar       DATE: 04/29/02  ECO: *P042* */
/* Revision: 1.43          BY: Ashwini Ghaisas    DATE: 06/18/02  ECO: *M1ZF* */
/* Revision: 1.44          BY: Robin McCarthy     DATE: 07/15/02  ECO: *P0BJ* */
/* Revision: 1.45          BY: Reetu Kapoor       DATE: 07/29/02  ECO: *P0CG* */
/* Revision: 1.47          BY: Geeta Kotian       DATE: 10/23/02  ECO: *N1XV* */
/* Revision: 1.48          BY: Robin McCarthy     DATE: 11/08/02  ECO: *P0JS* */
/* Revision: 1.50          BY: Paul Donnelly (SB) DATE: 06/28/03  ECO: *Q00P* */
/* Revision: 1.51          BY: Shoma Salgaonkar   DATE: 02/23/04  ECO: *P1PY* */
/* Revision: 1.51.3.1      BY: Tejasvi Kulkarni   DATE: 07/14/06  ECO: *P4MJ* */
/* Revision: 1.51.3.2      BY: Anuradha K.        DATE: 04/12/07  ECO: *Q13T* */
/* Revision: 1.51.3.6      BY: Dipanshu Talwar    DATE: 08/27/08  ECO: *P6ZZ* */
/* Revision: 1.51.3.7      BY: Sandeep Rohila    DATE: 03/12/09  ECO: *Q2K4* */
/* Revision: 1.51.3.12     BY: Sandeep Rohila    DATE: 11/30/09  ECO: *Q3M0* */
/* Revision: 1.51.3.15     BY: Keny Fernandes    DATE: 11/22/11  ECO: *Q54F* */
/* Revision: 1.51.3.16     BY: Puneeth Kudva        DATE: 05/16/12  ECO: *Q5CL* */
/* $Revision: 1.52 $     BY: Aurimas Blazys        DATE: 2016/07/07  ECO: *YF10* */
/*-Revision end---------------------------------------------------------------*/


/******************************************************************************/
/* All patch markers and commented out code have been removed from the source */
/* code below. For all future modifications to this file, any code which is   */
/* no longer required should be deleted and no in-line patch markers should   */
/* be added.  The ECO marker should only be included in the Revision History. */
/******************************************************************************/

/******************************************************************************/
/* Due to the introduction of the module Project Realization Management (PRM) */
/* the term Material Order (MO) replaces all previous references to Service   */
/* Engineer Order (SEO) in the user interface. Material Order is a type of    */
/* Sales Order used by an engineer to obtain inventory needed for service     */
/* work. In PRM, a material order is used to obtain inventory for project     */
/* work.                                                                      */
/******************************************************************************/

/*V8:ConvertMode=Maintenance                                                  */

{mfdeclre.i}
{cxcustom.i "SOSOMTD.P"}
{gplabel.i}
{apconsdf.i}   /* PRE-PROCESSOR CONSTANTS FOR LOGISTICS ACCOUNTING */
{ieconsdf.i}

define new shared variable prev_site like sod_site.
define new shared variable sonbr like sod_nbr.
define new shared variable soline like sod_line.
define new shared variable prev_type like sod_type.
define new shared variable delete_line like mfc_logical.
define new shared variable cmtindx     like cmt_indx.

define shared variable line like sod_line.
define shared variable del-yn like mfc_logical.
define shared variable prev_due like sod_due_date.
define shared variable prev_qty_ord like sod_qty_ord.
define shared variable prev_abnormal like sod_abnormal.
define shared variable prev_consume like sod_consume.
define shared variable so_recno as recid.
define shared variable qty_req like in_qty_req.
define shared variable merror like mfc_logical initial no.
define shared variable trnbr like tr_trnbr.
define shared variable eff_date as date.
define shared variable qty as decimal.
define shared variable sod_recno as recid.
define shared variable part as character format "x(18)".
define shared variable cfexists like mfc_logical.

define variable i as integer.
define variable week as integer.
define variable so_db like si_db.
define variable err_flag as integer.
define variable tax_nbr like tx2d_nbr initial "".
define variable tax_tr_type like tx2d_tr_type initial "11".
define variable qty_all     like in_qty_all.
define variable mc-error-number like msg_nbr no-undo.
define variable shipper_found as integer no-undo.
define variable save_abs like abs_par_id no-undo.
define variable l_conf_ship as   integer     no-undo.
define variable l_conf_shid like abs_par_id  no-undo.
define variable use-log-acctg as logical no-undo.
define variable tax_type like tx2d_tr_type no-undo.
define variable l_error_flag      as logical no-undo.
define variable l_reason-comment  like mfc_logical        no-undo.
define variable l_tr-cmtindx      like tr_fldchg_cmtindx  no-undo.
define variable l_reason-code     like rsn_code           no-undo.

/* EMT SPECIFIC VARIABLES */
define variable del-ref-yn as   logical.
define variable queue-doc  as   logical.
define variable use-cmf    like mfc_logical.

{sobtbvar.i } /* EMT SHARED WORKFILES AND VARIABLES */

{gpfilev.i} /* VARIABLE DEFINITIONS FOR gpfile.i */

define buffer seoc_buf  for seoc_ctrl.
define buffer rmdbuff   for rmd_det.

define shared workfile cf_sod_rm
   field cf_ccq_name as character.

form
   l_reason-code    colon 17 label "Reason Code"
   l_reason-comment colon 17 label "Comments"
with frame rsn overlay side-labels  width 29 row 11 column 25.

/* SET EXTERNAL LABELS */
setFrameLabels(frame rsn:handle).

/* CHECK TO SEE IF PRM IS INSTALLED - SETS PRM-ENABLED FLAG */
{pjchkprm.i}

{cclc.i} /* DETERMINE IF CONTAINER AND LINE CHARGES IS ENABLES */

for first soc_ctrl
   fields( soc_domain soc_so_hist soc_use_btb)
 where soc_ctrl.soc_domain = global_domain no-lock: end. /* FOR FIRST SOC_CTRL
 */

/* CHECK IF LOGISTICS ACCOUNTING IS ENABLED */
{gprun.i ""lactrl.p"" "(output use-log-acctg)"}

for first so_mstr
   fields( so_domain so_app_owner so_ca_nbr so_cmtindx so_curr so_cust so_bill
          so_exru_seq so_ex_rate so_ex_rate2 so_ex_ratetype
          so_fsm_type so_inv_mthd so_nbr so_quote so_rev so_secondary
          so_ship so_slspsn so_stat)
   where recid(so_mstr) = so_recno no-lock:
end. /* FOR FIRST SO_MSTR */

assign
   so_db = global_db
   line = 0.

/* DO NOT ALLOW USER DELETE OF SALES ORDERS OWNED BY AN */
/* EXTERNAL SYSTEM. */
if so_app_owner > "" then do:
   /* Do not allow delete of external orders */
   /* Cannot Process.  Document owned by application # */
   {pxmsg.i &MSGNUM=2948 &ERRORLEVEL=4 &MSGARG1=so_app_owner}
   merror = yes.
   return.
end.

if so_fsm_type = 'RMA' then
   assign tax_tr_type = '36'.

/* DELETE EMT PO's */
if soc_use_btb and not so_secondary then do:

   for each sod_det  where sod_det.sod_domain = global_domain and  sod_nbr =
   so_nbr
   exclusive-lock break by sod_btb_po:

      find first wkf-btb2 where w2-sodline = sod_line
      no-lock no-error.

      /* SECONDARY SO IS NOT PICKED OR SHIPPED */
      if available wkf-btb2 and w2-pod-so-status = "" then do:

         /* EXIT IF ANY PENDING CHANGES */
         if w2-cmf-status <> "x" then do:
            /* Change on BTB SO with pending changes is not allowed */
            {pxmsg.i &MSGNUM=2834 &ERRORLEVEL=3}
            merror = yes.
            return.   /* undo order header */
         end.

         if first-of(sod_btb_po) then do:

            /* UNQUEUE DOCUMENT  FOR TRANSMISSION - BTB */
            for first trq_mstr
               fields( trq_domain trq_add_ref trq_doc_ref trq_doc_type trq_id
               trq_msg_type)
                where trq_mstr.trq_domain = global_domain and  trq_doc_type =
                "PO"
                 and trq_doc_ref = sod_btb_po
            no-lock: end. /*FOR FIRST TRQ_MSTR */

            if available trq_mstr then do:
               assign
                  doc-type = trq_doc_type
                  doc-ref  = trq_doc_ref
                  add-ref  = trq_add_ref
                  msg-type = trq_msg_type
                  trq-id = trq_id.
               /* UNQUEUE DOCUMENT */
               {gprun.i ""gpquedoc.p""
                  "(input-output doc-type,
                    input-output doc-ref,
                    input-output add-ref,
                    input-output msg-type,
                    input-output trq-id,
                    input no)"}
               if trq-id <> 0 then do:
                  /* Unqueueing failed */
                  {pxmsg.i &MSGNUM=2808 &ERRORLEVEL=3}
                  merror = yes.
                  return.   /* undo order header */
               end.
            end. /* available trq_mstr - unqueue document */

            /* USE CMF RECORDS ? - QUEUE DOCUMENT ? */
            if  w2-po-xmit = "2" or w2-po-xmit = "4"
            or (w2-po-xmit = "3" and w2-cmf-status = "x")
            then
               assign
                  use-cmf = yes
                  queue-doc = yes.
            else
               assign
                  use-cmf = no
                  queue-doc = no.

            /* TRANSFER DELETE OF PRIM.SO TO PO AND SEC.SO */
            /* ADDED THE FOURTEENTH INPUT PARAMETER AS 'YES' */
            {gprun.i ""socram01.p""
               "(input so_nbr,
                 input sod_line,
                 input-output sod_btb_po,
                 input-output sod_btb_pod_line,
                 input yes,
                 input no,
                 input sod_site,
                 input so_ship,
                 input sod_qty_ord,
                 input no,
                 input sod_due_date,
                 input sod_due_date,
                 input use-cmf,
                 input yes,
                 output return-msg)"}

            /* DISPLAY ERROR MESSAGE RETURNED FROM SOCRAM01.P */
            if     return-msg <> 0
               and return-msg <> 343
               and not((return-msg = 395
                     or return-msg = 326
                     or return-msg = 336)
               and sod_qty_ord = sod_qty_ship
               and sod_qty_inv = 0)
            then do:
               {pxmsg.i &MSGNUM=return-msg &ERRORLEVEL=3}
               merror = yes.
               return.   /* undo order header */
            end.

            if w2-po-xmit = "1" and sod_btb_po <> "" then
               queue-doc = yes.

            if queue-doc then do:

               /* USE WORKFILE TO QUEUE DOCUMENT AGAIN LATER ON */
               find first wkf-btb where w-so-nbr = so_nbr
                  and w-po-nbr = sod_btb_po
                  and w-pod-line = sod_btb_pod_line
               no-lock no-error.

               if not available wkf-btb
                  or w-sod-line <> sod_line
               then do:
                  /* CREATE WORKFILE TO QUEUE DOCUMENT AGAIN */
                  create wkf-btb.
                  assign
                     w-so-nbr = so_nbr
                     w-sod-line = sod_line
                     w-btb-vend = sod_btb_vend
                     w-btb-type = sod_btb_type
                     w-po-nbr = sod_btb_po
                     w-pod-line = 0.
               end.  /* not available wkf-btb */

               w-msg-type = "ORDCHG".

            end. /* que-doc = yes */

         end.  /* if first-of(sod_btb_po) */

      end. /* if available wkf-btb2 and w2-pod_so_status = "" */

      /* SECONDARY SO IS SHIPPED OR PICKED */
      else if available wkf-btb2 then do:

         /* ASK USER TO BREAK LINK IF TRANSHIPMENT */
         if sod_btb_type = "02" then do:

            /* Delete the SO references located in the PO */
            {pxmsg.i &MSGNUM=2847 &ERRORLEVEL=1 &CONFIRM=del-ref-yn}

            /* BREAK LINK BETWEEN PRIMARY SO AND PO */
            if del-ref-yn then do:
               find po_mstr  where po_mstr.po_domain = global_domain and
               po_nbr = sod_btb_po exclusive-lock.
               find pod_det  where pod_det.pod_domain = global_domain and
               pod_nbr = sod_btb_po
                              and pod_line = sod_btb_pod_line
               exclusive-lock.
               assign
                  po_so_nbr = ""
                  pod_sod_line = 0.
            end.
            else do:
               merror = yes.
               return.
            end.

         end.  /* if sod_btb_type = "02" */

         else do: /* sod_btb_type = "01" or "03" */

            run ck_pod_so_status
               (input sod_btb_po ,
                input sod_btb_pod_line,
                input w2-pod-so-status,
                output merror).

            if merror = yes then
               return.   /* undo order header */

         end.     /* sod_btb_type = "01" or"03" */

      end.  /* pod_so_status is "picked" or "shipped" */

      /* DELETE DIRECT ALLOCATION AT THE SBU SITE */
      if available wkf-btb2
         and (w2-po-xmit = "1" or w2-po-xmit = "2")
         and sod_dir_all
      then do:

         /* SWITCH TO DATABASE OF SECONDARY BUSINESS UNIT */
         {gprun.i ""gpalias2.p"" "(sod_btb_vend, output err_flag)"}

         if err_flag = 0 then do: /* SBU DATABASE CONNECTION = OK */

            /* DELETE DIRECT SALES ORDER ALLOCATIONS BTB ON SBU */
            {gprun.i ""sosoall.p""
               "(sod_nbr,
                 sod_line,
                 so_ship,
                 so_bill,
                 so_cust,
                 so_fsm_type,
                 sod_part,
                 sod_qty_all + sod_qty_pick,
                 sod_um_conv,
                 sod_btb_vend,
                 yes)"}
         end.      /* if err_flag = 0 */

         /* CHANGE DATABASE BACK TO PRIMARY BUSINESS UNIT */
         {gprun.i ""gpalias3.p"" "(so_db, output err_flag)"}

      end. /* delete direct allocation */

   end.    /* for each sod_det */

end. /* if soc_use_btb and so_primary */

/* IF VENDOR IS AUTHORIZED TO RECEIVE PO'S THEN QUEUE PO'S  */
/* FOR TRANSMISSION                                         */
/* PRIMARY SO */
if not so_secondary then do:

   for each wkf-btb where w-msg-type <> ""
   exclusive-lock break by w-po-nbr:

      if last-of(w-po-nbr) then do:

         for first ad_mstr
            fields( ad_domain ad_addr ad_po_mthd)
             where ad_mstr.ad_domain = global_domain and  ad_addr = w-btb-vend
             no-lock:
         end. /* FOR FIRST AD_MSTR */

         for first vd_mstr
            fields( vd_domain vd_addr vd_rcv_held_so)
             where vd_mstr.vd_domain = global_domain and  vd_addr = w-btb-vend
             no-lock:
         end. /* FOR FIRST VD_MSTR */

         for first mfc_ctrl
            fields (mfc_domain mfc_field mfc_char)
            where mfc_ctrl.mfc_domain = global_domain
            and   mfc_field           = "soc_act_stat"
            and   (mfc_char           = so_stat
                   or mfc_char        = "")
         no-lock:
         end. /* FOR FIRST mfc_ctrl */

         if available ad_mstr and (ad_po_mthd = "e" or ad_po_mthd = "b") and
            available vd_mstr and
            ((can-find(first po_mstr
                        where po_mstr.po_domain = global_domain and (  po_nbr
                        = sod_btb_po
                         and po_xmit = "4")))
            or
            ((can-find(first po_mstr
                        where po_mstr.po_domain = global_domain and (  po_nbr
                        = sod_btb_po
                         and po_xmit = "1")))
            and (so_stat = ""
                 or (so_stat <> ""
                     and vd_rcv_held_so = yes
                     and available mfc_ctrl))))
            and w-po-nbr <> ""
         then do:
            assign
               doc-type = "PO"
               doc-ref  = w-po-nbr
               add-ref  = ""
               msg-type = w-msg-type
               trq-id   = 0.

            /* QUEUE DOCUMENT FOR TRANSMISSION - BTB */
            {gprun.i ""gpquedoc.p""
               "(input-output doc-type,
                 input-output doc-ref,
                 input-output add-ref,
                 input-output msg-type,
                 input-output trq-id,
                 input yes)"}.

         end. /* AVIAL AD_MSTR AND ... AND AVAIL VD_MSTR AND ...*/

      end. /* IF LAST-OF(W-PO-NBR) */

      delete wkf-btb.

   end. /* EACH WKF-BTB WHERE W-MSG-TYPE <> "" */

end.  /* IF SO_PRIMARY */

/* SECONDARY SO */
else do:

   find first wkf-btb where w-msg-type <> "" exclusive-lock no-error.

   if available wkf-btb
      and substring(so_inv_mthd,3 ,1) = "e"
   then do:

      assign
         doc-type = "SO"
         doc-ref  = w-so-nbr
         add-ref  = ""
         msg-type = w-msg-type
         trq-id   = 0.

      /* QUEUE DOCUMENT FOR TRANSMISSION - BTB */
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

if so_fsm_type = " "
and avail(soc_ctrl)
and soc_so_hist
and can-find(first sod_det
                where sod_domain = global_domain
                and   sod_nbr    = so_nbr)
then do:
   /* PROMPT FOR A REASON CODE IF ANY SOD FIELDS NEED TO BE TRACKED */
   /* UPON DELETE REASON CODES WITH A TYPE OF ORD_CHG MUST EXIST IN */
   /* ORDER FOR A REASON CODE AND COMMENT TO BE ENTERED.            */
   if can-find(first tblc_mstr
                  where tblc_domain = global_domain
                  and   tblc_table  = "sod_det"
                  and   tblc_delete)
   then do:
      assign
         global_type = " "
         global_ref  = so_nbr.
      run p-reason-code.
   end. /* IF CAN-FIND(FIRST tblc_mstr */
   hide frame rsn.
end. /* IF so_fsm_type = " " */

for each sod_det
    where sod_det.sod_domain = global_domain and  sod_nbr = so_mstr.so_nbr
exclusive-lock:

   line = line + 1.

   assign
      prev_type = sod_type
      prev_due      = sod_due_date
      prev_qty_ord  = sod_qty_ord * sod_um_conv
      prev_abnormal = sod_abnormal
      prev_consume  = sod_consume
      prev_site     = sod_site .

   for first si_mstr
      fields (si_domain si_site si_db)
      where si_domain = global_domain
      and si_site = sod_site
   no-lock:
   end.

   /* SET ALATAS TO THAT OF */
   if si_db <> global_db and si_db <> ""
   then do:
      {gprun.i ""gpmdas.p"" "(si_db,output err_flag)"}
   end. /* IF si_db <> global_db */

   /* Check for Non-Consigned Shipment exist */
   {gprun.i ""socnshp.p""
       "(input  sod_consignment,
         input  sod_line,
         input  so_nbr,
         output l_error_flag)"}

   /* SET ALIAS BACK TO THR ORIGINAL DATABASE*/
   if global_db <> so_db
   then do:
      {gprun.i ""gpmdas.p"" "(so_db,output err_flag)" }
   end. /* IF global_db <> so_db */

   if l_error_flag
   then do:
      merror = yes.
      return.
   end.



   if sod_qty_inv <> 0 then do:
      if so_fsm_type = "SEO" then do:
         /* CANNOT DELETE PARTIALLY PROCESSED MATERIAL ORDER */
         {pxmsg.i &MSGNUM=3356 &ERRORLEVEL=3}
      end.
      else do:
         /* Outstanding qty to invoice, delete not allowed. */
         {pxmsg.i &MSGNUM=604 &ERRORLEVEL=3}
      end.
      merror = yes.
      return. /*undo order-header.*/
   end.   /* if sod_qty_inv <> 0 */

   if so_fsm_type = "RMA"
   then do:
      for first rma_mstr
         where rma_mstr.rma_domain = global_domain
         and   rma_nbr = so_nbr
         and   rma_prefix = "C"
      no-lock:
      end.
      if available rma_mstr
      then do:
         if sod_det.sod_qty_ship <> 0
         then do:
            /* RMA contains invoiced lines and cannot be deleted */
            {pxmsg.i &MSGNUM=8213 &ERRORLEVEL=3}
            merror = yes.
            return. /*undo order-header.*/
         end. /* IF sod_det.sod_qty_ship <> 0 */
      end. /* IF AVAILABLE rma_mstr */

   end. /* IF so_fsm_type = "RMA" */

   assign
      l_conf_ship   = 0
      shipper_found = 0.

   /* ADDED TWO OUTPUT PARAMETERS L_CONF_SHIP, L_CONF_SHID */
   {gprun.i ""rcsddelb.p"" "(input sod_nbr,
                             input sod_line,
                             input sod_site,
                             output shipper_found,
                             output save_abs,
                             output l_conf_ship,
                             output l_conf_shid)"}

   if shipper_found > 0 then do:
      save_abs = substring(save_abs,2,20).
      /* # Shippers/Containers exists for order, including # */
      {pxmsg.i &MSGNUM=1118 &ERRORLEVEL=3
               &MSGARG1=shipper_found
               &MSGARG2=save_abs}
      merror = yes.
      return. /* undo order-header */
   end.

   /* IF ALL THE SHIPPERS FOR THE ORDER HAVE BEEN CONFIRMED        */
   /* AND INVOICE POSTED DISPLAY WARNING AND ALLOW TO DELETE ORDER */
   else if l_conf_ship > 0 then do:
      l_conf_shid = substring(l_conf_shid,2,20).
      /* # CONFIRMED SHIPPERS EXIST FOR ORDER, INCLUDING # */
      {pxmsg.i &MSGNUM=3314 &ERRORLEVEL=2
               &MSGARG1=l_conf_ship
               &MSGARG2=l_conf_shid}

      /* IF END-ERROR IS PRESSED, UNDO */
      if not batchrun
      then do:
         readkey.
         if keyfunction(lastkey) = "END-ERROR"
         then do:
            merror = yes.
            return.
         end. /* IF KEYFUNCTION(lastkey) */
      end. /* IF NOT batchrun THEN DO */

   end. /* IF l_conf_ship > 0 */

   if sod_fsm_type = "SEO" and
      sod_qty_ship - sod_qty_cons - sod_qty_ret <> 0
   then do:
      /* OUTSTANDING QTY TO BE CONSUMED OR RETURNED */
      {pxmsg.i &MSGNUM=7307 &ERRORLEVEL=3}
      merror = yes.
      return. /*undo order-header.*/
   end.

   /* Call GPSIVER.P to validate sod_site. */
   {gprun.i ""gpsiver.p""
      "(input sod_site,
        input ?,
        output return_int)"}
   if return_int = 0 then do:
      /* DELETE NOT ALLOWED; USER DOES NOT */
      /* HAVE ACCESS TO DETAIL SITE(S)     */
      {pxmsg.i &MSGNUM=2709 &ERRORLEVEL=4}
      merror = yes.
      return.  /* undo order header */
   end.

   if sod_sched and
      (can-find(first sch_mstr  where sch_mstr.sch_domain = global_domain and (
       sch_type = 1
                                 and sch_nbr = sod_nbr
                                 and sch_line = sod_line))
   or
      can-find(first sch_mstr  where sch_mstr.sch_domain = global_domain and (
      sch_type = 2
                                and sch_nbr = sod_nbr
                                and sch_line = sod_line))
   or
      can-find(first sch_mstr  where sch_mstr.sch_domain = global_domain and
      sch_type = 3
                                and sch_nbr = sod_nbr
                                and sch_line = sod_line))
   then do:
      /* Schedule exists, delete not allowed */
      {pxmsg.i &MSGNUM=6022 &ERRORLEVEL=3}
      merror = yes.
      return.
   end.

   if sod_confirm then do:

      /* TO FIX PROBLEMS WITH ALLOCATION UPDATES, RMA ALLOCATIONS AND     */
      /* SHIPPING OVERAGES, TELL MFSOTR.I HOW MUCH TO MODIFY ALLOCATIONS  */
      /* BY INSTEAD OF LETTING IT DECIDE FOR ITSELF.                      */
      assign
         qty_all = - (sod_qty_all + sod_qty_pick) * sod_um_conv.

      /* Use MFSOTR.I (with DELETE option) to reverse */
      /* inventory transaction history records.       */
      {mfsotr.i "DELETE"}

      if avail(tr_hist)
      and so_fsm_type = " "
      and avail(soc_ctrl)
      and soc_so_hist
      then
         assign
            tr_rsn_code       = l_reason-code
            tr_fldchg_cmtindx = l_tr-cmtindx.

      sod_recno = recid(sod_det).

      /* BACK OUT QTYS FORECASTED FOR ALL EXCEPT RMA RECEIPT LINES */
      if sod_rma_type <> "I" then do:
         /* FORECAST RECORD */
         /* CHANGED '- sod_qty_ord' to                                */
         /* '- (sod_qty_ord - (sod_qty_ship - sod_qty_inv)'           */
         /* TO TAKE PREVIOUS SHIPMENTS INTO ACCOUNT                   */
         for first si_mstr
            fields( si_domain si_cur_set si_db si_git_acct si_git_cc
                   si_git_sub si_gl_set si_site)
             where si_mstr.si_domain = global_domain and  si_site = sod_site
             no-lock:
         end. /* FOR FIRST si_mstr */
         if available si_mstr
         then
         if si_db = so_db
         then do:
            {mfsofc01.i
               &part=sod_part
               &site=sod_site
               &date=sod_due_date
               &quantity="- (sod_qty_ord -
                            (sod_qty_ship - sod_qty_inv)) * sod_um_conv"
               &consume=sod_consume
               &type=sod_type}

            {mfsofc02.i
               &nbr=sod_nbr
               &line=string(sod_line)
               &consume=sod_consume}
         end. /* IF si_db = so_db THEN */
      end.

      {mfmrw.i "sod_det" sod_part sod_nbr string(sod_line) """"
         ? sod_due_date "0" "DEMAND" SALES_ORDER sod_site}

      /* Use SOLNEDL.P (surrounded by GPALIAS3.P calls) to delete line */
      /* information that might exist in other databases.              */
      for first si_mstr
         fields( si_domain si_cur_set si_db si_git_acct si_git_cc
                si_git_sub si_gl_set si_site)
          where si_mstr.si_domain = global_domain and  si_site = sod_site
          no-lock:
      end. /* FOR FIRST SI_MSTR */

      if si_db <> so_db then do:

         {gprun.i ""gpalias3.p"" "(si_db, output err_flag)" }

         assign
            sonbr  = so_nbr
            soline = sod_line .

         /* ADDED INPUT PARAMETER yes TO EXECUTE MFSOFC01.I   */
         /* AND MFSOFC02.I WHEN CALLED FROM HEADER            */
         {gprun.i ""solndel.p""
            "(input yes)"}

         /* Reset the db alias to the sales order database */
         {gprun.i ""gpalias3.p"" "(so_db, output err_flag)" }

      end.

   end.

   /* DELETE LINE ITEM COMMENTS */
   for each cmt_det exclusive-lock  where cmt_det.cmt_domain = global_domain
   and  cmt_indx = sod_cmtindx:
      delete cmt_det.
   end.

   /* DELETE ALLOCATION DETAIL*/
   for each lad_det  where lad_det.lad_domain = global_domain and
            lad_dataset = "sod_det"
        and lad_nbr     = sod_nbr
        and lad_line    = string(sod_line)
   exclusive-lock:

      find ld_det  where ld_det.ld_domain = global_domain and  ld_site =
      lad_site
                    and ld_loc  = lad_loc
                    and ld_lot  = lad_lot
                    and ld_ref  = lad_ref
                    and ld_part = lad_part
      exclusive-lock.
         assign
            ld_qty_all = ld_qty_all - (lad_qty_all + lad_qty_pick).
      delete lad_det.
   end.

   /* DELETE KIT COMPONENT DETAIL ALLOCATIONS */
   {gprun.i ""soktdel1.p"" "(input recid(sod_det))"}

   /* Call SOSOMTK.P to delete any Sales Order Bill (sob_det) records */
   sod_recno = recid(sod_det).
   if can-find (first sob_det  where sob_det.sob_domain = global_domain and
   sob_nbr  = sod_nbr
                                and sob_line = sod_line)
   then do:
      delete_line = yes.
      {gprun.i ""sosomtk.p""}
   end.

   /* Use MFMRW.I to update the MRP Workfile */
   {mfmrw.i "sod_fas" sod_part sod_nbr string(sod_line) """"
      ? sod_due_date 0 "SUPPLYF" PLANNED_F/A_ORDER sod_site}

   if sod_sched then do:
      find scx_ref
          where scx_ref.scx_domain = global_domain and  scx_type = 1
           and scx_order = sod_nbr
           and scx_line = sod_line
      exclusive-lock.
      delete scx_ref.
   end.

   /* Kits  were not included in the initial 8.5 SSM release, but,    */
   /* when they're reincorporated into 8.5, we'll need to reset the   */
   /* kit file for type "K" order lines. Reset the kit master, making */
   /* it available for other engineers to use/check out.              */
   if sod_type = "K" then do:
      find fkt_mstr  where fkt_mstr.fkt_domain = global_domain and  fkt_serial
      = sod_serial
      exclusive-lock no-error.
      if available fkt_mstr
      then
         assign
            fkt_in_use   = no
            fkt_eng_code = "".
   end.

   /* DELETE THE PBU DATA WHEN DELETING A SECONDARY SO */
   if so_secondary then do:
      find btb_det  where btb_det.btb_domain = global_domain and  btb_so =
      sod_nbr
                     and btb_sod_line = sod_line
      exclusive-lock no-error.
      if available btb_det then
         delete btb_det.
   end.

   if cfexists and sod__qadc01 <> "" then do:
      /* Copy the contents of the field sod__qadc01 into a workfile */
      /* The filenames that this field relates to will be deleted in*/
      /* sosomtp.p                                                  */
      create cf_sod_rm.
      assign
         cf_ccq_name = sod__qadc01.
      if recid(cf_sod_rm) = -1 then.
   end.

   /* DELETE APM SALES ORDER DETAIL RELATIONSHIP RECORDS */
   {gprun.i ""sosoapm4.p"" "(input sod_nbr, input sod_line)"}

   if using_line_charges then do:
      /* DELETE SALES ORDER DETAIL LINE CHARGE RECORDS */
      {gprunmo.i &module = "ACL" &program = ""sosodlcd.p""
         &param = """(input sod_nbr, input sod_line)"""}
   end.

   /* RESET MATERIAL ORDER NUMBER AND LINE */
   /* ON THE PROJECT ACTIVITY ORDER LINE   */
   if prm-enabled then do:
      {gprunmo.i &module = "PRM" &program = ""pjmodel.p""
         &param = """(buffer sod_det)"""}
   end.

   /* IF LOGISTICS ACCOUNTING IS ENABLED */
   if use-log-acctg then do:

      tax_type = "41".
      if so_fsm_type = "RMA" then
         tax_type = "46".

      /* DELETE LOGISTICS ACCOUNTING tx2d_det RECORDS FOR SALES ORDER LINE */
      {gprunmo.i &module = "LA" &program = "lataxdel.p"
                 &param  = """(input tax_type,
                               input sod_nbr,
                               input sod_line)"""}
   end.   /* use-log-acctg */

   /* DELETE IMPORT EXPORT HISTORY RECORDS */
   for first  iec_ctrl
      fields (iec_domain iec_authority)
      where iec_ctrl.iec_domain = global_domain
   no-lock:
   end. /* FOR FIRST iec_ctrl */

   if available iec_ctrl
   then do:

      /* DELETE INTRASTAT RECORDS */
      for each ieh_hist
         where ieh_domain    = global_domain
         and   ieh_authority = iec_authority
         and   ieh_type      = {&IE_TYPE_SO}
         and   ieh_nbr       = sod_nbr
         and   ieh_line      = sod_line
      exclusive-lock:
         delete ieh_hist.
      end. /* FOR EACH ieh_hist */

      /* DELETE EXTRASTST RECORDS */
      for each  ieh_hist
         where  ieh_domain    = global_domain
         and    ieh_authority = "EXSTAT"
         and    ieh_type      = {&IE_TYPE_SO}
         and    ieh_nbr       = sod_nbr
         and    ieh_line      = sod_line
      exclusive-lock:
         delete ieh_hist.
      end. /* FOR EACH ieh_hist */

   end. /* IF AVAILABLE iec_ctrl */

   delete sod_det.

end.

do on endkey undo, leave:
   /* Line item record(s) deleted */
   {pxmsg.i &MSGNUM=24 &ERRORLEVEL=1 &MSGARG1=line}
   hide message.
end.

/* Delete all Import/Export records for this S.O. */
for each ied_det  where ied_det.ied_domain = global_domain and
         ied_type = "1" and
         ied_nbr = so_nbr
exclusive-lock:
   delete ied_det.
end.

for each ie_mstr  where ie_mstr.ie_domain = global_domain and
         ie_type = "1" and
         ie_nbr = so_nbr
exclusive-lock:
   delete ie_mstr.
end.

/* Delete Comments associated with so_mstr */
for each cmt_det  where cmt_det.cmt_domain = global_domain and  cmt_indx =
so_cmtindx
exclusive-lock:
   delete cmt_det.
end.

/* Call TXDELETE.P to delete tax records for the S.O.   */
/* CHANGED THE THIRD PARAMETER FROM TAX_NBR TO SO_QUOTE */
/* TO ENSURE THAT ALL THE TAX RECORDS FOR SALES ORDER   */
/* RELEASED FROM SALES QUOTE ARE CORRECTLY DELETED      */
{gprun.i ""txdelete.p""
   "(input tax_tr_type,
     input so_nbr,
     input so_quote)"}

/*IF INVOICE IS CREATED THEN DELETE THE TAX RECORD */
/*BELONGING TO THE INVOICE                         */
if so_inv_nbr <> ""
then do:
   {gprun.i ""txdelete.p""
       "(input "16",
         input so_inv_nbr,
         input so_nbr)"}
end.

/* If this SO was created with a temporary ship-to address, */
/* delete that address.                                     */
if so_mstr.so_ship = "qadtemp" + mfguser
then do:
   find ad_mstr  where ad_mstr.ad_domain = global_domain and  ad_addr =
   so_mstr.so_ship exclusive-lock.
   delete ad_mstr.
end.

/* Call GPPIHDEL.P to delete Price List History */
{gprun.i ""gppihdel.p""
   "(1, so_nbr, 0)"}

/*!******************************************************
 * For RMA's, delete the rma_mstr and rmd_det records also.
 * If this RMA has been attached to an RTS (Return To
 * Supplier), or has been associated with any Calls, clear
 * those links also.
 **********************************************************/
if so_fsm_type = "RMA" then do:

   find rma_mstr  where rma_mstr.rma_domain = global_domain and  rma_nbr =
   so_nbr and rma_prefix = "C"
   exclusive-lock.

   for each rmd_det
       where rmd_det.rmd_domain = global_domain and  rmd_nbr     = rma_nbr
        and rmd_prefix  = "C"
   exclusive-lock:

      /* CLEAR RMA_NBR AND RMA_LINE IN ANY LINKED-TO RTS'S */
      if rmd_det.rmd_rma_nbr <> " " then
      for each rmdbuff  where rmdbuff.rmd_domain = global_domain and
      rmd_rma_nbr = rmd_det.rmd_rma_nbr
      exclusive-lock:
         assign
            rmdbuff.rmd_rma_nbr = ""
            rmdbuff.rmd_rma_line = 0.
      end.     /* for each rmdbuff */
      delete rmd_det.
   end.    /* for each rmd_det */

   /* IF A CALL IS ATTACHED TO THE RMA, CLEAR THE CALL'S RMA NUMBER */
   if rma_ca_nbr <> " " then do:
      find ca_mstr  where ca_mstr.ca_domain = global_domain and  ca_nbr =
      rma_ca_nbr and
                         ca_category = "0"
      exclusive-lock no-error.
      if available ca_mstr then
         assign ca_rma_nbr = " ".
   end.    /* if rma_ca_nbr <> " " */

   delete rma_mstr.

end.   /* if this-is-rma */

{gprunp.i "mcpl" "p" "mc-delete-ex-rate-usage"
   "(input so_exru_seq)"}

{&SOSOMTD-P-TAG1}

/* DELETE APM SALES ORDER HEADER RELATIONSHIP RECORD */
{gprun.i ""sosoapm3.p"" "(input so_nbr)"}

/* IF LOGISTICS ACCOUNTING IS ENABLED */
if use-log-acctg then do:

   tax_type = "41".
   if so_fsm_type = "RMA" then
      tax_type = "46".

   /* DELETE ALL LOGISTICS ACCOUNTING tx2d_det RECORDS FOR SALES ORDER */
   {gprunmo.i &module = "LA" &program = "lataxdel.p"
              &param  = """(input tax_type,
                            input so_nbr,
                            input 0)"""}

   /* DELETE lacd_det RECORD */
   {gprunmo.i &module = "LA" &program = "laosupp.p"
              &param  = """(input 'DELETE',
                            input '{&TYPE_SO}',
                            input so_nbr,
                            input ' ',
                            input ' ',
                            input ' ',
                            input no,
                            input no)"""}
end.   /* use-log-acctg */

/*YF10*/  {l4sode05.i}
delete so_mstr.

del-yn = no.

PROCEDURE ck_pod_so_status:
/* -----------------------------------------------------------
 * Purpose:      Check the Status, if flags are set in soc_ctrl
 *               then allow the user to delete the SO Line and
 *               close the PO
 * Parameters:
 *      input:   p-emt-po   Purchase Order Number
 *      input:   p-emt-line PO Line
 *     output:   p-error    If yes, then an error has occurred,
 *                          do not allow the delete
 *
 * Notes: added with ECO: *M11Z*
 * -------------------------------------------------------------*/
define input parameter  p-emt-po       like sod_btb_po no-undo.
define input parameter  p-emt-line     like sod_btb_pod_line
                                       no-undo.
define input parameter  p-so-status    like w2-pod-so-status
                                       no-undo.
define output parameter p-error        like mfc_logical
                                       no-undo.

define variable l-errsev   as   integer initial 3 no-undo.
define variable l-errnum   like msg_nbr no-undo.
define variable cont-yn    like mfc_logical initial no no-undo.

assign
   l-errsev = 3
   l-errnum = 0
   p-error  = yes.

/* Secondary BU Order has been picked */
if p-so-status = "P" then do:
   if can-find (mfc_ctrl  where mfc_ctrl.mfc_domain = global_domain and
                mfc_field  = "soc_emt_pick" and
                mfc_logical)
   then
      assign
         /* Inventory Picked at Supplier, Continue? */
         l-errnum = 4615
         l-errsev = 2.
   else
      assign
         /* Inventory Picked at Supplier. Change not allowed */
         l-errnum = 2023.
end. /* if status = "P" */

/* Secondary BU Order has been picked */
if p-so-status = "W" then do:
   if can-find (mfc_ctrl  where mfc_ctrl.mfc_domain = global_domain and
                mfc_field  = "soc_emt_rel" and
                mfc_logical)
   then
      assign
           l-errsev = 2
           /* Released to WO at supplier.  Continue? */
           l-errnum = 4619.
     else
        assign
           /* Released to WO at supplier.  Change not allowed */
           l-errnum = 4618.
end. /* if status = "W" */

/* Secondary BU Order has been picked */
if p-so-status = "S" then do:
   if can-find (mfc_ctrl  where mfc_ctrl.mfc_domain = global_domain and
                mfc_field  = "soc_emt_ship" and
                mfc_logical)
   then
      assign
           /* Quantity shipped at supplier. Continue? */
           l-errsev = 2
           l-errnum = 4617.
     else
        assign
           /* Delete not allowed. Lines already shipped */
           l-errnum = 2862.
end. /* if status = "S" */
/* Unknown Status */
else
   assign
      l-errsev = 3
      l-errnum = 2825.

/* Prompt User with the Appropriate Error Message */
if l-errsev = 3 and l-errnum <> 0 then do:
   {pxmsg.i &MSGNUM=l-errnum &ERRORLEVEL=l-errsev}
   if not batchrun then pause.
end.

/* Warn the User, but let them continue */
else if l-errsev = 2 and l-errnum <> 0 then do:
   {pxmsg.i &MSGNUM=l-errnum &ERRORLEVEL=l-errsev &CONFIRM=cont-yn}
   if not cont-yn then do:
      p-error = yes.
   end.
   else do:
      /* CLOSING THE CORRESPONDING EMT-PO (PO LINES) WHEN EMT-SO */
      /* DELETE AT THE PBU IS ALLOWED.                           */
      find first pod_det
            where pod_det.pod_domain = global_domain and  pod_nbr  = p-emt-po
           and   pod_line = p-emt-line
      exclusive-lock no-error.
      if available pod_det then
         assign
            pod_status = "c"
            p-error    = no.

      if not can-find(first pod_det
          where pod_det.pod_domain = global_domain and  pod_nbr  =  p-emt-po
         and   pod_line <> p-emt-line
         and   pod_status = "")
      then do:
         find first po_mstr
             where po_mstr.po_domain = global_domain and  po_nbr = p-emt-po
         exclusive-lock no-error.
         if available po_mstr then
            po_stat = "c".
      end. /* IF NOT CAN-FIND(FIRST pod_det */

   end. /* else do */

end. /* if warning message */

END PROCEDURE. /* ck_pod_so_status */

procedure p-reason-code:
/* ---------------------------------------------------------------------------
Purpose:    Prompt for a reason code.  If any sod fields need to be tracked
            upon delete reason codes with a type of ORD_CHG must exist in
            order for a reason code and a comment to be entered
Exceptions: None
Notes:
----------------------------------------------------------------------------*/
   assign
      l_reason-code    = ''
      l_reason-comment = no
      l_tr-cmtindx     = 0.

   if can-find(first rsn_ref
                  where rsn_domain = global_domain
                  and   rsn_type   = "ord_chg")
   then do:

      update
         l_reason-code
         l_reason-comment
      with frame rsn.

      if l_reason-code = ""
      and lookup(sod_det.sod_btb_type,"02,03") <> 0
      then
         hide frame rsn.
      else do:
         if not can-find(first rsn_ref
                            where rsn_domain = global_domain
                            and   rsn_code   = l_reason-code
                            and   rsn_type   = "ord_chg")
         then do:
            /* INVALID REASON CODE */
            {pxmsg.i &MSGNUM=655 &ERRORLEVEL=3 &MSGARG1=l_reason-code}
            next-prompt l_reason-code with frame rsn.
            undo, retry.
         end. /* IF NOT CAN-FIND FIRST rsn_ref */

         if l_reason-comment
         then do:
            assign
               global_type = " "
               global_ref  = so_mstr.so_nbr
               cmtindx     = l_tr-cmtindx.

            {gprun.i ""gpcmmt01.p"" "(input """")"}
            l_tr-cmtindx = cmtindx.
         end. /* IF L_REASON-COMMENT */
         else
            hide frame rsn.
       end. /* ELSE DO */
   end. /* IF CAN-FIND FIRST RSN_REF*/
end procedure.  /* P-REASON-CODE */

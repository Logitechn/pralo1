/* l4somtc2.p [sosomtc2.p] - SO TRAILER UPDATE LOWER FRAME                   */
/* Copyright 1986 QAD Inc. All rights reserved.                               */
/* $Revision: 1.16.3.3 $                                                */
/*V8:ConvertMode=Maintenance                                            */
/* REVISION: 7.3      LAST MODIFIED: 02/22/93   BY: afs *G692**/
/* REVISION: 7.3      LAST MODIFIED: 06/11/93   BY: WUG *GB74**/
/* REVISION: 7.4      LAST MODIFIED: 08/19/93   BY: pcd *H009* */
/* REVISION: 7.4      LAST MODIFIED: 11/03/93   BY: bcm *H208**/
/* REVISION: 7.4      LAST MODIFIED: 10/28/94   BY: dpm *GN67**/
/* REVISION: 7.4      LAST MODIFIED: 11/14/94   BY: str *FT44**/
/* REVISION: 7.3      LAST MODIFIED: 03/16/95   BY: WUG *G0CW**/
/* REVISION: 8.5      LAST MODIFIED: 10/03/95   BY: taf *J053**/
/* REVISION: 8.5      LAST MODIFIED: 05/07/97   BY: *J1P5* Ajit Deodhar */
/* REVISION: 8.6      LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan   */
/* REVISION: 9.1      LAST MODIFIED: 10/01/99   BY: *N014* Patti Gaultney */
/* REVISION: 9.1      LAST MODIFIED: 02/04/00   BY: *N07M* Vijaya Pakala  */
/* REVISION: 9.1      LAST MODIFIED: 03/24/00   BY: *N08T* Annasaheb Rahane */
/* REVISION: 9.1      LAST MODIFIED: 04/25/00   BY: *N0CG* Santosh Rao      */
/* REVISION: 9.1      LAST MODIFIED: 08/12/00   BY: *N0KN* myb              */
/* REVISION: 9.1      LAST MODIFIED: 11/03/00   BY: *L15F* Kaustubh K       */
/* Old ECO marker removed, but no ECO header exists *F0PN*                  */
/* Old ECO marker removed, but no ECO header exists *G013*                  */
/* Revision: 1.14  BY: Katie Hilbert DATE: 04/01/01 ECO: *P002* */
/* Revision: 1.16.3.2  BY: Paul Donnelly (SB) DATE: 06/28/03 ECO: *Q00L* */
/* $Revision: 1.16.3.3 $ BY: Ed van de Gevel Date: 02/07/12 ECO: *Q579* */

/* Revision: SE13     Last modi: 2015.01.02     by:   *Y702* Arunas K. [ so__qadd03=1:  Siøsti á CSB  ] */
/* Revision: SE13     Last modi: 2015.03.05     by:   *Y703* Arunas K. [ so__qadi03=time (created) ] */
/* Revision: SE13     Last modi: 2015.03.18     by:   *Y704* Arunas K. [ so__qadi03=time (created) ] */
/* Revision: SE13     Last modi: 2015.03.31     by:   *Y705* Arunas K. [ so__qadd03: l__15h ] */
/* Revision: SE13     Last modi: 2015.04.07     by:   *Y706* Arunas K. [ if not l_csb ... ] */
/* Revision: SE13     Last modi: 2015.05.04     by:   *Y707* Arunas K. [ if not l_csb ... ] */
/* Revision: SE13     Last modi: 2015.06.08     by:   *Y708* Arunas K. [ p__qxt,p__h15 ] */
/* Revision: SE13     Last modi: 2015.08.24     by:   *Y709* Arunas K. [ ] */

/*-Revision end---------------------------------------------------------------*/

/******************************************************************************/
/* All patch markers and commented out code have been removed from the source */
/* code below. For all future modifications to this file, any code which is   */
/* no longer required should be deleted and no in-line patch markers should   */
/* be added.  The ECO marker should only be included in the Revision History. */
/******************************************************************************/

          {cxcustom.i "SOSOMTC2.P"}
          {mfdeclre.i}
          {gplabel.i} /* EXTERNAL LABEL INCLUDE */

/*Y708*/  define input parameter         p__qxt     as logical.
/*Y708*/  define input parameter         p__h15     as logical.

/*Y703*/  define variable ar_p_nm_vers  as character  initial "l4somtc2.p Y709" no-undo.
          
          define shared variable  rndmthd like rnd_rnd_mthd.
          define shared variable  prepaid_fmt as character no-undo.
          define shared variable  so_recno    as   recid.
          define shared variable  undo_mtc2   like mfc_logical.
          define shared variable  new_order   like mfc_logical.
          define shared frame     d.
          define        variable  valid_acct  like mfc_logical.
          define        variable  old_rev     like so_rev.
          define        variable retval as integer no-undo.
          
          {mfsotrla.i}
          {sosomt01.i}  /* Define shared form for frame d */

/*Y703*/  define  variable  c_cr_tim as character initial "" no-undo.
/*Y704*/  define  variable  c__h_dom as character initial ",D013LT," no-undo.
/*Y704*/  define  variable  n__d01 as integer initial 1 no-undo.
/*Y705*/  define  variable  n__15h as decimal initial 15 no-undo.        /*Y708  integer */
/*Y708*/  define variable cs_bad AS CHARACTER initial ",".
/*Y708*/  define variable cs_gut AS CHARACTER initial ".".

/*Y709*/  define variable c01 AS CHARACTER initial "".
/*Y709*/  define            variable l_vid_de2 like mfc_logical initial no no-undo.

/*Y709*/  find first code_mstr WHERE  code_mstr.code_domain = global_domain and   code_fldname = "##_AR_ENV_CONST_##"
            and code_value = "VID_DEB_" + substring(program-name(1),length(program-name(1)) - 9,8) no-lock no-error.
          if available code_mstr then assign l_vid_de2 = if trim(code_cmmt) = "T" then yes else no.

/*          if l_vid_de2 then MESSAGE "l4somtc2.p 0000  l_vid_de2=" + string(l_vid_de2) +  "." VIEW-AS ALERT-BOX. */

          
/*Y702*/
          define  variable  l_csb  like mfc_logical  initial no.
          form
             l_csb     colon 25 label "Perduoti á CSB"
/*Y703*/     skip
/*Y703*/     c_cr_tim  colon 68 no-label
          with frame csb_1 side-labels width 80 attr-space.
          /* SET EXTERNAL LABELS */
          setFrameLabels(frame csb_1:handle).
          
          so_prepaid:format = prepaid_fmt.

/*Y708*/  if SESSION:numeric-format <> "AMERICAN" then assign  cs_bad = "."  cs_gut = ",".
          
          for first so_mstr
                fields( so_domain so_ar_acct so_ar_cc so_bol so_cr_card so_cr_init
                       so_curr so_disc_pct so_inv_mthd
                       so_fob so_fst_id so_partial
                       so_prepaid so_print_pl so_to_inv
                       so_print_so so_pst_id so_pst_pct so_rev so_shipvia
                       so_stat so_tax_pct so_tr1_amt so_trl3_cd
/*Y702*/               so__qadd03
                       so_trl1_cd so_trl2_amt so_trl2_cd so_trl3_amt)
                where recid(so_mstr) = so_recno no-lock:
          end. /* FOR FIRST so_mstr */
          
          old_rev = so_rev.
          
          do transaction on error undo, retry:
          
             find first so_mstr
                where recid(so_mstr) = so_recno exclusive-lock no-error.
          
             hide frame setd_sub no-pause.
/*Y702*/     assign l_csb = if so__qadd03 = 0 then no else yes.

             print_ih = ( substring(so_inv_mthd,1,1) = "b" or
                          substring(so_inv_mthd,1,1) = "p" or
                          substring(so_inv_mthd,1,1) = "").
             edi_ih = (substring(so_inv_mthd,1,1) = "b" or
                       substring(so_inv_mthd,1,1) = "e").
             edi_ack = substring(so_inv_mthd,3,1) = "e".
          
             set
                so_cr_init
                so_cr_card
                so_stat when (so_stat =  "")
                so_rev
                edi_ack
                so_print_so
                so_print_pl
                print_ih
                edi_ih
                so_partial
                so_ar_acct
                so_ar_sub
                so_ar_cc
                so_prepaid
                so_fob
                so_shipvia
                so_bol
             with frame d.
          
             {&SOSOMTC2-P-TAG1}
          
             if (so_prepaid <> 0 ) then do:
                /* VALIDATE SO_PREPAID ACCORDING TO THE DOC CURRENCY ROUND MTHD*/
                {gprun.i ""gpcurval.p"" "(input so_prepaid,
                               input rndmthd,
                               output retval)"}
                if (retval <> 0) then do:
                   next-prompt so_prepaid with frame d.
                   undo, retry.
                end.
             end.
          
             if print_ih then do:
                if edi_ih then substring(so_inv_mthd,1,1) = "b".
                else substring(so_inv_mthd,1,1) = "p".
             end.
             else do:
                if edi_ih then substring(so_inv_mthd,1,1) = "e".
                else substring(so_inv_mthd,1,1) = "n".
             end.
             if edi_ack then substring(so_inv_mthd,3,1) = "e".
             else substring(so_inv_mthd,3,1) = "n".
          
             /* INITIALIZE SETTINGS */
             {gprunp.i "gpglvpl" "p" "initialize"}
          
             /* SET PROJECT VERIFICATION TO NO */
             {gprunp.i "gpglvpl" "p" "set_proj_ver" "(input false)"}
          
             /* ACCT/SUB/CC/PROJ VALIDATION */
             {gprunp.i "gpglvpl" "p" "validate_fullcode"
                "(input  so_ar_acct,
                  input  so_ar_sub,
                  input  so_ar_cc,
                  input  """",
                  output valid_acct)"}
          
             if valid_acct = no then do:
                next-prompt so_ar_acct with frame d.
                undo, retry.
             end.
          
             /* ACCOUNT CURRENCY MUST EITHER BE TRANSACTION CURR OR BASE CURR */
             if so_curr <> base_curr then do:
          
                for first ac_mstr
                      fields( ac_domain ac_code ac_curr)
                       where ac_mstr.ac_domain = global_domain and  ac_code = so_ar_acct
                       no-lock:
                end.  /* FOR FIRST AC_MSTR */
                if available ac_mstr and
                   ac_curr <> so_curr and ac_curr <> base_curr then do:
                   {pxmsg.i &MSGNUM=134 &ERRORLEVEL=3}
                   /*ACCT CURRENCY MUST MATCH TRANSACTION OR BASE CURR*/
                   next-prompt so_ar_acct with frame d.
                   undo, retry.
                end.
             end. /* IF SO_CURR <> BASE_CURR */
          
             /* Check for new revision and flip the print so flag. */
             if not new_order and old_rev <> so_rev then
                so_print_so = yes.

/*Y703*/     if not new_order and so__qadi03 > 0 then assign c_cr_tim = string(so__qadi03,"HH:MM:SS").
/*Y702*/     display  l_csb  c_cr_tim  with frame csb_1.

/*Y708*/     if  new_order then do:
/*Y708*/       assign  so__qadi03 = time.
/*Y708*/       if p__qxt  then  assign  so__qadd03 = 1.
/*Y708*/       else do:
/*Y702*/         set  l_csb  with frame csb_1.
/*Y702*/         assign  so__qadd03 = if l_csb then 1 else 0.
               end.
/*Y708*/     end.

/*Y709*/     if l_vid_de2 then do:
               c01 = "A. new_order=" + string(new_order) + "  p__qxt=" + string(p__qxt)
                 + "  l_csb=" + string(l_csb) + "  so__qadd03=" + trim(string(so__qadd03)) + "  p__h15=" + string(p__h15)
                 + "  c__h_dom=" + c__h_dom + "  n__d01=" + trim(string(n__d01)) + "  n__15h=" + trim(string(n__15h)).
               {pxmsg.i &MSGTEXT=c01  &ERRORLEVEL=1  &PAUSEAFTER=true}
             end.

/*Y708*/     if p__h15  and  ( new_order  and  so__qadd03 = 1) then do:
               FOR EACH code_mstr WHERE  code_mstr.code_domain = global_domain and  code_fldname = "##_SO_CREATE_PRM_##" NO-LOCK:
                 if length(trim(code_cmmt)) > 0 then do:
                   IF code_value = "DOM_01"  then assign c__h_dom = "," + trim(code_cmmt) + ",".
                   IF code_value = "DAY_01"  then assign n__d01 = integer(trim(code_cmmt)).
/*Y705*/           IF code_value = "HH_15"  and  trim(code_cmmt) <> ""  then do:
                     assign n__15h =  decimal(replace(trim(code_cmmt),cs_bad,cs_gut)).   /*Y708  integer(trim(code_cmmt)) */
                     if n__15h > 24 then assign n__15h = 15.
                   end.
                 end.
               end.
/*Y709*/       if l_vid_de2 then  c01 = "B.   l_csb=" + string(l_csb) + "  so__qadd03=" + trim(string(so__qadd03))
                 + "  c__h_dom=" + c__h_dom + "  n__d01=" + trim(string(n__d01)) + "  n__15h=" + trim(string(n__15h))
                 + "  index(c__h_dom)=" + trim(string(index(c__h_dom,"," + so_domain + ",")))
                 + "  so_due_date=" + string(so_due_date) + "  today+n__d01=" + string(today + n__d01).


               if index(c__h_dom,"," + so_domain + ",") > 0  and  so_due_date <= today + n__d01  then /*Y705*/ do:
/*Y709*/         if l_vid_de2 then  c01 = c01 + "  C.  time=" + string(time) + "  n__15h*3600=" + trim(string(n__15h * 3600)).

/*Y709 /*Y705*/         if l_csb and time > n__15h * 3600  then do: */
/*Y709*/         if so__qadd03 = 1 and time > n__15h * 3600  then do:
                   assign  so__qadd03 = 0.
/*Y709*/           if l_vid_de2 then  c01 = c01 + "  D.  so__qadd03=" + trim(string(so__qadd03)).
/*Y708*/           if not p__qxt then do:
                     {pxmsg.i &MSGTEXT='"Pard. Uþsakymas nebus iðsiøstas á CSB."'  &ERRORLEVEL=2  &PAUSEAFTER=true}
/*Y708*/           end.
                 end.
               end.
/*Y708*/     end.

/*Y709*/     if l_vid_de2 then do:
               {pxmsg.i &MSGTEXT=c01  &ERRORLEVEL=1  &PAUSEAFTER=true}
             end.

             undo_mtc2 = false.
          
          end.
          hide frame setd_sub no-pause.

          
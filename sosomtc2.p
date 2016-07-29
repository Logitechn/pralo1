/* sosomtc2.p - SO TRAILER UPDATE LOWER FRAME                           */
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
/* Revision: 1.16.3.3  BY: Ed van de Gevel Date: 02/07/12 ECO: *Q579* */
/* $Revision: 1.17 $ BY: Aurimas Blazys Date: 2016/07/07 ECO: *YF10* */
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

/*YF10*/  define input parameter         p__qxt     as logical.
/*YF10*/  define input parameter         p__h15     as logical.

define shared variable  rndmthd like rnd_rnd_mthd.
define shared variable  prepaid_fmt as character no-undo.
define shared variable  so_recno    as   recid.
define shared variable  undo_mtc2   like mfc_logical.
define shared variable  new_order   like mfc_logical.

/*YF10*/define variable date         like so_due_date.
/*YF10*/define variable hours_String 			as character.
/*YF10*/define variable hours_Int 			as integer.
/*YF10*/define variable minutes_String 			as character.
/*YF10*/define variable minutes_Int 			as integer.
/*YF10*/define variable timer         as character.
/*YF10*/define variable print_list   like mfc_logical no-undo.

define shared frame     d.
define        variable  valid_acct  like mfc_logical.
define        variable  old_rev     like so_rev.
define        variable retval as integer no-undo.



{mfsotrla.i}
/*YF10* {sosomt01.i}  *YF10*/   /* Define shared form for frame d */
/*YF10*/{lysosomt01.i}  

date:label in frame d  = getTermLabel("Due Date",15).
timer:label in frame d = getTermLabel("Due Time",15).
print_list:label in frame d = getTermLabel("PRICE_LIST",15).

/*YF10*/  define  variable  c_cr_tim as character initial "" no-undo.
/*YF10*/  define  variable  c__h_dom as character initial ",D013LT," no-undo.
/*YF10*/  define  variable  n__d01 as integer initial 1 no-undo.
/*YF10*/  define  variable  n__15h as decimal initial 15 no-undo.        /*YF10  integer */
/*YF10*/  define variable cs_bad AS CHARACTER initial ",".
/*YF10*/  define variable cs_gut AS CHARACTER initial ".".

/*YF10*/  define variable c01 AS CHARACTER initial "".
/*YF10*/  define            variable l_vid_de2 like mfc_logical initial no no-undo.

/*YF10*/  find first code_mstr WHERE  code_mstr.code_domain = global_domain and   code_fldname = "##_AR_ENV_CONST_##"
            and code_value = "VID_DEB_" + substring(program-name(1),length(program-name(1)) - 9,8) no-lock no-error.
          if available code_mstr then assign l_vid_de2 = if trim(code_cmmt) = "T" then yes else no.
		  

/*YF10*/
          define  variable  l_csb  like mfc_logical  initial no.
          form
             l_csb     colon 25 label "Perduoti � CSB"
/*YF10*/     skip
/*YF10*/     c_cr_tim  colon 68 no-label
          with frame csb_1 side-labels width 80 attr-space.
          /* SET EXTERNAL LABELS */
          setFrameLabels(frame csb_1:handle).
          
          so_prepaid:format = prepaid_fmt.

/*YF10*/  if SESSION:numeric-format <> "AMERICAN" then assign  cs_bad = "."  cs_gut = ",".



for first so_mstr
      fields( so_domain so_due_date so_ar_acct so_ar_cc so_bol so_cr_card so_cr_init
             so_curr so_disc_pct so_inv_mthd
             so_fob so_fst_id so_partial
             so_prepaid so_print_pl so_to_inv
             so_print_so so_pst_id so_pst_pct so_rev so_shipvia
             so_stat so_tax_pct so_tr1_amt so_trl3_cd
			 so__qadd03
             so_trl1_cd so_trl2_amt so_trl2_cd so_trl3_amt)
      where recid(so_mstr) = so_recno no-lock:
end. /* FOR FIRST so_mstr */

old_rev = so_rev.

do transaction on error undo, retry:

   find first so_mstr
      where recid(so_mstr) = so_recno exclusive-lock no-error.

   hide frame setd_sub no-pause.
	assign l_csb = if so__qadd03 = 0 then no else yes.
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
/*YF10*/	  date
/*YF10*/	  timer
/*YF10*/	  print_list
   with frame d.

/********************************YF10********************/
   
   do:
      {mfquoter.i date        }
      {mfquoter.i timer       }
	end.
   
   /*YF10**
   if timer = "" or date = ? then do:
		{pxmsg.i &MSGNUM=70 &ERRORLEVEL=2}
   end.
   
   else do:
		hours_String = substr(timer, 1, 2).
		minutes_String = substr(timer, 4, 2).
		hours_Int = integer(hours_String).
		minutes_Int = integer(minutes_String).
   end.
   **YF10*/
   
	if timer <> "" then do:
		hours_String = substr(timer, 1, 2).
		minutes_String = substr(timer, 4, 2).
		hours_Int = integer(hours_String).
		minutes_Int = integer(minutes_String).
	   if hours_Int < 25 then do:
			if minutes_Int < 61 then do:
				
			end.
			else do:
				{pxmsg.i &MSGNUM=70 &ERRORLEVEL=2}
			end.
	   end.
	   else do:
			{pxmsg.i &MSGNUM=70 &ERRORLEVEL=2}
	   end.   
	end. 
   
   find first xxso_mstr where xxso_domain = global_domain and xxso_nbr = so_nbr no-error.
		if available xxso_mstr then do with frame d:				
			assign
				xxso_date = date
				xxso_time = timer
				xxso__log01 = print_list.
		end.
		else do:
			create xxso_mstr.
				Assign
					xxso_domain = global_domain
					xxso_nbr = so_nbr
					xxso_cust = so_cust
					xxso_date = date
					xxso_time = timer
					xxso__log01 = print_list.		
		end.
		
	
		
/********************************YF10********************/   
   
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
	  
	/*YF10*/     if not new_order and so__qadi03 > 0 then assign c_cr_tim = string(so__qadi03,"HH:MM:SS").
/*YF10*/     display  l_csb  c_cr_tim  with frame csb_1.

/*YF10*/     if  new_order then do:
/*YF10*/       assign  so__qadi03 = time.
/*YF10*/       if p__qxt  then  assign  so__qadd03 = 1.
/*YF10*/       else do:
/*YF10*/         set  l_csb  with frame csb_1.
/*YF10*/         assign  so__qadd03 = if l_csb then 1 else 0.
               end.
/*YF10*/     end.

/*YF10*/     if l_vid_de2 then do:
               c01 = "A. new_order=" + string(new_order) + "  p__qxt=" + string(p__qxt)
                 + "  l_csb=" + string(l_csb) + "  so__qadd03=" + trim(string(so__qadd03)) + "  p__h15=" + string(p__h15)
                 + "  c__h_dom=" + c__h_dom + "  n__d01=" + trim(string(n__d01)) + "  n__15h=" + trim(string(n__15h)).
               {pxmsg.i &MSGTEXT=c01  &ERRORLEVEL=1  &PAUSEAFTER=true}
             end.

/*YF10*/     if p__h15  and  ( new_order  and  so__qadd03 = 1) then do:
               FOR EACH code_mstr WHERE  code_mstr.code_domain = global_domain and  code_fldname = "##_SO_CREATE_PRM_##" NO-LOCK:
                 if length(trim(code_cmmt)) > 0 then do:
                   IF code_value = "DOM_01"  then assign c__h_dom = "," + trim(code_cmmt) + ",".
                   IF code_value = "DAY_01"  then assign n__d01 = integer(trim(code_cmmt)).
/*YF10*/           IF code_value = "HH_15"  and  trim(code_cmmt) <> ""  then do:
                     assign n__15h =  decimal(replace(trim(code_cmmt),cs_bad,cs_gut)).   /*YF10  integer(trim(code_cmmt)) */
                     if n__15h > 24 then assign n__15h = 15.
                   end.
                 end.
               end.
/*YF10*/       if l_vid_de2 then  c01 = "B.   l_csb=" + string(l_csb) + "  so__qadd03=" + trim(string(so__qadd03))
                 + "  c__h_dom=" + c__h_dom + "  n__d01=" + trim(string(n__d01)) + "  n__15h=" + trim(string(n__15h))
                 + "  index(c__h_dom)=" + trim(string(index(c__h_dom,"," + so_domain + ",")))
                 + "  so_due_date=" + string(so_due_date) + "  today+n__d01=" + string(today + n__d01).


               if index(c__h_dom,"," + so_domain + ",") > 0  and  so_due_date <= today + n__d01  then /*YF10*/ do:
/*YF10*/         if l_vid_de2 then  c01 = c01 + "  C.  time=" + string(time) + "  n__15h*3600=" + trim(string(n__15h * 3600)).

/*YF10 /*YF10*/         if l_csb and time > n__15h * 3600  then do: */
/*YF10*/         if so__qadd03 = 1 and time > n__15h * 3600  then do:
                   assign  so__qadd03 = 0.
/*YF10*/           if l_vid_de2 then  c01 = c01 + "  D.  so__qadd03=" + trim(string(so__qadd03)).
/*YF10*/           if not p__qxt then do:
                     {pxmsg.i &MSGTEXT='"Pard. Užsakymas nebus išsiųstas į CSB."'  &ERRORLEVEL=2  &PAUSEAFTER=true}
/*YF10*/           end.
                 end.
               end.
/*YF10*/     end.

/*YF10*/     if l_vid_de2 then do:
               {pxmsg.i &MSGTEXT=c01  &ERRORLEVEL=1  &PAUSEAFTER=true}
             end.

   undo_mtc2 = false.

end.
hide frame setd_sub no-pause.

/*YF10

/* Report */

/* OUTPUT DESTINATION SELECTION */
   {gpselout.i &printType = "printer"
               &printWidth = 132
               &pagedFlag = " "
               &stream = " "
               &appendToFile = " "
               &streamedOutputToTerminal = " "
               &withBatchOption = "yes"
               &displayStatementType = 1
               &withCancelMessage = "yes"
               &pageBottomMargin = 6
               &withEmail = "yes"
               &withWinprint = "yes"
               &defineVariables = "yes"}

   {mfphead.i}

{gprun.i ""lysosomtf.p"" "( input so_recno )"}

/* REPORT TRAILER  */
   {mfrtrail.i}
   
*YF10*/


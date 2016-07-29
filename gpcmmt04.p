/* gpcmmt04.p - TRANSACTION COMMENTS (Read only)                        */
/* Copyright 1986 QAD Inc. All rights reserved.                           */
/*K007*/ /*V8:ConvertMode=Maintenance                                   */
/*K1Q4*/ /*V8:RunMode=Character,Windows                                 */
/* REVISION: 8.6           CREATED: 10/10/96    BY: svs *K007*          */

/* REVISION: 8.6E     LAST MODIFIED: 02/23/98   BY: *L007* A. Rahane */
/* REVISION: 8.6E     LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan   */
/* REVISION: 8.6E     LAST MODIFIED: 10/04/98   BY: *J314* Alfred Tan   */
/* REVISION: 9.1      LAST MODIFIED: 03/24/00 BY: *N08T* Annasaheb Rahane */
/* REVISION: 9.1      LAST MODIFIED: 08/14/00 BY: *N0L1* Mark Brown       */
/* $Revision: 1.5.3.4 $ BY: Paul Donnelly (SB) DATE: 06/26/03 ECO: *Q00F* */
/*-Revision end---------------------------------------------------------------*/

/* based on gpcmmt01.p - TRANSACTION COMMENTS                           */

{mfdeclre.i}
{gplabel.i} /* EXTERNAL LABEL INCLUDE */

/* ********** Begin Translatable Strings Definitions ********* */

&SCOPED-DEFINE gpcmmt04_p_1 " Transaction Comments "
/* MaxLen: Comment: */

/* ********** End Translatable Strings Definitions ********* */

define input parameter file_name as character.
define shared variable cmtindx like cmt_indx.

define variable i as integer.
define buffer cmtdet for cmt_det.
define variable cd_recid as recid initial ?.

define variable first-time like mfc_logical initial yes.
define variable error-count as integer no-undo.
define variable cmt_recno as recid.

form
   cmt_seq     colon 18
   cd_ref      colon 18
   cd_lang     colon 71
   cd_type     colon 18
   cd_seq      colon 71
   cmt_cmmt    no-label
/*V8! view-as fill-in size 76 by 1 at 2 skip */
with overlay frame a title color normal
(getFrameTitle("TRANSACTION_COMMENTS",29))
side-labels width 80 attr-space.

/* SET EXTERNAL LABELS */
setFrameLabels(frame a:handle).

do with frame a:
   if cmtindx <> 0 then
   find first cmt_det  where cmt_det.cmt_domain = global_domain and  cmt_indx =
   cmtindx no-lock no-error.
   if available cmt_det then do:
      cmt_recno = recid(cmt_det).
      display cmt_seq + 1 @ cmt_seq
              cmt_ref @ cd_ref
              cmt_type @ cd_type
              cmt_lang @ cd_lang
              cmt_cmmt.
   end.
   else do:
      undo, return.
   end.
end.

repeat with frame a:
   if can-find (first cmt_det  where cmt_det.cmt_domain = global_domain and (
   cmt_indx = cmtindx))
   or first-time = no
   then do:
      prompt-for cmt_det.cmt_seq editing:
         {mfnp05.i cmt_det cmt_ref " cmt_det.cmt_domain = global_domain and
         cmt_indx  = cmtindx" cmt_seq
      "(input cmt_seq - 1)"}
         if recno <> ? then do:
        display cmt_ref @ cd_ref
            cmt_type @ cd_type
            cmt_lang @ cd_lang
            cmt_seq + 1 @ cmt_seq
            cmt_cmmt.
        display "" @ cd_seq.
     end.
      end.

      if input cmt_seq = 0 then display 1 @ cmt_seq.

      find cmt_det  where cmt_det.cmt_domain = global_domain and  cmt_indx =
      cmtindx
                     and cmt_seq  = input cmt_seq - 1
                     no-lock no-error.

      if available cmt_det then do:
     display cmt_seq + 1 @ cmt_seq
         cmt_ref @ cd_ref
         cmt_type @ cd_type
         cmt_lang @ cd_lang
         "" @ cd_seq
         cmt_cmmt.
                 cmt_recno = recid(cmt_det).
      end.
      else do:
         {mfmsg.i 7716 2} /* No record found */
         undo, retry.
      end.
   end.
end. /* repeat */

hide frame a.

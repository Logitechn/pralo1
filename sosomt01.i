/* sosomt01.i - SO MAINTENANCE FRAME D SECOND TRAILER FRAME                   */
/* Copyright 1986 QAD Inc. All rights reserved.                               */
/* $Revision: 1.12.1.3 $                                                          */
/*V8:ConvertMode=Maintenance                                                  */
/* REVISION: 7.3      LAST MODIFIED: 02/22/93   BY: afs *G692*                */
/* REVISION: 7.3      LAST MODIFIED: 06/11/93   BY: WUG *GB74*                */
/* REVISION: 7.3      LAST MODIFIED: 03/16/95   BY: WUG *G0CW*                */
/* REVISION: 8.6E     LAST MODIFIED: 02/23/98   BY: *L007* A. Rahane          */
/* REVISION: 8.6E     LAST MODIFIED: 05/20/98   BY: *K1Q4* Alfred Tan         */
/* REVISION: 8.6E     LAST MODIFIED: 10/04/98   BY: *J314* Alfred Tan         */
/* REVISION: 9.1      LAST MODIFIED: 10/01/99   BY: *N014* Robin McCarthy     */
/* REVISION: 9.1      LAST MODIFIED: 03/24/00   BY: *N08T* Annasaheb Rahane   */
/* REVISION: 9.1      LAST MODIFIED: 08/12/00   BY: *N0KN* Mark Brown         */
/* Old ECO marker removed, but no ECO header exists *F0PN*                    */
/* Revision: 1.12.1.2   BY: Jean Miller          DATE: 05/26/02  ECO: *P076*  */
/* $Revision: 1.12.1.3 $ BY: Ed van de Gevel Date: 02/07/12 ECO: *Q579* */
/******************************************************************************/
/* All patch markers and commented out code have been removed from the source */
/* code below. For all future modifications to this file, any code which is   */
/* no longer required should be deleted and no in-line patch markers should   */
/* be added.  The ECO marker should only be included in the Revision History. */
/******************************************************************************/

{cxcustom.i "SOSOMT01.I"}

define variable print_ih like mfc_logical label "Print Inv Hist".
define variable edi_ih   like mfc_logical label "EDI Inv Hist".
define variable edi_ack  like mfc_logical label "EDI PO Ack".

{&SOSOMT01-I-TAG1}
form
   so_cr_init     colon 15
   so_print_so    colon 39
   so_ar_acct     colon 52  label "AR Acct"
   so_ar_sub      no-label
   so_ar_cc       no-label
   so_cr_card     colon 15
   so_print_pl    colon 39
   so_prepaid     colon 56
   so_stat        colon 15
   print_ih       colon 39
   so_fob         colon 56
   so_rev         colon 15
   edi_ih         colon 39
   so_shipvia     colon 56
   edi_ack        colon 15
   so_partial     colon 39
   so_bol         colon 56
with frame d side-labels width 80 attr-space.
{&SOSOMT01-I-TAG2}
/* SET EXTERNAL LABELS */
setFrameLabels(frame d:handle).

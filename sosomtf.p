/* $Revision: 1 $ BY: Aurimas Blazys Date: 2016/06/30 ECO: *YF10* */
/*-Revision end---------------------------------------------------------------*/

/**********************YF10 Start Report**************************************/

{mfdeclre.i}
{gplabel.i} /* EXTERNAL LABEL INCLUDE */

define input parameter  so_recno as recid. 

define variable sonbr as character format "x(30)" no-undo.
define variable adname as character format "x(28)" no-undo.
define variable order as character no-undo.
define variable customer as character no-undo.
define variable soship as character no-undo.
define variable version  as integer no-undo.
define variable order_date as date no-undo.
define variable socrterms as character no-undo.
define variable soslspan as character no-undo.
define variable cmmtindex as integer no-undo.
define variable sum		like sod_list_pr no-undo.
define variable j 		as integer no-undo.
define variable adfax   as character format "x(80)" no-undo.
define variable description as character format "x(28)" no-undo.
define variable lv_unit as character no-undo.
define variable sum_qty_total as decimal no-undo.
define variable sum_list_pr_total as decimal no-undo.
define variable total_unit as decimal no-undo.
define variable solang as character no-undo.
define variable pricelist as character format "x(180)" no-undo.

define buffer xxpimstr for xxpi_mstr.


define temp-table sum_unit no-undo
field lv-um as character
field lv-qty as decimal
field lv-pr as decimal
field lv-pr_total as decimal
.

define temp-table unit_sum no-undo
field lv-sum_um as character
field lv-sum_qty as decimal
field lv-sum_pr as decimal
field lv-sum_pr_total as decimal
.

define buffer units for sum_unit.

form header
	sonbr colon 65
with frame phead1 width 120 page-top.

form
	pt_part format "x(8)"
	description 
	xxsod_muscle format "x(4)"
	xxsod_fat format "x(4)"
	xxsod_net format "x(4)"
	xxsod_age format "x(4)"
	pt__qad23 
	xxsod_ph format "x(4)"
	sod_qty_ord format ">>>,>>9.9<<<"
	sod_um   format "x(2)"
	sod_list_pr format ">>>,>>9.9<<<"
	sum		format ">>>,>>9.9<<<"
	xxsod_cmt1 format "x(4)"
	xxsod_cmt2 
with frame b width 210.

form
	customer
	version
	ad_name
	order_date
	ad_line1
	ad_line2
	ad_line3
	ad_pst_id
	xxso_date
	xxso_time
	ad_fax
with frame a width 210.	

form
	soship
	socrterms
	ad_name
	adname
	ad_line1
	ad_line2
	ad_line3
with frame a1 width 210.

pt_part:label in frame b = getTermLabel("ITEM_NUMBER",12).
description:label in frame b = getTermLabel("DESCRIPTION",12).
xxsod_muscle:label in frame b = getTermLabel("Raum",4).
xxsod_fat:label in frame b  = getTermLabel("Rieb",4).
xxsod_net:label  in frame b = getTermLabel("NET_AMOUNT",4).
xxsod_age:label in frame b = getTermLabel("AGE",8).
pt__qad23:label in frame b = getTermLabel("#LY-NV-SHELF",4).
xxsod_ph:label in frame b = getTermLabel("Ph/",4).
sod_qty_ord:label in frame b = getTermLabel("QUANTITY",12).
sod_um:label in frame b = getTermLabel("UNIT",2).
sod_list_pr:label in frame b = getTermLabel("PRICE",12).
sum:label in frame b = getTermLabel("TOTAL",5).
xxsod_cmt1:label in frame b = getTermLabel("PAK_COMMENTS",8).
xxsod_cmt2:label in frame b  = getTermLabel("COMMENTS",12).

customer:label in frame a  = getTermLabel("Sold-To",12).
version:label in frame a  = getTermLabel("Revision",10).
ad_name:label in frame a  = getTermLabel("Name",15).
order_date:label in frame a  = getTermLabel("Order Date",20).
ad_line1:label in frame a  = getTermLabel("Address",8).
ad_pst_id:label in frame a  = getTermLabel("PVM",8).
xxso_date:label in frame a  = getTermLabel("Due Date",15).
xxso_time:label in frame a  = getTermLabel("Due time",30).
ad_fax:label in frame a  = getTermLabel("EMAIL",15).

soship:label in frame a1  = getTermLabel("Ship-To",12).
socrterms:label in frame a1  = getTermLabel("Credit Terms",25).
ad_name:label in frame a1  = getTermLabel("Name",15).
adname:label in frame a1  = getTermLabel("Salesperson",25).
ad_line1:label in frame a1  = getTermLabel("Address",8).

for first so_mstr
      where recid(so_mstr) = so_recno no-lock:
end. /* FOR FIRST so_mstr */

do transaction on error undo, retry:
	order = so_nbr.
	customer = so_cust.
	soship = so_ship.
	version = so_rev.
	order_date = so_ord_date.
	socrterms = so_cr_terms.
	cmmtindex = so_cmtindx.
	soslspan = so_slspsn[1].
	solang = so_lang.
end.

for first ad_mstr where ad_domain = global_domain and ad_addr = soslspan no-lock: 
	adname = ad_name.
end.

sonbr = "QAD nr.:" + order.

for first xxso_mstr fields(xxso_date xxso_time xxso__log01) where xxso_domain = global_domain and xxso_nbr = order no-lock: end. 

view frame phead1.

for first ad_mstr where ad_domain = global_domain and ad_addr = customer no-lock:
	display 
		customer colon 20
		version colon 100  skip 		
		ad_name colon 20 		
		order_date colon 100	skip
		ad_line1 colon 20
		ad_line2 no-label 
		ad_line3 no-label skip
		ad_pst_id  colon 20 
		xxso_date colon 100 	skip
		xxso_time colon 100	skip
		ad_fax colon 20 format "x(120)" skip
	with frame a side-labels.
end.
for first ad_mstr where ad_domain = global_domain and ad_addr = soship no-lock:	
	display 
		soship colon 20  
		socrterms colon 100 skip
		ad_name colon 20 
		adname colon 100 skip
		ad_line1 colon 20 
		ad_line2 no-label
		ad_line3 no-label 
	with frame a1 side-labels.
end.

for each sod_det where sod_domain = global_domain and sod_nbr = order no-lock
with frame b:	
	sum = sod_qty_ord * sod_list_pr.
	create sum_unit.
		Assign
			sum_unit.lv-um = sod_um
			sum_unit.lv-qty = sod_qty_ord
			sum_unit.lv-pr = sod_list_pr
			sum_unit.lv-pr_total = sod_qty_ord * sod_list_pr.
	for each pt_mstr where pt_domain = global_domain and pt_part = sod_part no-lock:
		for each xxsod_det where xxsod_domain = global_domain and xxsod_part = order and xxsod__dec01 = sod_line no-lock:
			description = "".
			if solang <> "lt" then do:
				for first cd_det where cd_domain = global_domain and cd_ref = pt_part 
										and cd_lang = solang and cd_type = "PV" no-lock:
					description = cd_cmmt[01].					
				end.
				if description = "" then do:
					description = pt_desc1.
				end.
			end.
			else do:
				description = pt_desc1.
			end.
			display 
				pt_part format "x(8)"
				description 
				xxsod_muscle format "x(4)"
				xxsod_fat format "x(4)"
				xxsod_net format "x(4)"
				xxsod_age format "x(4)"
				pt__qad23 
				xxsod_ph format "x(4)"
				sod_qty_ord format ">>>,>>9.9<<<"
				sod_um   format "x(2)"
				sod_list_pr format ">>>,>>9.9<<<"
				sum		
				xxsod_cmt1 format "x(4)"
				xxsod_cmt2 
			with frame b down.
			down 1 with frame b.
		end.
	end.
end.

for each sum_unit no-lock break by lv-um:
	lv_unit = "".
	sum_qty_total = 0.
	sum_list_pr_total = 0.
	total_unit = 0.
	if first-of(lv-um) then do:
		for each units no-lock:
			if units.lv-um = sum_unit.lv-um then do:
				lv_unit = units.lv-um.
				sum_qty_total = sum_qty_total + units.lv-qty.
				sum_list_pr_total = sum_list_pr_total + units.lv-pr.
				total_unit = total_unit + units.lv-pr_total.
			end.
		end.
		Create unit_sum.
			Assign
				unit_sum.lv-sum_um = lv_unit
				unit_sum.lv-sum_qty = sum_qty_total
				unit_sum.lv-sum_pr = sum_list_pr_total
				unit_sum.lv-sum_pr_total = total_unit.
	end.
end.

for each unit_sum no-lock:
	display
		unit_sum.lv-sum_um colon 88
		unit_sum.lv-sum_qty
		unit_sum.lv-sum_pr_total colon 123 skip
	with frame b1 no-label no-underline width 210.
end. 

for each cmt_det where cmt_det.cmt_domain = global_domain 
and cmt_det.cmt_indx = cmmtindex  no-lock :
    if INDEX(cmt_det.cmt_print, "IN", 1) > 0 then do: 
		message skip.
        do j = 1 to 15 :
			if cmt_cmmt[j] <> "" then do:
				message cmt_cmmt[j] skip.
			end.
		end.
	end.
end.	


/*for each cd_det where cd_domain = global_domain and cd_ref = customer no-lock:
	display 
		cd_cmmt[1] skip
		cd_cmmt[2] skip
		cd_cmmt[3] skip
		cd_cmmt[4] skip
		cd_cmmt[5] skip
		cd_cmmt[6] skip
		cd_cmmt[7] skip
		cd_cmmt[8] skip
		cd_cmmt[9] skip
		cd_cmmt[10] skip
		cd_cmmt[11] skip
		cd_cmmt[12] skip
		cd_cmmt[13] skip
		cd_cmmt[14] skip
		cd_cmmt[15] skip
	with frame c no-label width 120.
end.*/	

pricelist = "         ".

if xxso__log01 then do:
	find first xxpi_mstr where xxpi_mstr.xxpi_domain = global_domain and  xxpi_mstr.xxpi_cust = customer no-lock no-error.
		if available xxpi_mstr then do:
			/*display
				getTermLabel("QUANTITY",12) colon 8 
				getTermLabel("PRICE",12) colon 23 skip		
				xxpi_mstr.xxpi_weight1  no-label colon 10
				xxpi_mstr.xxpi_price1  no-label  skip
			with frame d1_1 side-label no-attr-space width 80.*/
			pricelist = pricelist + getTermLabel("QUANTITY",12) + "        " + getTermLabel("PRICE",12) + "~n".
			pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight1) + "            " + string(xxpi_mstr.xxpi_price1) + "~n".
			if  xxpi_mstr.xxpi_weight2 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight2 no-label colon 10
					xxpi_mstr.xxpi_price2 no-label  skip
				with frame d1_2 side-label no-attr-space width 210.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight2) + "            " + string(xxpi_mstr.xxpi_price2) + "~n".
			end.
			if  xxpi_mstr.xxpi_weight3 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight3 no-label colon 10
					xxpi_mstr.xxpi_price3 no-label  skip
				with frame d1_3 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight3) + "            " + string(xxpi_mstr.xxpi_price3) + "~n".
			end.
			if  xxpi_mstr.xxpi_weight4 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight4 no-label colon 10
					xxpi_mstr.xxpi_price4 no-label  skip
				with frame d1_4 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight4) + "            " + string(xxpi_mstr.xxpi_price4) + "~n".
			end.
			if  xxpi_mstr.xxpi_weight5 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight5 no-label colon 10
					xxpi_mstr.xxpi_price5 no-label  skip
				with frame d1_5 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight5) + "            " + string(xxpi_mstr.xxpi_price5) + "~n".	
			end.
			if  xxpi_mstr.xxpi_weight6 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight6 no-label colon 10
					xxpi_mstr.xxpi_price6 no-label  skip
				with frame d1_6 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight6) + "            " + string(xxpi_mstr.xxpi_price6) + "~n".
			end.
			if  xxpi_mstr.xxpi_weight7 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight7 no-label colon 10
					xxpi_mstr.xxpi_price7 no-label  skip
				with frame d1_7 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight7) + "            " + string(xxpi_mstr.xxpi_price7) + "~n".
			end.	
			if  xxpi_mstr.xxpi_weight8 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight8 no-label colon 10
					xxpi_mstr.xxpi_price8 no-label  skip
				with frame d1_8 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight8) + "            " + string(xxpi_mstr.xxpi_price8) + "~n".
			end.	
			if  xxpi_mstr.xxpi_weight9 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight9 no-label colon 10
					xxpi_mstr.xxpi_price9 no-label  skip
				with frame d1_9 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight9) + "            " + string(xxpi_mstr.xxpi_price9) + "~n".
			end.	
			if  xxpi_mstr.xxpi_weight10 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight10 no-label colon 10
					xxpi_mstr.xxpi_price10 no-label  skip
				with frame d1_10 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight10) + "            " + string(xxpi_mstr.xxpi_price10) + "~n".
			end.	
			if  xxpi_mstr.xxpi_weight11 <> 0 then do:
				/*display
					xxpi_mstr.xxpi_weight11 no-label colon 10
					xxpi_mstr.xxpi_price11 no-label  skip
				with frame d1_11 side-label no-attr-space width 80.*/
				pricelist = pricelist + "            " + string(xxpi_mstr.xxpi_weight11) + "            " + string(xxpi_mstr.xxpi_price11) + "~n".
			end.
			display 
				pricelist
			with frame d no-label width 210.
		end.
		else do:
			find first xxpimstr where xxpimstr.xxpi_domain = global_domain and  xxpimstr.xxpi_cust = "" no-lock no-error.
				if available xxpimstr then do:
					/*display
						getTermLabel("QUANTITY",12) colon 8 
						getTermLabel("PRICE",12) colon 23 skip
						xxpimstr.xxpi_weight1  no-label colon 10
						xxpimstr.xxpi_price1  no-label  skip
						
						xxpimstr.xxpi_weight2 no-label colon 10
						xxpimstr.xxpi_price2 no-label  skip
						
						xxpimstr.xxpi_weight3  no-label colon 10
						xxpimstr.xxpi_price3  no-label skip
						
						xxpimstr.xxpi_weight4  no-label colon 10
						xxpimstr.xxpi_price4  no-label skip
						
						xxpimstr.xxpi_weight5  no-label colon 10
						xxpimstr.xxpi_price5  no-label skip
						
						xxpimstr.xxpi_weight6  no-label colon 10
						xxpimstr.xxpi_price6  no-label skip
						
						xxpimstr.xxpi_weight7  no-label colon 10
						xxpimstr.xxpi_price7   no-label skip
						
						xxpimstr.xxpi_weight8  no-label colon 10
						xxpimstr.xxpi_price8   no-label skip
						
						xxpimstr.xxpi_weight9  no-label colon 10
						xxpimstr.xxpi_price9  no-label skip
						
						xxpimstr.xxpi_weight10  no-label colon 10
						xxpimstr.xxpi_price10  no-label skip
						
						xxpimstr.xxpi_weight11  no-label colon 10
						xxpimstr.xxpi_price11  no-label skip
					with frame d1 side-label no-attr-space width 80.*/
					
					pricelist = pricelist + getTermLabel("QUANTITY",12) + "        " + getTermLabel("PRICE",12) + "~n".
					pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight1) + "            " + string(xxpimstr.xxpi_price1) + "~n".
					if  xxpimstr.xxpi_weight2 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight2) + "            " + string(xxpimstr.xxpi_price2) + "~n".
					end.
					if  xxpimstr.xxpi_weight3 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight3) + "            " + string(xxpimstr.xxpi_price3) + "~n".
					end.
					if  xxpimstr.xxpi_weight4 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight4) + "            " + string(xxpimstr.xxpi_price4) + "~n".
					end.
					if  xxpimstr.xxpi_weight5 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight5) + "            " + string(xxpimstr.xxpi_price5) + "~n".	
					end.
					if  xxpimstr.xxpi_weight6 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight6) + "            " + string(xxpimstr.xxpi_price6) + "~n".
					end.
					if  xxpimstr.xxpi_weight7 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight7) + "            " + string(xxpimstr.xxpi_price7) + "~n".
					end.	
					if  xxpimstr.xxpi_weight8 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight8) + "            " + string(xxpimstr.xxpi_price8) + "~n".
					end.	
					if  xxpimstr.xxpi_weight9 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight9) + "            " + string(xxpimstr.xxpi_price9) + "~n".
					end.	
					if  xxpimstr.xxpi_weight10 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight10) + "            " + string(xxpimstr.xxpi_price10) + "~n".
					end.	
					if  xxpimstr.xxpi_weight11 <> 0 then do:
						pricelist = pricelist + "            " + string(xxpimstr.xxpi_weight11) + "            " + string(xxpimstr.xxpi_price11) + "~n".
					end.
					display 
						pricelist
					with frame d1 no-label width 210.
					
				end.
		end.
end.

/**********************YF10 END Report**************************************/
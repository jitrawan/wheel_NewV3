<?php session_start();

error_reporting(0);?>

<?php

//include("mpdf/mpdf.php");
require("../../../vendor/autoload.php");

require("../../core/config.core.php");

require("../../core/connect.core.php");

require("../../core/functions.core.php");

$getdata = new clear_db();

$connect = $getdata->my_sql_connect(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME);

$getdata->my_sql_set_utf8();



use mPDF;

$mpdf = new mPDF('th', 'A4-L', '0', 'THSaraban');

$head = '

<style>

	body{

		font-family: "Garuda";//เรียกใช้font Garuda สำหรับแสดงผล ภาษาไทย

	}

  table {

  border-collapse: collapse;

  width: 100%;

}



th, td {

  text-align: left;

  padding: 8px;

}



tr:nth-child(even){background-color: #f2f2f2}



th {

  background-color: #465246;

  color: white;

}

.footer {

  font-size: 14px;

   position: fixed;

   left: 0;

   bottom: 0;

   width: 100%;

   color: black;

   text-align: right;

}

</style>



<h2 style="text-align:center">รายงานสินค้า</h2>

<p style="text-align:center"><b>รายงาน ณ วันที่ '.date("d/m/Y").' </b></p>

<p style="text-align:center"><b>จัดกลุ่มตาม ประเภท , มือ </b></p>';

$str_sql = "";

if(isset($_GET['key'])){

  if(addslashes($_GET['key']) != 0){

    $str_sql  .= " And TypeID = '".$_GET['key']."' ";

    if($_GET['key'] == '1'){$gettype = 'ล้อแม๊ก';}else{$_GET['key'] = 'ยาง';}

    $head .= '<p style="text-align:center"><b>ประเภทสินค้า : '.@$gettype.' </b></p>';

  }else{

    $head .= '<p style="text-align:center"><b>ประเภทสินค้า : ทั้งหมด </b></p>';

  }



}

$head .= '<table>

    <tr>

        <th width="12%">รหัสสินค้า</th>

        <th width="40%">รายละเอียด</th>

        <th width="10%" >ราคาซื้อ</th>

        <th width="10%">ราคาขาย</th>

        <th width="10%">คงเหลือ</th>

    </tr>

</thead>';



$GroupType = $getdata->my_sql_select(" TypeID,hand "," product_N "," ProductStatus = '1' $str_sql Group by TypeID,hand Order by TypeID,hand ");

$content = "";

if (mysql_num_rows($GroupType) > 0) {
	$sumPriceBuy = 0;
	$sumPriceSale = 0;
	$sumtotal = 0;
        while($row = mysql_fetch_object($GroupType)) {

          $gettype = "";

          if(@$row->TypeID == '1'){$gettype = 'ล้อแม๊ก';}else{$gettype = 'ยาง';}

            $content .= '<tr style="font-weight:bold; color:#FFF; background:#A9A9A9;">

                          <td colspan="5">&nbsp;&nbsp;ประเภท : '.@$gettype.' &nbsp;&nbsp;,มือ : '.@$row->hand.'</td>

                      </tr>';

            $DetailProduct = $getdata->my_sql_select(" p.*, r.*, w.* ,w.diameter as diameterWheel,r.diameter as diameterRubber,p.ProductID as ProductID,r.diameter as rubdiameter ,w.diameter as whediameter,w.gen as genWheel
						,case
				      when p.TypeID = '2'
				      then (select b.Description from brandRubble b where r.brand = b.id)
				      when p.TypeID = '1'
				      then (select b.Description from BrandWhee b where b.id = w.brand)
				      end BrandName
							,case
			          when p.TypeID = '2'
			          then (select r.code from productdetailrubber r where r.ProductID = p.ProductID)
			          when p.TypeID = '1'
			          then (select w.code from productdetailwheel w where w.ProductID = p.ProductID)
			          end code "
						," product_N p

            left join productDetailWheel w on p.ProductID = w.ProductID

            left join productdetailrubber r on p.ProductID = r.ProductID "

            ," p.ProductStatus = '1' and p.TypeID = '".$row->TypeID."' and p.hand = '".$row->hand."' ");


            if(mysql_num_rows($DetailProduct) > 0){

                while($showDetailProduct = mysql_fetch_object($DetailProduct)){

									$sumPriceBuy = $sumPriceBuy + $showDetailProduct->PriceBuy;
                  $sumPriceSale = $sumPriceSale + $showDetailProduct->PriceSale;
                  
                  if($showDetailProduct->TypeID == '1'){
                    $gettype = $showDetailProduct->BrandName." รุ่น:".$showDetailProduct->genWheel." ขนาด:".$showDetailProduct->diameterWheel." ขอบ:".$showDetailProduct->whediameter." รู:".$showDetailProduct->holeSize." ประเภท:".$showDetailProduct->typeFormat;
                  }else if($showDetailProduct->TypeID == '2'){
                    $gettype = $showDetailProduct->BrandName." ขนาด:".$showDetailProduct->diameterRubber." ขอบ:".$showDetailProduct->rubdiameter." ซี่รี่:".$showDetailProduct->series." ความกว้าง:".$showDetailProduct->width;
                  }else{
                    $gettype = "";
                  }
                  

                $content .='<tr>

                  <td align="center"><strong>'.@$showDetailProduct->code.'</strong></td>

                  <td><strong>'.@$gettype.'</strong></td>

                  <td valign="middle" style=" text-align: right;"><strong>'.@convertPoint2($showDetailProduct->PriceBuy,'2').'&nbsp;-.</strong></td>

                  <td valign="middle" style=" text-align: right;"><strong>'.@convertPoint2($showDetailProduct->PriceSale,'2').'&nbsp;-.</strong></td>

                  <td align="center" valign="middle"><strong>'.@convertPoint2($showDetailProduct->Quantity,'0').'&nbsp; ชิ้น</strong></td>

                </tr>';

              }

            }

        }
$sumtotal = $sumPriceSale - $sumPriceBuy;
    }


		$content .='<tr style="text-align: right; background:#525050;">
		<td style="color: white; text-align: right;" colspan="2">รวมจำนวน</td>
		<td valign="middle" style=" text-align: right; color: white;"><strong>'.@convertPoint2($sumPriceBuy,'2').'</strong></td>
		<td valign="middle" style=" text-align: right; color: white;"><strong>'.@convertPoint2($sumPriceSale,'2').'</strong></td>
		<td valign="middle" style=" text-align: right; color: white;"><strong>'.@convertPoint2($sumtotal,'2').'</strong></td>
		</tr>';





$content .= '<tbody>';



$end = '</tbody>

</table>

<div class="footer">

 <p style="margin-right: 10px; color: #bbb7b7;">@รายงานร้านยางไว้ใจผม</p>

</div>';







$mpdf->WriteHTML($head);

$mpdf->WriteHTML($content);

$mpdf->WriteHTML($end);



$mpdf->Output();

?>



/*

$pdf->SetAutoFont();

$pdf->SetDisplayMode('fullpage');

$pdf->WriteHTML($html, 2);

$pdf->Output("PDF_File/Std-Study$datechk.pdf");

*/

<style>
#custom-search-input{
    padding: 3px;
    border: solid 1px #E4E4E4;
    border-radius: 6px;
    background-color: #fff;
}

#custom-search-input input{
    border: 0;
    box-shadow: none;
}

#custom-search-input button{
    margin: 2px 0 0 0;
    background: none;
    box-shadow: none;
    border: 0;
    color: #666666;
    padding: 0 8px 0 10px;
    border-left: solid 1px #ccc;
}

#custom-search-input button:hover{
    border: 0;
    box-shadow: none;
    border-left: solid 1px #ccc;
}

#custom-search-input .glyphicon-search{
    font-size: 23px;
}
.cssshelf{
  border-radius: 8px;
  margin-bottom: 0px;
  padding-bottom: 15px;
  margin-right: 0px;
  margin-left: 20px;
  padding-top: 15px;

}
.cssfalse{
  border: 2px solid #ff0000fa;
}
.csstrue{
  border: 2px solid Green;
}
</style>
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa fa-plus-square fa-fw"></i> เพิ่มShelfรับสินค้า</h1>
     </div>
</div>
<ol class="breadcrumb">
    <li><a href="index.php"><?php echo @LA_MN_HOME;?></a></li>
  <li class="active">จัดการShelfรับสินค้า</li>
</ol>

 <?php
 
 echo @$alert;
 ?>
 <style>
	body{
		<?php echo @$userdata->font_size_text;?>
	}
	</style>

<?php
 if(isset($_POST['info_save'])){
    $getpo = $getdata->my_sql_query(NULL,"shelf","shelf_code='".addslashes($_POST['shelf_id'])."' ");
   if( $_POST['total'] > $getpo->amt){
    $alert = '<div class="alert alert-danger alert-dismissable"><button data-dismiss="alert" class="close" type="button">×</button>จำนวนชั้นวางไม่เพียงพอ !!</div>';
   }else{
   $getdata->my_sql_update("shelf_detail"," amt_rimit =  amt_rimit + '".$_POST['total']."' ","shelf_code='".addslashes($_POST['shelf_id'])."' ");

   

   $getdata->my_sql_update("product_N"," Quantity =  Quantity + '".addslashes($_POST['total'])."'  ","ProductID='".addslashes($_POST['ProductID'])."' ");
   $alert = '<div class="alert alert-block alert-success fade in"><button data-dismiss="alert" class="close" type="button">×</button>เพิ่มรายการสำเร็จ</div>';
   }
 }
 echo @$alert;
    ?>
                    <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="info_data">
                            <br/>

                      <div class="panel panel-primary">

                        <div class="panel-heading">
                            รหัสสินค้า : <?= addslashes($_GET['ProductID'])?>
                        </div>
                        <div class="panel-body">

<form method="post" enctype="multipart/form-data" name="form1" id="form1">
                            <div class="form-group row">
                            <?
                            $getproduct = $getdata->my_sql_query("p.*, r.*, w.* ,p.ProductID as ProductID, p.Quantity as Quantity,r.diameter as rubdiameter ,w.diameter as whediameter,w.gen as genWheel
                            ,case
                              when p.TypeID = '2'
                              then (select b.Description from brandRubble b where r.brand = b.id)
                              when p.TypeID = '1'
                              then (select b.Description from BrandWhee b where b.id = w.brand)
                              end BrandName
                              , case
                              when p.TypeID = '2'
                              then (select r.code from productdetailrubber r where r.ProductID = p.ProductID)
                              when p.TypeID = '1'
                              then (select w.code from productdetailwheel w where w.ProductID = p.ProductID)
                              end code
                              "," product_N p
                              left join productdetailrubber r on p.ProductID = r.ProductID
                              left join productdetailwheel w on p.ProductID = w.ProductID 
                              "," (r.code = '".addslashes($_GET['ProductID'])."' or w.code = '".addslashes($_GET['ProductID'])."') ");

                              if($getproduct->TypeID == '1'){
                                $gettype = "ล้อแม๊ก ".$getproduct->BrandName." รุ่น:".$getproduct->genWheel." ขนาด:".$getproduct->diameterWheel." ขอบ:".$getproduct->whediameter." รู:".$getproduct->holeSize." ประเภท:".$getproduct->typeFormat;
                              }else if($getproduct->TypeID == '2'){
                                $gettype = "ยาง ".$getproduct->BrandName." ขนาด:".$getproduct->diameterRubber." ซี่รี่:".$getproduct->series." ความกว้าง:".$getproduct->width;
                              }else{
                                $gettype = "";
                              }
                            ?>
                              <div class="col-xs-2">
                                <input type="hidden" name="po" id="po" value="<?php echo @$getpo->po;?>" >
                                <input type="hidden" name="ProductID" id="ProductID" value="<?php echo @$getproduct->ProductID;?>" >
                                 <label>รหัสสินค้า : </label> <label> &nbsp;<?php echo @$getproduct->code;?> </label>
                            </div>
                            <div class="col-xs-8">
                             <label>รายละเอียดสินค้า : </label> <label> &nbsp;<?= $gettype?> </label>
                           </div>
                           <div class="col-xs-2">
                             <label>จำนวนคงเหลือ : </label> <label> &nbsp;<?= $getproduct->Quantity?> </label>
                           </div>
                         </div>


                          <div class="form-group row">
                          <div class="col-xs-3">
                              <label for="shelf_id">shelf</label>
                                                  <select name="shelf_id" id="shelf_id" class="form-control"  required>
                                                      <option value="" selected="selected">--เลือกชั้นวางสินค้า--</option>
                                                        <?
                                                         $getshelf = $getdata->my_sql_select("s.*,s.shelf_code,(select sum(ss.amt_rimit) from shelf_detail ss where ss.shelf_code = s.shelf_code) as rimit ","shelf s","s.shelf_status = '1'");
                                                        while($showshelf = mysql_fetch_object($getshelf)){
                                                            if(@$showshelf->rimit < @$showshelf->amt ){
                                                            ?>
                                                        <option value="<?php echo @$showshelf->shelf_code;?>"><?php echo @$showshelf->shelf_detail;?> ชั้น <?php echo @$showshelf->shelf_class;?> เหลือ <?php echo$showshelf->amt -$showshelf->rimit ?></option>
                                                        <?
                                                        }
                                                        }
                                                      ?>
                                                </select>
                                
                              </div>
                              <div class="col-xs-2">
                                <label for="mname">จำนวน (ชิ้น)</label>
                               <input type="number" name="total" id="total" onblur="setchekc_total(this.value)" class="form-control number" size="4" required>
                               <input type="number" name="chekc_total" id="chekc_total" style="display:none;">
                              </div>
                              <div class="col-xs-2">
                              <label for="mname">จำนวน ที่รับ (ชิ้น)</label>
                               <input type="number" name="gettotal" id="gettotal" class="form-control number" size="4" readonly>
                              </div>
                              
                            </div>

                          
                          <div class="form-group row">
                              <div class="col-xs-3">
                                <br>
                              <button type="submit" name="info_save" id="info_save" class="btn btn-primary" ><i class="fa fa-plus-square"></i> เพิ่มรายการ</button>
                              </div>
                          </div>
                        </form>

                      <table width="50%" border="0" class="table-bordered">
                          <thead>
                        <tr style="font-weight:bold; color:#FFF; text-align:center; background:#110767;">
                          <td width="45%">รายละเอียด Shelf</td>
                           <td width="10%">จำนวน</td>
                        </tr>
                        </thead>
                         <?
                          $getproduct = $getdata->my_sql_select(NULL,"shelf_detail","ProductID = '".addslashes($_GET['ProductID'])."'");
                          while($showproduct = mysql_fetch_object($getproduct)){
                            $gets =$getdata->my_sql_query(NULL,"shelf","shelf_code='".$showproduct->shelf_code."'");
                        ?>
                          <tr>
                            <td align="left">&nbsp;<?php echo @$showproduct->shelf_code;?>&nbsp;<?php echo @$gets->shelf_detail;?>&nbsp; ชั้น &nbsp;<?php echo @$gets->shelf_class;?></td>
                           <td align="right" valign="middle"><strong><?php echo @$showproduct->amt_rimit;?></strong>&nbsp;ชิ้น&nbsp;</td>
                          </tr>
                       <? } ?>
                      </table>

                            </div>
                      </div>
                    </div>
                  </div>                                       
<script type="text/javascript">
$( document ).ready(function() {
    
});

function setchekc_total(isvalue){
    if($('#shelf_id').val() == ""){
        alert("กรุ่ณาเลือกชั้นวางก่อน !!");
        $('#total').val(0);
    }
    //console.log(isvalue)
}
</script>

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
                    <!-- Tab panes -->
                            <div class="tab-content">
                                <div class="tab-pane fade in active" id="info_data">
                            <br/>

                      <div class="panel panel-primary">

                        <div class="panel-heading">
                            รหัสสินค้า : <?= addslashes($_GET['ProductID'])?>
                        </div>
                        <div class="panel-body">

                      <table width="100%" border="0" class="table-bordered">
                          <thead>
                        <tr style="font-weight:bold; color:#FFF; text-align:center; background:#110767;">
                          <td width="45%">รายละเอียด Shelf</td>
                          <td width="45%">รายละเอียด สินค้า</td>
                          <td width="10%">จำนวน</td>
                        </tr>
                        </thead>
                         <?
                          $getproduct = $getdata->my_sql_select(NULL,"shelf_detail","ProductID = '".addslashes($_GET['ProductID'])."'");
                         ?>
                      </table>

                          <form class="" role="search" method="get">
                              <div class="row">
                                    <div class="col-md-4">
                                      <div id="custom-search-input">
                                            <div class="input-group col-md-12">
                                               <input type="hidden" name="p" id="p" value="addShelf" >
                                               <input type="hidden" name="d" id="d" value="" >

                                              <label for="shelf_id">shelf</label>
                                                  <select name="shelf_id" id="shelf_id" class="form-control" required>
                                                      <option value="" selected="selected">--เลือกชั้นวางสินค้า--</option>
                                                        <?
                                                        while($showshelf = mysql_fetch_object($getshelf)){?>
                                                        <option value="<?php echo @$showshelf->shelf_id;?>"><?php echo @$showshelf->shelf_detail;?> ชั้น <?php echo @$showshelf->shelf_class;?></option>
                                                        <?
                                                        }
                                                      ?>
                                                </select>
                                                <!--input type="text" class="form-control" name="q" placeholder="รหัสสินค้า เพื่อค้นหา" value="<?php echo @htmlentities($_GET['q']);?>" /-->
                                             </div>
                                        </div>
                                    </div>
                                  </div>
                              </form>
                            </div>
                      </div>
                    </div>
                  </div>                                       
<script type="text/javascript">
$( document ).ready(function() {
});
</script>

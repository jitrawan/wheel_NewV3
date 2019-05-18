
<div class="row">
     <div class="col-lg-12">
             <h1 class="page-header"><i class="fa flaticon-tag20 fa-fw"></i> Shelf สินค้า</h1>
     </div>
</div>
<ol class="breadcrumb">
  <li><a href="index.php"><?php echo @LA_MN_HOME;?></a></li>
   <li><a href="?p=setting"><?php echo @LA_LB_SETTING;?></a></li>
  <li class="active">Shelf สินค้า</li>
</ol>

<?php
if(isset($_POST['save_card'])){
	if(addslashes($_POST['shelf_code']) && addslashes($_POST['shelf_detail']) != NULL){
    $getShelf = $getdata->my_sql_select(NULL,"shelf"," shelf_detail ='".addslashes($_POST['shelf_detail'])."' and shelf_class = '".addslashes($_POST['shelf_class'])."'  ");

if(mysql_num_rows($getShelf) < 1){
        $getdata->my_sql_insert_New("shelf","shelf_code, shelf_detail, shelf_class, shelf_status ","'".addslashes($_POST['shelf_code'])."' ,'".addslashes($_POST['shelf_detail'])."' , '".addslashes($_POST['shelf_class'])."'  ,'".addslashes($_POST['shelf_status'])."' ");
    		$alert = '<div class="alert alert-success alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'.LA_ALERT_ADD_NEW_TYPE_OF_IS_DONE.'</div>';
    }else{
      $alert = '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>ข้อมูลซ้ำ</div>';
    }
	}else{
		$alert = '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>กรุณากรอกข้อมูล shelf สินค้า</div>';
	}
}
if(isset($_POST['save_edit_card'])){
		 if(addslashes($_POST['edit_shelf_detail'])!= NULL){
       $getShelf = $getdata->my_sql_select(NULL,"shelf","shelf_detail ='".addslashes($_POST['edit_shelf_detail'])."' and shelf_class = '".addslashes($_POST['edit_shelf_class'])."' and amt = ".$_POST['edit_shelf_amt']." ");
       if(mysql_num_rows($getShelf) < 1){
    			 $getdata->my_sql_update("shelf","shelf_detail='".addslashes($_POST['edit_shelf_detail'])."', shelf_class = '".addslashes($_POST['edit_shelf_class'])."' ","shelf_id='".addslashes($_POST['edit_shelf_id'])."'");
    			$alert = '<div class="alert alert-info alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>'.LA_ALERT_UPDATE_DATA_DONE.'</div>';
        }else{
          $alert = '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>ข้อมูลซ้ำ</div>';
        }
     }else{
			 $alert = '<div class="alert alert-danger alert-dismissable"><button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>กรุณากรอกข้อมูล shelf สินค้า</div>';
		 }
	 }
?>
<!-- Modal detail shelf -->
<div class="modal fade" id="detailShelf" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
    <form id="form2" name="form2" method="post">
     <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only"><?php echo @LA_BTN_CLOSE;?></span></button>
                    <h4 class="modal-title" id="memberModalLabel">รายการสินค้าในshelf</h4>
                </div>
                <div class="ct">

                </div>
            </div>
        </div>
  </form>
</div>

<!-- Modal Edit -->
<div class="modal fade" id="edit_card_type" tabindex="-1" role="dialog" aria-labelledby="memberModalLabel" aria-hidden="true">
    <form id="form2" name="form2" method="post">
     <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">&times;</span><span class="sr-only"><?php echo @LA_BTN_CLOSE;?></span></button>
                    <h4 class="modal-title" id="memberModalLabel">แก้ไข Shelf สินค้า</h4>
                </div>
                <div class="ct">

                </div>
            </div>
        </div>
  </form>
</div>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true"><form method="post" enctype="multipart/form-data" name="form1" id="form1">
                                <div class="modal-dialog">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                            <h4 class="modal-title" id="myModalLabel">เพิ่มข้อมูลshelf สินค้า</h4>
                                        </div>
                                        <div class="modal-body">
                                          <?php
                                          @$getcode = $getdata->getMaxID("shelf_code","shelf","s");
                                          ?>
                                          <div class="form-group row">
                                            <div class="col-md-6">
                                              <label for="shelf_detail">รัหส shelf สินค้า</label>
                                              <input type="text" name="shelf_code" id="shelf_code" value="<?= @$getcode?>" class="form-control" readonly>
                                            </div>
                                            <div class="col-md-6">

                                            </div>
                                          </div>
                                          <div class="form-group row">
                                            <div class="col-md-6">
                                              <label for="shelf_detail">shelf สินค้า</label>
                                              <input type="text" name="shelf_detail" id="shelf_detail" class="form-control" autofocus required>
                                            </div>
                                            <div class="col-md-6">
                                              <label for="shelf_detail">ชั้น สินค้า</label>
                                              <input type="number" name="shelf_class" id="shelf_class" class="form-control number" required>
                                            </div>
                                          </div>

                                          <div class="form-group row">
                                          <div class="col-md-6">
                                              <label for="shelf_status">บรรจุ</label>
                                              <input type="number" name="shelf_amt" id="shelf_amt" class="form-control number" require>
                                            </div>
                                            <div class="col-md-6">
                                              <label for="shelf_status"><?php echo @LA_LB_STATUS;?></label>
                                               <select name="shelf_status" id="shelf_status" class="form-control">
                                                 <option value="1" selected="selected"><?php echo @LA_BTN_SHOW;?></option>
                                                 <option value="0"><?php echo @LA_BTN_HIDE;?></option>

                                               </select>
                                            </div>
                                             <div class="col-md-6"></div>

                                          </div>
                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-default btn-sm" data-dismiss="modal"><i class="fa fa-times fa-fw"></i><?php echo @LA_BTN_CLOSE;?></button>
                                          <button type="submit" name="save_card" class="btn btn-primary btn-sm"><i class="fa fa-save fa-fw"></i><?php echo @LA_BTN_SAVE;?></button>
                                        </div>
                                    </div>
                                    <!-- /.modal-content -->
                                </div>
                                </form>
                                <!-- /.modal-dialog -->
</div>
                            <!-- /.modal -->
  <?php
  echo @$alert;
  ?>

 <button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal"><i class="fa fa-plus fa-fw"></i> เพิ่มshelf สินค้า</button><br/><br/>
 <div class="panel panel-default">
  <!-- Default panel contents -->
  <!--div class="panel-heading">สถานะการซ่อม/เคลม ทั้งหมด</div-->

   <div class="table-responsive">
  <!-- Table -->
  <table width="100%" class="table table-striped table-bordered table-hover">
  <thead>
  <tr style="color:#FFF;">
    <th width="3%" bgcolor="#5fb760">#</th>
    <th width="10%" bgcolor="#5fb760">รหัส shelf </th>
    <th width="44%" bgcolor="#5fb760">รายละเอียด shelf </th>
    <th width="20%" bgcolor="#5fb760">บรรจุ </th>
    <th width="23%" bgcolor="#5fb760"><?php echo @LA_LB_MANAGE;?></th>
  </tr>
  </thead>
  <tbody>
  <?php
  $x=0;
  $getcat = $getdata->my_sql_select("s.shelf_code,s.*
  ,(select sum(d.amt_rimit) FROM shelf_detail d where d.shelf_code = s.shelf_code) as useAmt "
  ,"shelf s"
  ,"s.shelf_status in ('1','0') ORDER BY s.shelf_code, s.shelf_detail, s.shelf_class ");
  while($showcat = mysql_fetch_object($getcat)){
	  $x++;
  ?>
  <tr id="<?php echo @$showcat->shelf_id;?>">
    <td align="center"><?php echo @$x;?></td>
    <td>&nbsp;<?php echo @$showcat->shelf_code;?> </td>
    <td>&nbsp;<?php echo @$showcat->shelf_detail;?> &nbsp; ชั้น &nbsp;<?php echo @$showcat->shelf_class;?></td>
    <td align="right"><a data-toggle="modal" data-target="#detailShelf" data-whatever="<?php echo @$showcat->shelf_code;?>"><?php if(@$showcat->useAmt > 0){echo @$showcat->useAmt;}else{echo 0;}  ;?>/<?php echo @$showcat->amt;?> &nbsp; ชิ้น</a></td>
    <td align="center" valign="middle">
      <?php
	  if($showcat->shelf_status == '1'){
		  echo '<button type="button" class="btn btn-success btn-xs" id="btn-'.@$showcat->shelf_id.'" onClick="javascript:changecatStatus(\''.@$showcat->shelf_id.'\',\''.$_SESSION['lang'].'\');"><i class="fa fa-unlock-alt" id="icon-'.@$showcat->shelf_id.'"></i> <span id="text-'.@$showcat->shelf_id.'">'.@LA_BTN_ON.'</span></button>';
	  }else{
		  echo '<button type="button" class="btn btn-danger btn-xs" id="btn-'.@$showcat->shelf_id.'" onClick="javascript:changecatStatus(\''.@$showcat->shelf_id.'\',\''.$_SESSION['lang'].'\');"><i class="fa fa-lock" id="icon-'.@$showcat->shelf_id.'"></i> <span id="text-'.@$showcat->shelf_id.'">'.@LA_BTN_OFF.'</span></button>';
	  }
	  ?><a data-toggle="modal" data-target="#edit_card_type" data-whatever="<?php echo @$showcat->shelf_id;?>" class="btn btn-xs btn-info" style="color:#FFF;"><i class="fa fa-edit fa-fw"></i> <?php echo @LA_BTN_EDIT;?></a><button type="button" class="btn btn-danger btn-xs delete" id="del_<?php echo @$showcat->shelf_id;?>"><i class="glyphicon glyphicon-remove"></i> <?php echo @LA_BTN_DELETE;?></button></td>
  </tr>
  <?php
  }
  ?>
  </tbody>
</table>
</div>
</div>
<script type="text/javascript">
function MM_jumpMenu(targ,selObj,restore){ //v3.0
  eval(targ+".location='"+selObj.options[selObj.selectedIndex].value+"'");
  if (restore) selObj.selectedIndex=0;
}
</script>
<script language="javascript">
$(document).ready(function(){

  $(".number").bind('keyup mouseup', function () {
								if($(this).val() < 0) {
									alert("กรุณากรอกตัวเลขให้ถูกต้อง ! ");
									$(this).val(0);
								}
						});

  $('.delete').click(function(){
    var id = this.id;
    var splitid = id.split("_");
    var deleteid = splitid[1];
    var r = confirm("ต้องการลบข้อมูล ?");
    if (r == true) {
        $.ajax({
           url: 'settings/deleteShelf.php',
           type: 'POST',
           data: { id:deleteid },
           success: function(response){
             if(response == 1){
                deletecat(deleteid);
                alert("ลบข้อมูลสำเร็จ ! ");
              }else{
                alert("ไม่สามารถลบได้  เนื่องจากมีสินค้าอยู่ใน Shelf นี้ ! ");
              }
            }
         });
    }

  });
  	});
function changecatStatus(catkey,lang){
	if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
	 	xmlhttp=new XMLHttpRequest();
	}else{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	var es = document.getElementById('btn-'+catkey);
	if(es.className == 'btn btn-success btn-xs'){
		var sts= 1;
	}else{
		var sts= 0;
	}
	xmlhttp.onreadystatechange=function(){
  		if (xmlhttp.readyState==4 && xmlhttp.status==200){

			if(es.className == 'btn btn-success btn-xs'){
				document.getElementById('btn-'+catkey).className = 'btn btn-danger btn-xs';
				document.getElementById('icon-'+catkey).className = 'fa fa-lock';
				if(lang == 'en'){
					document.getElementById('text-'+catkey).innerHTML = 'Hide';
				}else{
					document.getElementById('text-'+catkey).innerHTML = 'ปิดใช้งาน';
				}

			}else{
				document.getElementById('btn-'+catkey).className = 'btn btn-success btn-xs';
				document.getElementById('icon-'+catkey).className = 'fa fa-unlock-alt';
				if(lang == 'en'){
					document.getElementById('text-'+catkey).innerHTML = 'Show';
				}else{
					document.getElementById('text-'+catkey).innerHTML = 'เปิดใช้งาน';
				}

			}
  		}
	}

	xmlhttp.open("GET","function.php?type=change_shelf_status&key="+catkey+"&sts="+sts,true);
	xmlhttp.send();
}
	function deletecat(catkey){
    if (window.XMLHttpRequest){// code for IE7+, Firefox, Chrome, Opera, Safari
	 	xmlhttp=new XMLHttpRequest();
	}else{// code for IE6, IE5
  		xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
	}
	xmlhttp.onreadystatechange=function(){
  		if (xmlhttp.readyState==4 && xmlhttp.status==200){
		document.getElementById(catkey).innerHTML = '';
  }
	}
	xmlhttp.open("GET","function.php?type=delete_shelf&key="+catkey,true);
	xmlhttp.send();
}
</script>
<script>
    $('#edit_card_type').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this);
          var dataString = 'key=' + recipient;

            $.ajax({
                type: "GET",
                url: "settings/edit_shelf.php",
                data: dataString,
                cache: false,
                success: function (data) {
                   // console.log(data);
                    modal.find('.ct').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
    })

     $('#detailShelf').on('show.bs.modal', function (event) {
          var button = $(event.relatedTarget) // Button that triggered the modal
          var recipient = button.data('whatever') // Extract info from data-* attributes
          var modal = $(this);
          var dataString = 'key=' + recipient;

            $.ajax({
                type: "GET",
                url: "settings/detailShelf.php",
                data: dataString,
                cache: false,
                success: function (data) {
                   // console.log(data);
                    modal.find('.ct').html(data);
                },
                error: function(err) {
                    console.log(err);
                }
            });
    })
    </script>

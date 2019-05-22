<?php
session_start();
require("../../core/config.core.php");
require("../../core/connect.core.php");
require("../../core/functions.core.php");
$getdata = new clear_db();
$connect = $getdata->my_sql_connect(DB_HOST,DB_USERNAME,DB_PASSWORD,DB_NAME);
$getdata->my_sql_set_utf8();

if(@addslashes($_GET['lang'])){
	$_SESSION['lang'] = addslashes($_GET['lang']);
}else{
	$_SESSION['lang'] = $_SESSION['lang'];
}
if(@$_SESSION['lang']!=NULL){
	require("../../language/".@$_SESSION['lang']."/site.lang");
	require("../../language/".@$_SESSION['lang']."/menu.lang");
}else{
	require("../../language/th/site.lang");
	require("../../language/th/menu.lang");
	$_SESSION['lang'] = 'th';

}

$id = $_POST['id'];
$getS = $getdata->my_sql_query(NULL,"shelf","shelf_id ='".$id."' ");
$getShelfDetail = $getdata->my_sql_query("sum(amt_rimit) as sumamt","shelf_detail","shelf_code ='".$getS->shelf_code."' ");

//$getShelf = $getdata->my_sql_select(NULL,"product_n","shelf_id ='".$id."' ");
if($getShelfDetail->sumamt < 1){
   $getdata->my_sql_delete("shelf","shelf_id='".$id."'");
    $getdata->my_sql_delete("shelf_detail","shelf_code='".$getS->shelf_code."' ");
  $results = 1;
 }else{
   $results = 0;
 }
 echo $results;
?>

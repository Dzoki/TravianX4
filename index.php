<?php
/*
|---------------------------------------------------------------
| LANGUAGE
|---------------------------------------------------------------
|
| By default, language is english. Can be changed later when
| there is more language files.
|
*/

session_start();
if(!isset($_GET['lang'])){
    $_SESSION['lang'] = 'en';
}else{
    $_SESSION['lang'] = $_GET['lang'];
}
include('system/lang/'.$_SESSION['lang'].'.php'); 

/*
|---------------------------------------------------------------
| TEMPLATE
|---------------------------------------------------------------
|
| This line includes the index template from templates folder.
|
*/	

include('templates/index.tpl');

?>
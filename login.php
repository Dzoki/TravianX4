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

if(!isset($_GET['lang'])){
	$language = 'en';
}else{
	$language = $_GET['lang'];
}
include('system/lang/'.$language.'.php');

/*
|---------------------------------------------------------------
| TEMPLATE
|---------------------------------------------------------------
|
| This line includes the login template from templates folder.
|
*/	

include('templates/login.tpl');

?>
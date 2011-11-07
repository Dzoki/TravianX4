<?php
/*
|---------------------------------------------------------------
| DO NOT REMOVE OR EDIT COPYRIGHT NOTICE
|---------------------------------------------------------------
|
| Developers:   Dzoki & Advocaite
| Project:      TravianX4
| Copyright:    TravianX Project
|
*/

/**
 * User Class
 */
 
class user {
    
    function user(){
        if(isset($_POST['type'])){
            switch($_POST['type']){
                case 'register':
                $this->register();
                break;
                case 'login':
                $this->login();
                break;
                case 'logout':
                $this->logout();
                break;
            }
        }
    }
    
    function register(){
        
    }

}
?>
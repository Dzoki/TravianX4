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

	class user extends database{

		function user() {
         parent::database();   
			if(isset($_POST['type'])) {
				switch($_POST['type']) {
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

		/**
		 * Function that registers player
		 */
		function register() {
			if(!isset($_POST['username']) || $_POST['username'] == '') {
				$error['register']['username'] = '(Username empty)';
			} else {
				if(strlen($_POST['username']) < MIN_USR_LENGHT) {
					$error['register']['username'] = '(Min. ' . MIN_USR_LENGHT . ' figures)';
				} else
					if(database::check_exists($_POST['username'], 0)) {
						$error['register']['username'] = '(Username taken)';
					}

			}
			if(!isset($_POST['password']) || $_POST['password'] == "") {
				$error['register']['password'] = '(Password empty)';
			} else {
				if(strlen($_POST['password']) < MIN_PW_LENGHT) {
					$error['register']['password'] = '(Min. ' . MIN_PW_LENGHT . ' figures)';
				} else
					if($_POST['password'] == $_POST['username']) {
						$error['register']['password'] = '(Password same as username)';
					}
			}
			if(!isset($_POST['email'])) {
				$error['register']['email'] = '(Email empty)';
			} else {
				if(!$this->check_email($_POST['email'])) {
					$error['register']['email'] = '(Email invalid)';
				} else
					if(database::check_exists($_POST['email'], 1)) {
						$error['register']['email'] = '(Email already taken)';
					}
			}
			if(!isset($_POST['vid'])) {
				$error['register']['tribe'] = 'Please choose a tribe.';
			}
			if(!isset($_POST['agb'])) {
				$error['register']['agree'] =
					'You have to agree to the game rules and the general terms & conditions in order to register.';
			}
            else{
                database::register($_POST['username'], $_POST['password'], $_POST['email'], $_POST['vid']);
            }
		}

		/**
		 * Check if email is right format
		 */
		private function check_email($email) {
			$regexp = '/^[a-z0-9]+([_\\.-][a-z0-9]+)*@([a-z0-9]+([\.-][a-z0-9]+)*)+\\.[a-z]{2,}$/i';
			if(!preg_match($regexp, $email)) {
				return false;
			}
			return true;
		}

	}

?>
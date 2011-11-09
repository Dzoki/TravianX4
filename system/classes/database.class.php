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
    
	include ('../configs/config.php');

/**
 * Database Class
 */
	class database {
		/**
		 * the mysql connection data
		 *
		 * @var array
		 */
		private $_data = array('server' => HOST, 'user' => USER, 'password' => PASSWORD, 'database' => DATABASE);


		/**
		 * the connection to the database
		 *
		 * @var mixed
		 */
		private $_connection = null;


		/**
		 * Constructor
		 *
		 * @param string  $server   - the server which the class should connect to
		 * @param string  $user     - the user which the class should use to connect
		 * @param string  $password - the password which the user has
		 * @param string  $database - the name of the database which the class should
		 *                            connect to
		 * @throws Exception
		 */
		public function __construct($server, $user, $password, $database) {
			$connect = @mysql_connect($server, $user, $password);

			if(!$connect) {
				throw new Exception('Could not connect to the database.');
			}

			$database = @mysql_select_db($database);

			if(!$database) {
				throw new Exception('Could not find database.');
			}
		}


		/**
		 * Executes a mysql query
		 *
		 * @param string  $sql     - the sql code
		 * @return mixed  $return  - if the query was successfull it returns the result. If not
		 *                           it returns nothing but throw an exception
		 * @throws Exception
		 */
		public function query($sql) {
			if(!is_string() or empty(trim($sql))) {
				throw new Exception('No sql statement was entered.');
			}

			$query = @mysql_query($sql);

			if(!$query) {
				throw new Exception('Query could not be executed because of an error: [#' . mysql_errno() . '] - ' . mysql_error());
			}

			return $query;
		}


		/**
		 * Fetch only one dataset
		 *
		 * @param mixed   $sql  - if the param is a string the query will be executed. if the
		 *                        param is resource, it just will be fetched
		 * @return array  $data
		 * @throws Exception
		 */
		public function fetch_one($sql) {
			$data = array();

			if(is_string(trim($sql))) {
				$query = $this->query($sql);
				$data = @mysql_fetch_assoc($query);
			} elseif(is_resource($sql)) {
				$data = @mysql_fetch_assoc($sql);
			} elseif(trim($sql) == '') {
				throw new Exception('No sql statement was entered.');
			}

			return $data;
		}


		/**
		 * Fetches  all/more then one dataset from the database
		 *
		 * @param mixed   $sql  - if the param is a string the query will be executed. if the
		 *                        param is resource, it just will be fetched
		 * @return array  $data
		 * @throws Exception
		 */
		public function fetch($sql) {
			$data = array();

			if(is_string(trim($sql))) {
				$query = $this->query($sql);

				while($row = $this->fetch_one($query)) {
					$data[] = $row;
				}
			} elseif(is_resource($sql)) {
				while($row = $this->fetch_one($sql)) {
					$data[] = $row;
				}
			} elseif(trim($sql) == '') {
				throw new Exception('No sql statement was entered.');
			}

			return $data;
		}


		/**
		 * Counts the datasets
		 *
		 * @param mixed  $sql  - if the param is a string the query will be executed. if the
		 *                       param is resource, it just will be counted
		 * @return int   $data
		 * @throws Exception
		 */
		public function num($sql) {
			if(is_string(trim($sql))) {
				$query = $this->query($sql);
				$data = @mysql_num_rows($query);
			} elseif(is_resource($sql)) {
				$data = @mysql_num_rows($sql);
			} elseif(trim($sql) == '') {
				throw new Exception('No sql statement was entered.');
			}

			return $data;
		}

		/**
		 * Cleans $string for a MySQL statement
		 *
		 * @param String $string
		 * @return String
		 */
		function clean_sql($string, $quotes = 1) {

			// Stripslashes
			if(get_magic_quotes_gpc()) {
				$string = stripslashes($string);
			}
			// Quote if not integer
			if(!is_numeric($string) && $quotes) {
				$string = "'" . mysql_real_escape_string($string) . "'";
			}
			return $string;
		}


		/**
		 * Destructor
		 */
		public function __destruct() {
			@mysql_close();
		}


		/**
		 * Check if user already exists in database
		 */
		public function check_exists($ref, $mode) {
			if(!$mode) {
				$sql = "SELECT username FROM `" . PREFIX . "users` WHERE username = '$ref' LIMIT 1";
			} else {
				$sql = "SELECT email FROM `" . PREFIX . "users` WHERE email = '$ref' LIMIT 1";
			}
			$result = $this->query($sql);
            if($this->num($result)) {
				return true;
			} else {
				return false;
			}
		}
        
        /**
        * Register new player
        */
        public function register($username, $password, $email, $tribe) {
            $sql = 'INSERT INTO `' . PREFIX . 'users` (`id`, `username`, `password`, `email`, `tribe`, `access`, `gold`) VALUES (NULL, \'$username\', \'' . md5($password) . '\', \'$email\', \'$tribe\', \'1\', \'0\')';
            $this->query($sql);
            $uid = mysql_insert_id();
            $sql2 = 'INSERT INTO `' . PREFIX . 'hero` (`heroid`, `uid`, `name`) VALUES (NULL, \'$uid\', \'$username\')';  
            $this->query($sql2);
        }
	}



?>
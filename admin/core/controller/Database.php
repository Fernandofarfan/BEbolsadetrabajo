<?php
class Database {
    private $user = "root";
    private $pass = "";
    private $host = "localhost";
    private $ddbb = "recrutador";
    private static $db;
    private static $con;

    public function __construct() {
        // Constructor
    }

    public function connect() {
        $con = new mysqli($this->host, $this->user, $this->pass, $this->ddbb);
        return $con;
    }

    public static function getCon() {
        if (self::$con == null && self::$db == null) {
            self::$db = new Database();
            self::$con = self::$db->connect();
        }
        return self::$con;
    }
}

?>

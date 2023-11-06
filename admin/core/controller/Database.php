<?php
class Database {
    private $user = "nysql";
    private $pass = "1234";
    private $host = "localhost";
    private $ddbb = "be-bolsadetrabajo-db";

    private $port = "3306";
    private static $db;
    private static $con;

    public function __construct() {
        // Constructor
    }

    public function connect() {
        return new mysqli($this->host, $this->user, $this->pass, $this->ddbb, $this->port);
    }

    public static function getCon() {
        if (self::$con == null && self::$db == null) {
            self::$db = new Database();
            self::$con = self::$db->connect();
        }
        return self::$con;
    }
}

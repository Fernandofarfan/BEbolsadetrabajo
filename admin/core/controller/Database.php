<?php
class Database {
    private static $db;
    private static $con;

    public function __construct() {
    }

    public function connect() {
        $db_host = getenv('DB_HOST');
        $db_user = getenv('DB_USER');
        $db_password = getenv('DB_PASSWORD');
        $db_name = getenv('DB_NAME');
        $db_port = getenv('DB_PORT');

        return new mysqli($db_host, $db_user, $db_password, $db_name, $db_port);
    }

    public static function getCon() {
        if (self::$con == null && self::$db == null) {
            self::$db = new Database();
            self::$con = self::$db->connect();
        }
        return self::$con;
    }
}

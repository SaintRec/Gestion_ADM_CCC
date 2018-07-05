<?php
class Users
{
    private static $instancia;
    private $dbh;

    private function __construct() /**constructor  de funcion */
    {
        try {
            $this->dbh = new PDO('mysql:host=localhost:3308;dbname=crud', 'root', '123456');/**conecion pdo */
            $this->dbh->exec("SET CHARACTER SET utf8");
        } catch (PDOException $e) {
            print "Error!: " . $e->getMessage();
            die();
        }
    }

    public static function singleton()
    {
        if (!isset(self::$instancia)) {
            $miclase = __class__;
            self::$instancia = new $miclase;
        }
        return self::$instancia;
    }

    public function get_usuarios()
    {
        try {
            $query = $this->dbh->prepare('select * from producto'); /**funcion query me devuelve los datos de la tabla producto dentro de la base crud  */
            $query->execute();
            return $query->fetchAll();
            $this->dbh = null;
        } catch (PDOException $e) {
            $e->getMessage();
        }
    }

    public function delete_usuario($id)
    {
        try {
            $query = $this->dbh->prepare('delete from producto where id = ?');/**funcion query me elimina los datos de la tabla producto dentro de la base crud  */
            $query->bindParam(1, $id);
            $query->execute();
            $this->dbh = null;
        } catch (PDOException $e) {
            $e->getMessage();
        }
    }

    public function insert_usuario($marca, $volumen, $precio, $empaque, $registro)
    {
        try {
            $query = $this->dbh->prepare('insert into producto values(null,?,?,?,?,?)');/**funcion query me inserta los datos de la tabla producto dentro de la base crud  */
            $query->bindParam(1, $marca);
            $query->bindParam(2, $volumen);
            $query->bindParam(3, $precio);
            $query->bindParam(4, $empaque);
            $query->bindParam(5, $registro);
            $query->execute();
            $this->dbh = null;
        } catch (PDOException $e) {
            $e->getMessage();
        }
    }

    public function update_usuario($id, $marca, $volumen, $precio, $empaque, $fecha) /**funcion query me actualiza los datos de la tabla producto dentro de la base crud  */
    {
        try {
            $query = $this->dbh->prepare('update producto SET marca = ?, volumen = ?, precio = ?, empaque = ?, registro = ? WHERE id = ?');
            $query->bindParam(1, $marca);
            $query->bindParam(2, $volumen);
            $query->bindParam(3, $precio);
            $query->bindParam(4, $empaque);
            $query->bindParam(5, $fecha);
            $query->bindParam(6, $id);
            $query->execute();
            $this->dbh = null;
        } catch (PDOException $e) {
            $e->getMessage();
        }
    }

    public function __clone()
    {
        trigger_error('La clonación no es permitida!.', E_USER_ERROR);
    }
}
?>
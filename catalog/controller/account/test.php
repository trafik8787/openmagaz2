<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 19.11.2016
 * Time: 19:52
 */
class ControllerAccountTest extends Controller {

    public function index () {
        $query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product");

        foreach ($query->rows as $row) {
            $this->db->query("INSERT INTO ". DB_PREFIX ."review (product_id, customer_id, author, text, rating, status, date_added) 
            VALUES (".$row['product_id'].", 0, '', '', ".random_int(4, 5).", 1, NOW())");
        }
    }
}

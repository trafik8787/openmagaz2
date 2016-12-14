<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 19.11.2016
 * Time: 19:52
 */
class ControllerAccountTest extends Controller {

    public function rating () {
        $query = $this->db->query("SELECT product_id FROM " . DB_PREFIX . "product");

        foreach ($query->rows as $row) {
            $this->db->query("INSERT INTO ". DB_PREFIX ."review (product_id, customer_id, author, text, rating, status, date_added) 
            VALUES (".$row['product_id'].", 0, '', '', ".random_int(4, 5).", 1, NOW())");
        }
    }

    public function akciya () {
        //dd($this->request->get['cat'], true);
        if (!empty($this->request->get['cat']) and !empty($this->request->get['procent'])) {

            $cat = $this->request->get['cat'];
            $query = $this->db->query("SELECT pr.product_id, pr.price FROM " . DB_PREFIX . "product pr INNER JOIN " . DB_PREFIX . "product_to_category ptc ON (pr.product_id = ptc.product_id) WHERE ptc.category_id = ".$cat);

            foreach ($query->rows as $row) {

                $tmp = $row['price'] * $this->request->get['procent'];
                $special = $row['price'] - $tmp;

                $qwe = $this->db->query("INSERT INTO ". DB_PREFIX ."product_special (product_id, customer_group_id, priority, price) VALUES (".$row['product_id'].", 1, 0, ".$special.")");
                dd($qwe);
            }
        }

    }

    public function test() {
        //$this->load->controller('email/email/email_tehnic', array('beliar87@mail.ru', 'sdfsdfsfsdfsfws', 'qweqweqweqw qweqweqweqwe qweqwe qw'));
    }

    public function test2() {
        dd(date('F d'));
    }

}

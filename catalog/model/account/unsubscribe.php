<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 19.11.2016
 * Time: 17:39
 */

class ModelAccountUnsubscribe extends Model {

    public function delEmail($data) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "newslleter WHERE email = '" . $data['email'] . "'");
        $this->db->query("UPDATE " . DB_PREFIX . "customer SET newsletter = 0 WHERE email = '" . $data['email'] . "'");
    }

}
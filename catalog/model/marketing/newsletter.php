<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 29.08.2016
 * Time: 15:27
 */

class ModelMarketingNewsletter extends Model {

    public function addEmail($data){

        $result = $this->db->query("SELECT * FROM " .DB_PREFIX. "newslleter WHERE email = '".$this->db->escape($data['email'])."'");

        if (empty($result->row)) {
            $this->db->query("INSERT INTO " . DB_PREFIX . "newslleter SET sex = '" . $this->db->escape($data['sex']) . "', email = '" . $this->db->escape($data['email']) . "', status = 1, create_date = NOW()");
        } else {
            return false;
        }



    }

}
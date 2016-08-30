<?php
/**
 * Created by PhpStorm.
 * User: Vitalik
 * Date: 28.08.2016
 * Time: 23:50
 */

class ModelMarketingNewsletter extends Model {

    public function getTotalNewsletter($data = array()) {

        $sql = "SELECT COUNT(*) as total FROM " . DB_PREFIX . "newslleter ";

        $implode = array();


        if (!empty($data['filter_email'])) {
            $implode[] = "LCASE(email) = '" . $this->db->escape(utf8_strtolower($data['filter_email'])) . "'";
        }

        if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
            $implode[] = "status = '" . (int)$data['filter_status'] . "'";
        }

        if (!empty($data['filter_create_date'])) {
            $implode[] = "DATE(create_date) = DATE('" . $this->db->escape($data['filter_create_date']) . "')";
        }

        if ($implode) {
            $sql .= " WHERE " . implode(" AND ", $implode);
        }

        $query = $this->db->query($sql);

        return $query->row['total'];
    }


    public function getNewsletter($data = array()) {

        $sql = "SELECT * FROM " . DB_PREFIX . "newslleter ";

        $implode = array();

        if (!empty($data['filter_email'])) {
            $implode[] = "email LIKE '" . $this->db->escape($data['filter_email']) . "%'";
        }


        if (isset($data['filter_status']) && !is_null($data['filter_status'])) {
            $implode[] = "status = '" . (int)$data['filter_status'] . "'";
        }


        if (!empty($data['filter_create_date'])) {
            $implode[] = "DATE(create_date) = DATE('" . $this->db->escape($data['filter_create_date']) . "')";
        }

        if ($implode) {
            $sql .= " AND " . implode(" AND ", $implode);
        }

        $sort_data = array(
            'email',
            'status',
            'create_date'
        );

        if (isset($data['sort']) && in_array($data['sort'], $sort_data)) {
            $sql .= " ORDER BY " . $data['sort'];
        } else {
            $sql .= " ORDER BY email";
        }

        if (isset($data['order']) && ($data['order'] == 'DESC')) {
            $sql .= " DESC";
        } else {
            $sql .= " ASC";
        }

        if (isset($data['start']) || isset($data['limit'])) {
            if ($data['start'] < 0) {
                $data['start'] = 0;
            }

            if ($data['limit'] < 1) {
                $data['limit'] = 20;
            }

            $sql .= " LIMIT " . (int)$data['start'] . "," . (int)$data['limit'];
        }

        $query = $this->db->query($sql);

        return $query->rows;

    }


    public function deleteNewsletter($order_id) {

        $this->db->query("DELETE FROM " . DB_PREFIX . "newslleter WHERE id = '" . (int)$order_id . "'");
    }

}
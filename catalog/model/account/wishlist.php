<?php
class ModelAccountWishlist extends Model {
	public function addWishlist($product_id) {
		$this->event->trigger('pre.wishlist.add');

		$this->db->query("DELETE FROM " . DB_PREFIX . "customer_wishlist WHERE customer_id = '" . (int)$this->customer->getId() . "' AND product_id = '" . (int)$product_id . "'");

		$this->db->query("INSERT INTO " . DB_PREFIX . "customer_wishlist SET customer_id = '" . (int)$this->customer->getId() . "', product_id = '" . (int)$product_id . "', date_added = NOW()");

		$this->event->trigger('post.wishlist.add');
	}

    public function addDiamond ($diamond_id, $diamond_data) {
        $this->db->query("DELETE FROM " . DB_PREFIX . "customer_wishlist WHERE diamond = 1 AND customer_id = '" . (int)$this->customer->getId() . "' AND product_id = '" . (int)$diamond_id . "'");
        $this->db->query("INSERT INTO " . DB_PREFIX . "customer_wishlist SET diamond = 1, diamond_data = '".$diamond_data."', customer_id = '" . (int)$this->customer->getId() . "', product_id = '" . (int)$diamond_id . "', date_added = NOW()");
	}

	public function deleteWishlist($product_id) {
		$this->event->trigger('pre.wishlist.delete');
		$this->db->query("DELETE FROM " . DB_PREFIX . "customer_wishlist WHERE customer_id = '" . (int)$this->customer->getId() . "' AND product_id = '" . (int)$product_id . "'");

        if ((!empty($this->session->data['wishlist']) OR !empty($this->session->data['wishlist_diamond']))  AND $this->customer->getId() == 0) {
            unset($this->session->data['wishlist'][$product_id]);
        }

		$this->event->trigger('post.wishlist.delete');
	}

    public function deleteWishlistDiamond($diamond_id) {

        $this->db->query("DELETE FROM " . DB_PREFIX . "customer_wishlist WHERE diamond = 1 AND customer_id = '" . (int)$this->customer->getId() . "' AND product_id = '" . (int)$diamond_id . "'");

    }

	public function getWishlist() {

        if ((!empty($this->session->data['wishlist']) OR !empty($this->session->data['wishlist_diamond']))  AND $this->customer->getId() == 0) {
            $result = array();
            if (!empty($this->session->data['wishlist'])) {
                foreach ($this->session->data['wishlist'] as $item) {
                    $result[] = array('product_id' => $item, 'diamond' => 0);
                }
            }

            if (!empty($this->session->data['wishlist_diamond'])) {
                foreach ($this->session->data['wishlist_diamond'] as $item) {
                    $result[] = array('product_id' => $item['diamond_id'], 'diamond' => 1, 'diamond_data' => $item['diamond_data']);
                }
            }

            return $result;

        } else {
            $query = $this->db->query("SELECT * FROM " . DB_PREFIX . "customer_wishlist WHERE customer_id = '" . (int)$this->customer->getId() . "'");
            return $query->rows;
        }

	}

	public function getTotalWishlist() {
		$query = $this->db->query("SELECT COUNT(*) AS total FROM " . DB_PREFIX . "customer_wishlist WHERE customer_id = '" . (int)$this->customer->getId() . "'");
		return $query->row['total'];
	}
}

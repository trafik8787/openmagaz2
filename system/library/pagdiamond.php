<?php
class Pagdiamond {
    public $total = 0;
    public $page = 1;
    public $limit = 20;
    public $num_links = 8;
    public $url = '';
    public $text_first = 'Prev';
    public $text_last = 'Next';
    public $text_next = '&gt;';
    public $text_prev = '&lt;';

    public function render() {
        $total = $this->total;

        if ($this->page < 1) {
            $page = 1;
        } else {
            $page = $this->page;
        }

        if (!(int)$this->limit) {
            $limit = 10;
        } else {
            $limit = $this->limit;
        }

        $num_links = $this->num_links;
        $num_pages = ceil($total / $limit);

        $this->url = str_replace('%7Bpage%7D', '{page}', $this->url);

        $output = ' <div class="diamond-catalog-top-pages">';

        if ($page > 1) {
//            $output .= '<li><a href="' . str_replace('{page}', 1, $this->url) . '">' . $this->text_first . '</a></li>';
            $output .= '<a href="#" class="diamond-catalog-top-pages-link arrow-btn-number prev" data-href="' . str_replace('{page}', 1, $this->url) . '" data-action="minus"> </a>';
        }

        if ($num_pages > 1) {
            if ($num_pages <= $num_links) {
                $start = 1;
                $end = $num_pages;
            } else {
                $start = $page - floor($num_links / 2);
                $end = $page + floor($num_links / 2);

                if ($start < 1) {
                    $end += abs($start) + 1;
                    $start = 1;
                }

                if ($end > $num_pages) {
                    $start -= ($end - $num_pages);
                    $end = $num_pages;
                }
            }
            $output .= '<span>Page</span><input type="text" class="form-control diamond-page-number-input" data-href="' . str_replace('{page}', $page, $this->url) . '" value="'.$page.'"><span>of '.$num_pages.'</span>';
//            for ($i = $start; $i <= $end; $i++) {
//                if ($page == $i) {
//                    $output .= '<li class="active"><span>' . $i . '</span></li>';
//                } else {
//                    $output .= '<li><a href="' . str_replace('{page}', $i, $this->url) . '">' . $i . '</a></li>';
//                }
//            }
        }

        if ($page < $num_pages) {
            $output .= '<a href="#" class="diamond-catalog-top-pages-link arrow-btn-number next" data-href="' . str_replace('{page}', $page + 1, $this->url) . '" data-action="plus"> </a>';
           // $output .= '<li><a href="' . str_replace('{page}', $num_pages, $this->url) . '">' . $this->text_last . '</a></li>';
        }

        $output .= '</div>';

        if ($num_pages > 1) {
            return $output;
        } else {
            return '';
        }
    }
}
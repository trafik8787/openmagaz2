<?//dd($diamond_similar)?>

<div class="similar-section similar-stones">
    <div class="center-bl clearfix">
        <div class="product-section-header">
            <div class="product-section-title">SIMILAR STONES</div>
            <div class="icons-quality_service_icon"></div>
        </div>
        <div class="similar-list similar-list-4">
            <div class="wrapper-product-table th-view">
                <table class="table">
                    <tbody>
                    <?foreach ($diamond_similar as $row):?>

                        <tr>
                            <td>
                                <div class="product-item">
                                    <div class="box-img">
                                        <a href="/diamond_page?diamond_id=<?=$row->diamond_id?>" >
                                            <img src="<?=imageDiamont($row->shape)?>" alt="" title="">
                                        </a>
                                    </div>
                                    <!--**-->
                                    <div class="btn-box">

                                    </div>
                                    <div class="box-tovar-th">
                                        <div class="name"><?=$row->shape.' '.$row->size .' CARAT '.$row->color .' '. $row->clarity;?></div>

                                        <span class="price"><?=Currency::formatStat($row->total_sales_price)?></span>


                                    </div>
                                </div>
                            </td>

                        </tr>
                    <?endforeach?>

                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
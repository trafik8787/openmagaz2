<?if (!empty($data_error)):?>
    <?=$data_error?>
<?else:?>

<div class="row">

    <?foreach ($data as $row):?>

        <div class="product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12">
            <div class="thumbnail">
                <a class="w-product-diamonts" data-id="<?=$row->diamond_id?>" href="/diamond_page?diamond_id=<?=$row->diamond_id?>"><img src="<?=imageDiamont($row->shape)?>" alt="img"></a>
                <div class="caption">
                    <h3><?=$row->total_sales_price?>.00</h3>
                    <p><?=$row->shape?></p>
                    <p><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#" class="btn btn-default" role="button">Кнопка</a></p>
                </div>
            </div>
        </div>

    <?endforeach?>

    <div class="row">
        <div class="col-md-12">
            <div class="w-pagination-diamonts text-center"><?=isset($pagination)? $pagination : ''?></div>
        </div>
    </div>
</div>
<?endif?>


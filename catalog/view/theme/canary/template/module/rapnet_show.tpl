<?if (!empty($data_error)):?>
    <?=$data_error?>
<?else:?>

<div class="row">


    <?foreach ($data as $row):?>

        <div class="col-md-3">
            <div class="thumbnail">
                <a href=""><img src="/image/phab_dia_template_realview.jpg" alt="img"></a>
                <div class="caption">
                    <h3><?=$row[0]->total_sales_price?>.00</h3>
                    <p><?=$row[0]->shape?></p>
                    <p><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#" class="btn btn-default" role="button">Кнопка</a></p>
                </div>
            </div>
        </div>

        <?if (!empty($row[1])):?>
            <div class="col-md-3">
                <div class="thumbnail">
                    <img src="/image/phab_dia_template_realview.jpg" alt="img">
                    <div class="caption">
                        <h3><?=$row[1]->total_sales_price?>.00</h3>
                        <p><?=$row[0]->shape?></p>
                        <p><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#" class="btn btn-default" role="button">Кнопка</a></p>
                    </div>
                </div>
            </div>
        <?endif?>

        <?if (!empty($row[2])):?>
            <div class="col-md-3">
                <div class="thumbnail">
                    <img src="/image/phab_dia_template_realview.jpg" alt="img">
                    <div class="caption">
                        <h3><?=$row[2]->total_sales_price?>.00</h3>
                        <p><?=$row[0]->shape?></p>
                        <p><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#" class="btn btn-default" role="button">Кнопка</a></p>
                    </div>
                </div>
            </div>
        <?endif?>

        <?if (!empty($row[3])):?>
            <div class="col-md-3">
                <div class="thumbnail">
                    <img src="/image/phab_dia_template_realview.jpg" alt="img">
                    <div class="caption">
                        <h3><?=$row[3]->total_sales_price?>.00</h3>
                        <p><?=$row[0]->shape?></p>
                        <p><a href="#" class="btn btn-primary" role="button">Кнопка</a> <a href="#" class="btn btn-default" role="button">Кнопка</a></p>
                    </div>
                </div>
            </div>
        <?endif?>
        <div class="clearfix"></div>
    <?endforeach?>

    <div class="row">
        <div class="w-pagination-diamonts"><?=isset($pagination)? $pagination : ''?></div>
    </div>
</div>
<?endif?>


<?if (!empty($wsubcategory)):?>
    <div class="panel panel-default">
        <div class="panel-body w-group-wsubcat">
            <?php foreach ($wsubcategory as $row):?>
                <?if (!empty($row['image'])):?>
                    <img src="/image/<?php echo $row['image']?>" alt="">
                <?endif?>
                <a class="btn btn-default w-wsubcat <?php if ($child_id == $row['cat_id']) {?> active <?}?>" href="<?php echo $row['href']?>" role="button"><?php echo $row['name']?></a>
            <?endforeach?>
        </div>
    </div>
<?endif?>
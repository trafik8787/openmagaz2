<div class="list-product w-category-ajax">
    <div class="filter-product-line w-ajax-loader-page">
        <div class="center-bl clearfix" style="max-width: 1247px;">
            <div class="pull-left left-drop-f">
                <span>Sort By:</span>
                <div class="dropdown">
                    <select id="input-sort" class="form-control" onchange="input_sort(this.value);">
                        <?php foreach ($sorts as $sorts) { ?>
                        <?php if ($sorts['value'] == $sort . '-' . $order) { ?>
                        <option value="<?php echo $sorts['href']; ?>" selected="selected"><?php echo $sorts['text']; ?></option>
                        <?php } else { ?>
                        <option value="<?php echo $sorts['href']; ?>"><?php echo $sorts['text']; ?></option>
                        <?php } ?>
                        <?php } ?>
                    </select>
                </div>

                <span>Product compare (<?=!empty($count_compare) ? $count_compare : 0?>)</span>

            </div>
            <div class="view-product">
                <button class="list-btn btn-view" data-toggle="tooltip" data-placement="top" title="list"><i class="fa fa-list" aria-hidden="true"></i></button>
                <button class="th-btn btn-view active" data-toggle="tooltip" data-placement="top" title="block"><i class="fa fa-th-large" aria-hidden="true"></i></button>
            </div>
            <!--*<div class="show-b">*-->
                <!--*<span>Show:</span>*-->
                <!--*<div class="dropdown">*-->
                    <!--*<select id="input-limit" class="form-control" onchange="input_sort(this.value);">*-->
                        <!--*<?php foreach ($limits as $limits) { ?>*-->
                        <!--*<?php if ($limits['value'] == $limit) { ?>*-->
                        <!--*<option value="<?php echo $limits['href']; ?>" selected="selected"><?php echo $limits['text']; ?></option>*-->
                        <!--*<?php } else { ?>*-->
                        <!--*<option value="<?php echo $limits['href']; ?>"><?php echo $limits['text']; ?></option>*-->
                        <!--*<?php } ?>*-->
                        <!--*<?php } ?>*-->
                    <!--*</select>*-->
                <!--*</div>*-->
            <!--*</div>*-->
        </div>
    </div>
    <div class="wrapper-product-table main-catalog-container">
        <table class="table">
            <thead>
            <tr>
                <th>Actual photo</th>
                <th>Stock Number</th>
                <th>Price</th>
                <th>Compare</th>
                <th>Wishlist</th>
            </tr>
            </thead>
            <tbody>
                <?=$product_item?>
            </tbody>
        </table>
    </div>
    <!--*<div class="center-bl clearfix">*-->
        <!--*<div class="text-center w-pagination-product"><?=isset($pagination)? $pagination : ''?></div>*-->
    <!--*</div>*-->
    <?if (!empty(strip_tags($description))):?>
    <div class="box-stat-text center-bl">
        <div class="h2">
            TEXT ABOUT <?=$heading_title?>
        </div>
        <?php echo $description; ?>
    </div>
    <?endif?>
</div>
<script>
    $(function () {
        if ($.cookie('TableGrid')) {
            $('.list-product .wrapper-product-table').addClass($.cookie('TableGrid'));
        } else {
            $('.list-product .wrapper-product-table').addClass("th-view");
        }
    });
</script>
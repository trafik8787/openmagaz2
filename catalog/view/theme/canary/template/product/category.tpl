<?php echo isset($header) ? $header : ''; ?>
<?//dd(get_baners_top_random())?>
<main class="w-general-container">
    <!--*<hr class="fade-2">*-->
    <input type="hidden" class="w-action_page" value="<?php echo $action_page?>">
    <div class="margin-buttom-30 w-bredcrum-border">
       <div class="center-bl">
           <div class="row">
               <!--*<span href="#" class="w-acsia-shild" data-toggle="modal" data-target="#ModalAkcia"><img src="/catalog/view/theme/canary/img/demo_new_template/akcia3.png" alt="briliantcanary"></span>*-->
               <div class="col-md-5 col-sm-5 hidden-xs ">
                   <ul class="breadcrumbs">
                       <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                       <?if (!empty($breadcrumb['href'])):?>
                           <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                           <li>&nbsp;»&nbsp;</li>
                       <?else:?>
                           <li><span href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></span></li>
                           <li>&nbsp;»&nbsp;</li>
                       <?endif?>
                       <?php } ?>
                   </ul>
               </div>
               <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                   <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
               </div>
           </div>
       </div>
    </div>
    <section class="static-page">
        <div class="center-bl">

            <div class="row margin-buttom-20">
                <div class="col-md-12 col-sm-12 text-center">
                    <span class="h1"><?=$heading_title?></span>
                </div>
            </div>
            <?php echo $content_top; ?>
            <!--*<h2><?php echo $heading_title; ?></h2>*-->
        </div>
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

                            <!--*<span>Product compare (<?=!empty($count_compare) ? $count_compare : 0?>)</span>*-->

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
                <div class="wrapper-product-table <?=$table_bloc?> main-catalog-container">
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
    </section>
</main>

<script type="text/javascript">
    $(document).on('mouseenter', '.product-item', function () {
        $(this).find('.w-glyphicon-heart').not('.w-glyphicon-sort.active').show();
        $(this).find('.w-glyphicon-sort').not('.w-glyphicon-sort.active').show();
    });
    $(document).on('mouseleave', '.product-item', function () {
        $(this).find('.w-glyphicon-heart').not('.w-glyphicon-sort.active').hide();
        $(this).find('.w-glyphicon-sort').not('.w-glyphicon-sort.active').hide();
    });


</script>
<?php echo isset($footer) ? $footer : ''; ?>
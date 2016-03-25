<?php if (isset($header)):?>
    <?php echo $header?>
<div class="container w-diamonds-product w-general-container">

<?endif?>

    <input type="hidden" id="w-diamond_id" value="<?php echo $product->response->body->diamond->diamond_id?>">

    <ul class="breadcrumb">
        <li><a href="#">1</a></li>
        <li><a href="#">2</a></li>
        <li><a href="#">3</a></li>
    </ul>
    <div class="row">
        <?php echo isset($column_left) ? $column_left: ''; ?>
        <?php if ($column_left && $column_right) { ?>
        <?php $class = 'col-sm-6'; ?>
        <?php } elseif ($column_left || $column_right) { ?>
        <?php $class = 'col-sm-9'; ?>
        <?php } else { ?>
        <?php $class = 'col-sm-12'; ?>
        <?php } ?>
        <div id="content" class="<?php echo $class; ?>">
            <?php echo $content_top; ?>
            <div class="row">
                <?php if ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-8'; ?>
                <?php } ?>
                <div class="<?php echo $class; ?>">

                    <div class="tab-content">
                        <?dd($product)?>
                    </div>
                </div>
                <?php if ($column_left || $column_right) { ?>
                <?php $class = 'col-sm-6'; ?>
                <?php } else { ?>
                <?php $class = 'col-sm-4'; ?>
                <?php } ?>
                <div class="<?php echo $class; ?>">

                    <div id="product">
                        <button type="button" id="w-diamont-button-cart" data-loading-text="Loading..." class="btn btn-primary btn-lg btn-block">Add to Cart</button>


                    </div>
                </div>
            </div>
            <h3>Related Products</h3>
            <div class="row">
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    1
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    2
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    3
                </div>
                <div class="col-lg-3 col-md-3 col-sm-6 col-xs-12">
                    4
                </div>
            </div>

            <?php echo $content_bottom; ?>
        </div>
        <?php echo $column_right; ?>
    </div>
<?php if(isset($footer)):?>
</div>
<?php echo $footer?>
<?endif?>

<script>


    $(document).on('click', '#w-diamont-button-cart', function(){


        $.ajax({
            url: 'index.php?route=checkout/cart/add_diamond',
            type: 'GET',
            data: 'diamond_id='+$('#w-diamond_id').val(),
            dataType: 'json',
            beforeSend: function() {
                $('#w-diamont-button-cart').button('loading');
            },
            complete: function() {
                $('#w-diamont-button-cart').button('reset');
            },
            success: function(json) {
                console.log(json);
                $('#cart > button').html('<i class="fa fa-shopping-cart"></i> ' + json.total);
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('ошибочка вышла');
            }
        });

        return false;
    });

</script>
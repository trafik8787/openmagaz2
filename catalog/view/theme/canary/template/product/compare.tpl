<?php echo isset($header) ? $header : ''; ?>








<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <li> » </li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href=""><img src="<?=get_baners_top_random()?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" class="w-action_page" value="<?php echo $action_page?>">
    <section class="static-page">

        <div class="center-bl">

            <?php if ($success) { ?>
                <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
                    <button type="button" class="close" data-dismiss="alert">&times;</button>
                </div>
            <?php } ?>
            <h3><?php echo $heading_title; ?></h3>

        </div>
        <div class="contacts-page">
            <div class="center-bl">
                <?php if ($products) { ?>
                <table class="table table-bordered">
                    <thead>
                    <tr>
                        <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $text_product; ?></strong></td>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td><?php echo $text_name; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><a href="<?php echo $product['href']; ?>"><strong><?php echo $product['name']; ?></strong></a></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_image; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td class="text-center"><?php if ($product['thumb']) { ?>
                            <img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" class="img-thumbnail" />
                            <?php } ?></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_price; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><?php if ($product['price']) { ?>
                            <?php if (!$product['special']) { ?>
                            <?php echo $product['price']; ?>
                            <?php } else { ?>
                            <strike><?php echo $product['price']; ?></strike> <?php echo $product['special']; ?>
                            <?php } ?>
                            <?php } ?></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_model; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><?php echo $product['model']; ?></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_manufacturer; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><?php echo $product['manufacturer']; ?></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_availability; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><?php echo $product['availability']; ?></td>
                        <?php } ?>
                    </tr>
                    <?php if ($review_status) { ?>
                    <tr>
                        <td><?php echo $text_rating; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td class="rating"><?php for ($i = 1; $i <= 5; $i++) { ?>
                            <?php if ($product['rating'] < $i) { ?>
                            <span class="fa fa-stack"><i class="fa fa-star-o fa-stack-2x"></i></span>
                            <?php } else { ?>
                            <span class="fa fa-stack"><i class="fa fa-star fa-stack-2x"></i><i class="fa fa-star-o fa-stack-2x"></i></span>
                            <?php } ?>
                            <?php } ?>
                            <br />
                            <?php echo $product['reviews']; ?></td>
                        <?php } ?>
                    </tr>
                    <?php } ?>
                    <tr>
                        <td><?php echo $text_summary; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td class="description"><?php echo $product['description']; ?></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_weight; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><?php echo $product['weight']; ?></td>
                        <?php } ?>
                    </tr>
                    <tr>
                        <td><?php echo $text_dimension; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <td><?php echo $product['length']; ?> x <?php echo $product['width']; ?> x <?php echo $product['height']; ?></td>
                        <?php } ?>
                    </tr>
                    </tbody>
                    <?php foreach ($attribute_groups as $attribute_group) { ?>
                    <thead>
                    <tr>
                        <td colspan="<?php echo count($products) + 1; ?>"><strong><?php echo $attribute_group['name']; ?></strong></td>
                    </tr>
                    </thead>
                    <?php foreach ($attribute_group['attribute'] as $key => $attribute) { ?>
                    <tbody>
                    <tr>
                        <td><?php echo $attribute['name']; ?></td>
                        <?php foreach ($products as $product) { ?>
                        <?php if (isset($product['attribute'][$key])) { ?>
                        <td><?php echo $product['attribute'][$key]; ?></td>
                        <?php } else { ?>
                        <td></td>
                        <?php } ?>
                        <?php } ?>
                    </tr>
                    </tbody>
                    <?php } ?>
                    <?php } ?>
                    <tr>
                        <td></td>
                        <?php foreach ($products as $product) { ?>
                        <td><input type="button" value="<?php echo $button_cart; ?>" class="btn btn-primary btn-block" onclick="cart.add('<?php echo $product['product_id']; ?>', '<?php echo $product['minimum']; ?>');" />
                            <a href="<?php echo $product['remove']; ?>" class="btn btn-danger btn-block"><?php echo $button_remove; ?></a></td>
                        <?php } ?>
                    </tr>
                </table>
                <?php } else { ?>
                <p><?php echo $text_empty; ?></p>
                <?php } ?>
            </div>
        </div>



    </section>


</main>
<?php echo isset($footer) ? $footer : ''; ?>

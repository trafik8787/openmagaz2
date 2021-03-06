<div class="filter-box clearfix">
    <div class="filter-wrapper paging-20 clearfix thumbnail">
        <div class="one-line brilliant-style height-inherit w-group-wsubcat">

            <div class="row">
                <div class="col-md-8 col-sm-8 w-gems-filtr-cecbox">
                    <div class="title">STONE TYPE</div>
                    <ul class="w-checed-list" id="id-filtr-stone-type">
                        <li class="list__item btn">
                            <label class="label--checkbox">
                                <input type="checkbox" name="stone_type_gem" value="0" class="checkbox" <? if (in_array(0, $stone_type_gem)) :?> checked="checked" <?endif?>>
                                <span>Show All</span>
                            </label>
                        </li>
                        <?php foreach (arr_filtr_stone_type() as $val => $rows) :?>
                        <li class="list__item btn">
                            <label class="label--checkbox">
                                <input type="checkbox" name="stone_type_gem[]" value="<?php echo $val; ?>" class="checkbox" <? if (is_array($stone_type_gem) and in_array($val, $stone_type_gem)) :?> checked="checked" <?endif?>>
                                <span><?php echo $rows; ?></span>
                            </label>
                        </li>
                        <?endforeach?>

                    </ul>

                    <div class="title">SHAPE</div>
                    <ul class="w-checed-list" id="id-filtr-shape">
                        <li class="list__item btn">
                            <label class="label--checkbox">
                                <input type="checkbox" name="shape_gem" value="0" class="checkbox" <? if (in_array(0, $shape_gem)) :?> checked="checked" <?endif?>>
                                <span>Show All</span>
                            </label>
                        </li>
                        <?php foreach (arr_filtr_shape() as $val => $rows) :?>
                        <li class="list__item btn">
                            <label class="label--checkbox">
                                <input type="checkbox" name="shape_gem[]" value="<?php echo $val; ?>" class="checkbox" <? if (is_array($shape_gem) and in_array($val, $shape_gem)) :?> checked="checked" <?endif?>>
                                <span><?php echo $rows; ?></span>
                            </label>
                        </li>
                        <?endforeach?>

                    </ul>

                    <div class="title">PRIMARY COLOR</div>
                    <ul class="w-checed-list" id="id-filtr-primary_color">
                        <li class="list__item btn">
                            <label class="label--checkbox">
                                <input type="checkbox" name="primary_color_gem" value="0" class="checkbox" <? if (in_array(0, $primary_color_gem)) :?> checked="checked" <?endif?>>
                                <span>Show All</span>
                            </label>
                        </li>
                        <?php foreach (arr_primary_color() as $val => $rows) :?>
                        <li class="list__item btn">
                            <label class="label--checkbox">
                                <input type="checkbox" name="primary_color_gem[]" value="<?php echo $val; ?>" class="checkbox" <? if (is_array($primary_color_gem) and in_array($val, $primary_color_gem)) :?> checked="checked" <?endif?>>
                                <span><?php echo $rows; ?></span>
                            </label>
                        </li>
                        <?endforeach?>

                    </ul>

                </div>
                <div class="col-md-4 col-sm-4">
                    <div class="one-line">
                        <div class="title">Price

                        </div>
                        <div class="filter-block filter1">
                            <div id="slider"></div>
                            <div class="clearfix">
                                <input type="text" value="$<?=number_format($PriceFrom)?>" id="amountPrice1" class="dop-filtr-price-min input-slider-p pull-left" name="min_price">
                                <input type="text" value="$<?=number_format($PriceTo)?>" id="amountPrice2" class="dop-filtr-price-max input-slider-p pull-right" name="max_price">
                            </div>
                        </div>
                    </div>

                    <div class="one-line">
                        <div class="title">Carat

                        </div>
                        <div class="filter-block filter1">
                            <div id="slider-weight"></div>
                            <div class="clearfix">
                                <input type="text" value="<?=round($WeightFrom, 2)?>" id="amountWeight1" class="dop-filtr-weight-min input-slider-p pull-left" name="min_weight">
                                <input type="text" value="<?=round($WeightTo, 2)?>" id="amountWeight2" class="dop-filtr-weight-max input-slider-p pull-right" name="max_weight">
                            </div>
                        </div>
                    </div>
                </div>



            </div>


        </div>

<script type="text/javascript">

    $(document).ready(function () {
        var stone_type_gem = '';
        var shape_gem = '';
        var primary_color_gem = '';

        var min_price = '';
        var max_price = '';

        var min_weight = '';
        var max_weight = '';


        $(document).on('change', "#id-filtr-stone-type input[value='0'], #id-filtr-shape input[value='0'], #id-filtr-primary_color input[value='0']", function () {
            $(this).parents('.w-checed-list').find('input:checkbox:checked').prop("checked", false);
            $(this).prop("checked", true);
        });
        $(document).on('change', "#id-filtr-stone-type input[value!='0']", function () {
            $("#id-filtr-stone-type input[value='0']").prop("checked", false);
            //$(this).prop("checked", true);

        });

        $(document).on('change', "#id-filtr-shape input[value!='0']", function () {
            $("#id-filtr-shape input[value='0']").prop("checked", false);

        });

        $(document).on('change', "#id-filtr-primary_color input[value!='0']", function () {
            $("#id-filtr-primary_color input[value='0']").prop("checked", false);

        });

        $('input.checkbox').on('change', function () {

            var action = $('.w-action_page').val();

            history.pushState('', '', '');
            filter_stone_type = [];
            filter_shape = [];
            filter_primary_color = [];

            $('input[name^=\'stone_type_gem\']:checked').each(function (element) {
                filter_stone_type.push(this.value);
            });



            $('input[name^=\'shape_gem\']:checked').each(function (element) {

                filter_shape.push(this.value);
            });

            $('input[name^=\'primary_color_gem\']:checked').each(function (element) {

                filter_primary_color.push(this.value);
            });






            stone_type_gem = '';
            if (filter_stone_type.length != 0) {
                stone_type_gem = '&stone_type_gem=' + filter_stone_type.join(',');
            }

            shape_gem = '';
            if (filter_shape.length != 0) {
                shape_gem = '&shape_gem=' + filter_shape.join(',');
            }

            primary_color_gem = '';
            if (filter_primary_color.length != 0) {
                primary_color_gem = '&primary_color_gem=' + filter_primary_color.join(',');
            }


            var min_price_val = numeral().unformat($('input[name=\'min_price\']').val());
            var max_price_val = numeral().unformat($('input[name=\'max_price\']').val());

            min_price = '';
            if (min_price_val != '' && min_price_val != undefined) {
                min_price = '&PriceFrom=' + min_price_val;
            }

            max_price = '';
            if (max_price_val != '' && max_price_val != undefined) {
                max_price = '&PriceTo=' + max_price_val;
            }


            redirect = action + stone_type_gem + shape_gem + primary_color_gem + min_price + max_price;
            history.pushState('', '', redirect);

             //console.log(filter_stone_type);

            $('.container-loader').show();

            $.ajax({ // описываем наш запрос
                type: "GET", // будем передавать данные через POST
                dataType: "HTML", // указываем, что нам вернется JSON
                url: redirect,
                data: stone_type_gem + shape_gem + primary_color_gem + min_price + max_price + min_weight + max_weight, // передаем данные из формы
                success: function (response) { // когда получаем ответ
                    // console.log(response);

                    $('.w-category-ajax').empty();
                    $('.w-category-ajax').html(response);
                    $('.container-loader').hide();
                    if ($(document).scrollTop() < 500) {
                        $('html, body').animate({scrollTop: 500}, 'slow');
                    }
                    //initialize_grid();

                }
            });

        });










        var min = parseInt("<?= !empty($PriceFromStable) ? $PriceFromStable : 0?>");
        var max = parseInt("<?= !empty($PriceToStable) ? $PriceToStable : 0?>");


        var ValMin = Math.round(Math.easeOut(numeral().unformat($(".dop-filtr-price-min").val()),min,max,4.3));
        var ValMax = Math.round(Math.easeOut(numeral().unformat($(".dop-filtr-price-max").val()),min,max,4.3));

        var val_curent_max;
        var val_curent_min;

        var slider = $("#slider").slider({
            range: true,
            min: min,
            animate: 'slow',
            step: 1,
            max: max,
            values: [ValMin, ValMax],
            slide: function( event, ui ) {
                val_curent_max = Math.round(Math.easeIn(ui.values[1], min, max, 4.3));
                val_curent_min = Math.round(Math.easeIn(ui.values[0], min, max, 4.3));
                $('.dop-filtr-price-max').val(numeral(val_curent_max).format('$0,0'));
                $('.dop-filtr-price-min').val(numeral(val_curent_min).format('$0,0'));
            },
            change: function( event, ui ) {

                $('.container-loader').show();


                min_price = '&PriceFrom='+numeral().unformat($(".dop-filtr-price-min").val());
                max_price = '&PriceTo='+numeral().unformat($(".dop-filtr-price-max").val());

                var action = $('.w-action_page').val();
                redirect = action + stone_type_gem + shape_gem + primary_color_gem + min_price + max_price + min_weight + max_weight;
                history.pushState('', '', redirect);


                $.ajax({ // описываем наш запрос
                    type: "GET", // будем передавать данные через POST
                    dataType: "HTML", // указываем, что нам вернется JSON
                    url: redirect,
                    data: action + stone_type_gem + shape_gem + primary_color_gem + min_price + max_price + min_weight + max_weight, // передаем данные из формы
                    success: function (response) { // когда получаем ответ

                        $('.w-category-ajax').empty();
                        $('.w-category-ajax').html(response);
                        $('.container-loader').hide();
                        if ($(document).scrollTop() < 500) {
                            $('html, body').animate({scrollTop: 500}, 'slow');
                        }
                        //initialize_grid();

                    }

                });


            }
        });




        var min_weight_min = parseFloat("<?= !empty($WeightFromStable) ? $WeightFromStable : 0?>");
        var max_weight_max = parseFloat("<?= !empty($WeightToStable) ? $WeightToStable : 0?>");

        var ValMinWeight = Math.easeOut($(".dop-filtr-weight-min").val(), min_weight_min, max_weight_max, 1.6).toFixed(2);
        var ValMaxWeight = Math.easeOut($(".dop-filtr-weight-max").val(), min_weight_min,max_weight_max, 1.6).toFixed(2);
        console.log($(".dop-filtr-weight-min").val());
        console.log($(".dop-filtr-weight-max").val());

        var slider_weight = $('#slider-weight').slider({
            range: true,
            min: min_weight_min,
            animate: 'slow',
            step: 0.01,
            max: max_weight_max,
            values: [ValMinWeight, ValMaxWeight],
            slide: function (event, ui) {
                $('.dop-filtr-weight-max').val(Math.easeIn(ui.values[1], min_weight_min, max_weight_max, 1.6).toFixed(2));
                $('.dop-filtr-weight-min').val(Math.easeIn(ui.values[0], min_weight_min, max_weight_max, 1.6).toFixed(2));
            },
            change: function( event, ui ) {

                $('.container-loader').show();


                min_weight = '&WeightFrom='+$(".dop-filtr-weight-min").val();
                max_weight = '&WeightTo='+$(".dop-filtr-weight-max").val();

                var action = $('.w-action_page').val();
                redirect = action + stone_type_gem + shape_gem + primary_color_gem + min_price + max_price  + min_weight + max_weight;
                history.pushState('', '', redirect);


                $.ajax({ // описываем наш запрос
                    type: "GET", // будем передавать данные через POST
                    dataType: "HTML", // указываем, что нам вернется JSON
                    url: redirect,
                    data: stone_type_gem + shape_gem + primary_color_gem +  min_price + max_price + min_weight + max_weight, // передаем данные из формы
                    success: function (response) { // когда получаем ответ

                        $('.w-category-ajax').empty();
                        $('.w-category-ajax').html(response);
                        $('.container-loader').hide();
                        if ($(document).scrollTop() < 500) {
                            $('html, body').animate({scrollTop: 500}, 'slow');
                        }
                        //initialize_grid();

                    }

                });


            }
        });



        $('.dop-filtr-price-max').on('change', function(){
            slider.slider("values", 1, Math.round(Math.easeOut(numeral().unformat($(this).val()),min,max,4.3)));
        });

        $('.dop-filtr-price-min').on('change', function(){
            slider.slider("values", 0, Math.round(Math.easeOut(numeral().unformat($(this).val()),min,max,4.3)));
        });

        $('.dop-filtr-price-min, .dop-filtr-price-max').inputmask("numeric", {
            radixPoint: ".",
            groupSeparator: ",",
            digits: 2,
            autoGroup: true,
            prefix: '$', //No Space, this will truncate the first character
            rightAlign: false,
            oncleared: function () { self.Value(''); }
        });




        $('.dop-filtr-weight-max').on('change', function(){
            slider_weight.slider("values", 1, Math.easeOut($(this).val(),min_weight_min,max_weight_max,1.6).toFixed(2));
        });

        $('.dop-filtr-weight-min').on('change', function(){
            slider_weight.slider("values", 0, Math.easeOut($(this).val(),min_weight_min,max_weight_max,1.6).toFixed(2));
        });




    });

</script>
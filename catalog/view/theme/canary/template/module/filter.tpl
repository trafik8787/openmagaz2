    <?//dd($filter_groups)?>
        <?php foreach ($filter_groups as $filter_group):?>

            <?php if (!empty($filter_group['filter'])):?>
                <?php if ($filter_group['type_control'] == 'checkbox'):?>

                    <div class="left-f3">
                        <div class="title"><?php echo $filter_group['name']; ?></div>

                        <ul class="w-checed-list" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
                            <?php foreach ($filter_group['filter'] as $filter) :?>
                                <?php if (in_array($filter['filter_id'], $filter_category)): ?>
                                    <li class="list__item btn">
                                        <label class="label--checkbox">
                                            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" class="checkbox" checked="checked">
                                            <span data-text="<?php echo $filter['name']; ?>"><?php echo $filter['name']; ?></span>
                                        </label>
                                    </li>
                                <?else:?>
                                    <li class="list__item btn">
                                        <label class="label--checkbox">
                                            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" class="checkbox" >
                                            <span data-text="<?php echo $filter['name']; ?>"><?php echo $filter['name']; ?></span>
                                        </label>
                                    </li>
                                <?endif?>
                            <?endforeach?>
                        </ul>

                    </div>

                <?elseif($filter_group['type_control'] == 'radio'):?>


                    <div class="left-f3">
                        <div class="title"><?php echo $filter_group['name']; ?></div>

                        <ul class="w-checed-list" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
                            <?php foreach ($filter_group['filter'] as $filter) :?>
                                <?php if (in_array($filter['filter_id'], $filter_category)): ?>
                                    <li class="list__item btn">
                                        <label class="label--checkbox">
                                            <input type="checkbox" name="filter" value="<?php echo $filter['filter_id']; ?>" class="checkbox" checked="checked">
                                            <span data-text="<?php echo $filter['name']; ?>"><?php echo $filter['name']; ?></span>
                                        </label>
                                    </li>
                                <?else:?>
                                    <li class="list__item btn">
                                        <label class="label--checkbox">
                                            <input type="checkbox" name="filter" value="<?php echo $filter['filter_id']; ?>" class="checkbox" >
                                            <span data-text="<?php echo $filter['name']; ?>"><?php echo $filter['name']; ?></span>
                                        </label>
                                    </li>
                                <?endif?>
                            <?endforeach?>
                        </ul>

                    </div>

                <?endif?>

            <?endif?>

            <?php if (!empty($filter_group['dop_filter'])):?>
                <?if ($filter_group['name'] === 'Price'):?>
                    <?
                        $min_price = !empty($filter_group['dop_filter']['min']) ? $filter_group['dop_filter']['min'] : 0;
                        $max_price = !empty($filter_group['dop_filter']['max']) ? $filter_group['dop_filter']['max'] : 0;
                    ?>
                    <div class="right-f3">
                        <div class="one-line">
                            <div class="title">Price

                            </div>
                            <div class="filter-block filter1">
                                <div id="slider"></div>
                                <div class="clearfix">
                                    <input type="text" value="$<?php if (!empty($PriceFrom)) { echo $PriceFrom; } else { echo number_format($filter_group['dop_filter']['min']); }?>" id="amountPrice1" class="dop-filtr-price-min input-slider-p pull-left" name="min_price">
                                    <input type="text" value="$<?php if (!empty($PriceTo)) { echo  $PriceTo; } else { echo number_format($filter_group['dop_filter']['max']); }?>" id="amountPrice2" class="dop-filtr-price-max input-slider-p pull-right" name="max_price">
                                </div>
                            </div>
                        </div>
                    </div>

                <?elseif ($filter_group['name'] === 'Weight'):?>
                    <?//dd($filter_group)?>
                    <?
                        $min_weight = !empty($filter_group['dop_filter']['min']) ? round($filter_group['dop_filter']['min'], 2) : 0;
                        $max_weight = !empty($filter_group['dop_filter']['max']) ? round($filter_group['dop_filter']['max'], 2) : 0;
                    ?>
                    <div class="right-f3">
                        <div class="one-line">
                            <div class="title">Carat

                            </div>
                            <div class="filter-block filter1">
                                <div id="slider-weight"></div>
                                <div class="clearfix">
                                    <input type="text" value="<?php if (!empty($WeightFrom)) { echo $WeightFrom; } else { echo round($filter_group['dop_filter']['min'], 2); }?>" id="amountWeight1" class="dop-filtr-weight-min input-slider-p pull-left" name="min_weight">
                                    <input type="text" value="<?php if (!empty($WeighteTo)) { echo  $WeightTo; } else { echo round($filter_group['dop_filter']['max'], 2); }?>" id="amountWeight2" class="dop-filtr-weight-max input-slider-p pull-right" name="max_weight">
                                </div>
                            </div>
                        </div>
                    </div>

                <?endif?>
            <?endif?>

        <?endforeach?>

    </div>
    <div class="functional-filter clearfix">
        <button class="filter-default-result pull-right">clear filter</button>
        <button class="filter-change pull-right">close filter</button>
    </div>
</div>




<script type="text/javascript">
    //$('#button-filter').on('click', function () {
    //    filter = [];
    //
    //    $('input[name^=\'filter\']:checked').each(function (element) {
    //        filter.push(this.value);
    //    });
    //
    //    location = '<?php echo $action; ?>&filter=' + filter.join(',');
    //});

$(document).ready(function () {


    $('input[name^=\'filter\']').on('change', function () {
        history.pushState('', '', '');
        filter = [];
        $('input[name^=\'filter\']:checked').each(function (element) {
            filter.push(this.value);
        });
        var min_price_val = numeral().unformat($('input[name=\'min_price\']').val());
        var max_price_val = numeral().unformat($('input[name=\'max_price\']').val());

        if (min_price_val != '' && min_price_val != undefined) {
            min_price = '&PriceFrom=' + min_price_val;
        }

        if (max_price_val != '' && max_price_val != undefined) {
            max_price = '&PriceTo=' + max_price_val;
        }


        var min_weight_val = $('input[name=\'min_weight\']').val();
        var max_weight_val = $('input[name=\'max_weight\']').val();

        if (min_weight_val != '' && min_weight_val != undefined) {
            min_weight = '&WeightFrom=' + min_weight_val;
        } else {
            min_weight = '';
        }

        if (max_weight_val != '' && max_weight_val != undefined) {
            max_weight = '&WeightTo=' + max_weight_val;
        } else {
            max_weight = '';
        }

        var action = $('.w-action_page').val();
        redirect = action + '&filter=' + filter.join(',') + min_price + max_price + min_weight + max_weight;
        history.pushState('', '', redirect);

       // console.log(location.search);

        $('.container-loader').show();

        $.ajax({ // описываем наш запрос
            type: "GET", // будем передавать данные через POST
            dataType: "HTML", // указываем, что нам вернется JSON
            url: redirect,
            data: '&filter=' + filter.join(',') + min_price + max_price + min_weight + max_weight, // передаем данные из формы
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


    var min = parseInt("<?php echo $min_price ?>");
    var max = parseInt("<?php echo $max_price ?>");

    var ValMin = numeral().unformat($(".dop-filtr-price-min").val());
    var ValMax = numeral().unformat($(".dop-filtr-price-max").val());


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

            filter = [];
            $('input[name^=\'filter\']:checked').each(function (element) {
                filter.push(this.value);
            });

            min_price = '&PriceFrom='+numeral().unformat($(".dop-filtr-price-min").val());
            max_price = '&PriceTo='+numeral().unformat($(".dop-filtr-price-max").val());

            var action = $('.w-action_page').val();
            redirect = action + '&filter=' + filter.join(',') + min_price + max_price;
            history.pushState('', '', redirect);


            $.ajax({ // описываем наш запрос
                type: "GET", // будем передавать данные через POST
                dataType: "HTML", // указываем, что нам вернется JSON
                url: redirect,
                data: '&filter=' + filter.join(',') + min_price + max_price, // передаем данные из формы
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



    var min_weight_min = parseFloat("<?=$min_weight ?>");
    var max_weight_max = parseFloat("<?=$max_weight ?>");

    var ValMinWeight = $(".dop-filtr-weight-min").val();
    var ValMaxWeight = $(".dop-filtr-weight-max").val();


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

            filter = [];
            $('input[name^=\'filter\']:checked').each(function (element) {
                filter.push(this.value);
            });

            min_weight = '&WeightFrom='+$(".dop-filtr-weight-min").val();
            max_weight = '&WeightTo='+$(".dop-filtr-weight-max").val();

            var action = $('.w-action_page').val();
            redirect = action + '&filter=' + filter.join(',') + min_weight + max_weight;
            history.pushState('', '', redirect);


            $.ajax({ // описываем наш запрос
                type: "GET", // будем передавать данные через POST
                dataType: "HTML", // указываем, что нам вернется JSON
                url: redirect,
                data: '&filter=' + filter.join(',') + min_weight + max_weight, // передаем данные из формы
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
    slider.slider("values", 1, numeral().unformat($(this).val()));
  });

  $('.dop-filtr-price-min').on('change', function(){

    slider.slider("values", 0, numeral().unformat($(this).val()));
  });


    $('.dop-filtr-weight-max').on('change', function(){
        slider_weight.slider("values", 1, $(this).val());
    });

    $('.dop-filtr-weight-min').on('change', function(){
        slider_weight.slider("values", 0, $(this).val());
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


});


</script>


        <?php foreach ($filter_groups as $filter_group):?>

            <?php if (!empty($filter_group['filter'])):?>
                <?php if ($filter_group['type_control'] == 'checkbox'):?>

                    <div class="left-f3">
                        <div class="title"><?php echo $filter_group['name']; ?></div>
                        <div class="one-line precious-box height-inherit" data-toggle="buttons" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">

                            <?php foreach ($filter_group['filter'] as $filter) :?>
                                <?php if (in_array($filter['filter_id'], $filter_category)): ?>
                                    <label class="btn btn-filter active">
                                        <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked"/><?php echo $filter['name']; ?>
                                    </label>
                                <?else:?>
                                    <label class="btn btn-filter">
                                        <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>"/>
                                        <?php echo $filter['name']; ?>
                                    </label>
                                <?endif?>

                            <?endforeach?>

                        </div>
                    </div>

                <?elseif($filter_group['type_control'] == 'radio'):?>


                    <div class="left-f3">
                        <div class="title"><?php echo $filter_group['name']; ?></div>
                        <div class="one-line precious-box height-inherit" data-toggle="buttons" id="filter-group<?php echo $filter_group['filter_group_id']; ?>">

                            <?php foreach ($filter_group['filter'] as $filter):?>

                                <?php if (in_array($filter['filter_id'], $filter_category)):?>
                                    <label class="btn btn-filter active">
                                        <input type="radio" name="filter" value="<?php echo $filter['filter_id']; ?>" checked="checked"/><?php echo $filter['name']; ?>
                                    </label>
                                <?else:?>
                                    <label class="btn btn-filter">
                                        <input type="radio" name="filter" value="<?php echo $filter['filter_id']; ?>"/><?php echo $filter['name']; ?>
                                    </label>
                                <?endif?>

                            <?endforeach?>

                        </div>
                    </div>

                <?endif?>

            <?endif?>

            <?php if (!empty($filter_group['dop_filter'])):?>

                <div class="right-f3">
                    <div class="one-line">
                        <div class="filter-block filter1">
                            <div id="slider"></div>
                            <div class="clearfix">
                                <input type="text" value="$<?php if (!empty($PriceFrom)) { echo $PriceFrom; } else { echo number_format($filter_group['dop_filter']['min']); }?>" id="amountPrice1" class="dop-filtr-price-min input-slider-p pull-left" name="min_price">
                                <input type="text" value="$<?php if (!empty($PriceTo)) { echo  $PriceTo; } else { echo number_format($filter_group['dop_filter']['max']); }?>" id="amountPrice2" class="dop-filtr-price-max input-slider-p pull-right" name="max_price">
                            </div>
                        </div>
                    </div>
                </div>

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


        var action = $('.w-action_page').val();
        redirect = action + '&filter=' + filter.join(',') + min_price + max_price;
        history.pushState('', '', redirect);

       // console.log(location.search);

        $('.container-loader').show();

        $.ajax({ // описываем наш запрос
            type: "GET", // будем передавать данные через POST
            dataType: "HTML", // указываем, что нам вернется JSON
            url: redirect,
            data: '&filter=' + filter.join(',') + min_price + max_price, // передаем данные из формы
            success: function (response) { // когда получаем ответ
                // console.log(response);

                $('.w-category-ajax').empty();
                $('.w-category-ajax').html(response);
                $('.container-loader').hide();

                //initialize_grid();

            }
        });


    });


    var min = parseInt("<?php echo !empty($filter_group['dop_filter']['min']) ? $filter_group['dop_filter']['min'] : 0 ?>");
    var max = parseInt("<?php echo !empty($filter_group['dop_filter']['max']) ? $filter_group['dop_filter']['max'] : 0 ?>");


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

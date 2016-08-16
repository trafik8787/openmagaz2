
        <?//dd($filter_groups)?>
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
                                <input type="text" value="<?php if (!empty($PriceFrom)) { echo $PriceFrom; } else { echo $filter_group['dop_filter']['min']; }?>" id="amountPrice1" class="dop-filtr-price-min input-slider-p pull-left" name="min_price">
                                <input type="text" value="<?php if (!empty($PriceTo)) { echo  $PriceTo; } else { echo $filter_group['dop_filter']['max']; }?>" id="amountPrice2" class="dop-filtr-price-max input-slider-p pull-right" name="max_price">
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


        if ($('input[name=\'min_price\']').val() != '' && $('input[name=\'min_price\']').val() != undefined) {
            min_price = '&PriceFrom=' + $('input[name=\'min_price\']').val();
        }

        if ($('input[name=\'max_price\']').val() != '' && $('input[name=\'max_price\']').val() != undefined) {
            max_price = '&PriceTo=' + $('input[name=\'max_price\']').val();
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


    var ValMin = $(".dop-filtr-price-min").val();
    var ValMax = $(".dop-filtr-price-max").val();


    var slider = $("#slider").slider({
        range: true,
        min: min,
        animate: 'slow',
        step: 1,
        max: max,
        values: [ValMin, ValMax],
        slide: function( event, ui ) {
          $('.dop-filtr-price-max').val(Math.round(Math.easeIn(ui.values[1], min, max, 4.3)));
          $('.dop-filtr-price-min').val(Math.round(Math.easeIn(ui.values[0], min, max, 4.3)));
        },
        change: function( event, ui ) {

            $('.container-loader').show();

            filter = [];
            $('input[name^=\'filter\']:checked').each(function (element) {
                filter.push(this.value);
            });

            min_price = '&PriceFrom='+$('.dop-filtr-price-min').val();
            max_price = '&PriceTo='+$('.dop-filtr-price-max').val();

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
    slider.slider("values", 1, $(this).val());
  });

  $('.dop-filtr-price-min').on('change', function(){
    slider.slider("values", 0, $(this).val());
  });



});


</script>

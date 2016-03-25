<div>

    <input type="hidden" class="w-get-shape" value="">

    <div class="btn-group w-group-shape" data-toggle="buttons">
        <label class="btn btn-primary">
            <input type="radio" value="Round" name="shape" id="shape1"> Round
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Princess" name="shape" id="shape2"> Princess
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Emerald" name="shape" id="shape3"> Emerald
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Asscher" name="shape" id="shape4"> Asscher
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Oval" name="shape" id="shape5"> Oval
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Radiant" name="shape" id="shape6"> Radiant
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Pear" name="shape" id="shape7"> Pear
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Heart" name="shape" id="shape8"> Heart
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Marquise" name="shape" id="shape9"> Marquise
        </label>
        <label class="btn btn-primary">
            <input type="radio" value="Cushion" name="shape" id="shape10"> Cushion
        </label>
    </div>
    <p></p>
    Color<div id="w-slider-color"></div>
    <ul class="list-inline">
        <li>K</li>
        <li>J</li>
        <li>I</li>
        <li>H</li>
        <li>G</li>
        <li>F</li>
        <li>E</li>
        <li>D</li>
    </ul>
    <p></p>
    Clarity<div id="w-slider-clarity"></div>
    <ul class="list-inline">
        <li>SI3</li>
        <li>SI2</li>
        <li>SI1</li>
        <li>VS2</li>
        <li>VS1</li>
        <li>VVS2</li>
        <li>VVS1</li>
        <li>IF</li>
    </ul>
    <p></p>
    Cut<div id="w-slider-cut"></div>
    <ul class="list-inline">
        <li>Fair</li>
        <li>Good</li>
        <li>Very Good</li>
        <li>Excellent</li>
    </ul>
    <p></p>
    Carat<div>
        <div id="w-slider-carat"></div>
        <input type="text" class="text-left w-input-carat-from">
        <input type="text" class="text-right w-input-carat-to">
    </div>
    <p></p>
    Price<div>
        <div id="w-slider-price"></div>
        <input type="text" class="text-left w-input-price-from">
        <input type="text" class="text-right w-input-price-to">
    </div>

    <p>advendsend</p>

    <div class="panel panel-default">
        <div class="panel-body">
            polish
            <div id="w-slider-polish"></div>
            <ul class="list-inline">
                <li>Fair</li>
                <li>Good</li>
                <li>Very Good</li>
                <li>Excellent</li>

            </ul>

            <p></p>
            symmetry
            <div id="w-slider-symmetry"></div>
            <ul class="list-inline">
                <li>Fair</li>
                <li>Good</li>
                <li>Very Good</li>
                <li>Excellent</li>

            </ul>

            <p></p>
            labs
            <div class="btn-group w-group-labs" data-toggle="buttons">
                <label class="btn btn-primary">
                    <input type="checkbox" name="labs" value="GIA"> GIA
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="labs" value="IGI"> IGI
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="labs" value="AGS"> AGS
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="labs" value="HRD"> HRD
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="labs" value="EGL_USA"> EGL_USA
                </label>
            </div>
            <p></p>

            Depth<div>
                <div id="w-slider-depth"></div>
                <input type="text" class="text-left w-input-depth-from">
                <input type="text" class="text-right w-input-depth-to">
            </div>

            <p></p>
            Table<div>
                <div id="w-slider-table"></div>
                <input type="text" class="text-left w-input-table-from">
                <input type="text" class="text-right w-input-table-to">
            </div>


            <p></p>
            fluorescence_intensities
            <div class="btn-group w-group-fluorescence-intensities" data-toggle="buttons">
                <label class="btn btn-primary">
                    <input type="checkbox" name="fluorescence_intensities" value="Very Strong"> Very Strong
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="fluorescence_intensities" value="Strong"> Strong
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="fluorescence_intensities" value="Slight"> Slight
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="fluorescence_intensities" value="Medium"> Medium
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="fluorescence_intensities" value="Faint"> Faint
                </label>
                <label class="btn btn-primary">
                    <input type="checkbox" name="fluorescence_intensities" value="Very Slight"> Very Slight
                </label>
            </div>


        </div>

    </div>

    <select name="show" id="w-product-show">
        <option selected value="15">15</option>
        <option value="25">25</option>
        <option value="50">50</option>
    </select>

    <select name="sortby" id="w-product-sortby">
        <option value="size_Asc">Carat: low to high</option>
        <option value="size_Desc">Carat: high to low</option>
        <option value="Color_Asc">Color: low to high</option>
        <option value="Color_Desc">Color: high to low</option>
        <option value="Clarity_Asc">Clarity: low to high</option>
        <option value="Clarity_Desc">Clarity: high to low</option>
        <option value="Cut_Asc">Cut: low to high</option>
        <option value="Cut_Desc">Cut: high to low</option>
        <option selected value="Price_Asc">Price: low to high</option>
        <option value="Price_Desc">Price: high to low</option>
    </select>

</div>

<div id="w-show-product">
    <?php echo $data;?>
</div>


<script type="text/javascript">


    $(document).ready(function () {
        var $action =  "<?=$action?>";
        var $url_color='';
        var $url_shape='';
        var $url_clarity='';
        var $url_cut='';
        var $url_carat='';
        var $url_price='';

        var $url_polish='';
        var $url_symmetry = '';
        var $url_labs = '';
        var $url_depth = '';
        var $url_table = '';
        var $url_fluorescence_intensities = '';

        //sorte
        var $url_show ='';
        var $url_sortby ='';
        var $url_page = '';


        var queryStr = parseQueryString(window.location.search);

        //get url color

        if (queryStr['shape'] != undefined) {
            $url_shape = '&shape='+queryStr['shape'];
            $('.w-group-shape input').each(function (element) {
                if (this.value == queryStr['shape']) {
                    $(this).parent().addClass('active');
                }
            });
        }



        if (queryStr['fluorescence_intensities'] != undefined) {
            $url_fluorescence_intensities = '&fluorescence_intensities='+queryStr['fluorescence_intensities'];
            $('.w-group-fluorescence-intensities input').each(function (element) {

                var $input_this = this;

                $.each(queryStr['fluorescence_intensities'].split(','), function( key, value ) {

                    if ($input_this.value == value) {
                        $($input_this).parent().addClass('active');
                    }
                });
            });
        }


        if (queryStr['labs'] != undefined) {
            $url_labs = '&labs='+queryStr['labs'];
            $('.w-group-labs input').each(function (element) {

                var $input_this = this;

                $.each(queryStr['labs'].split(','), function( key, value ) {

                    if ($input_this.value == value) {
                        $($input_this).parent().addClass('active');
                    }
                });
            });
        }



        //sort

        if (queryStr['show'] != undefined) {
            $url_show = '&show='+queryStr['show'];
            $('#w-product-show :contains('+queryStr["show"]+')').attr("selected", "selected");
        }


        if (queryStr['sortby'] != undefined) {
            $url_sortby = '&sortby='+queryStr['sortby'];
            $('#w-product-sortby :contains('+queryStr["sortby"]+')').attr("selected", "selected");
        }





        if (queryStr['color'] != undefined) {
            $get_color_from = queryStr['color'].split(',')[0];
            $get_color_to = queryStr['color'].split(',')[1];
            $url_color = '&color='+queryStr['color'].split(',')[0]+','+queryStr['color'].split(',')[1];
        } else {
            $get_color_from = 0;
            $get_color_to = 8;
        }


        if (queryStr['clarity'] != undefined) {
            $get_clarity_from = queryStr['clarity'].split(',')[0];
            $get_clarity_to = queryStr['clarity'].split(',')[1];
            $url_clarity = '&clarity='+queryStr['clarity'].split(',')[0]+','+queryStr['clarity'].split(',')[1];
        } else {
            $get_clarity_from = 0;
            $get_clarity_to = 8;
        }

        if (queryStr['cut'] != undefined) {
            $get_cut_from = queryStr['cut'].split(',')[0];
            $get_cut_to = queryStr['cut'].split(',')[1];
            $url_cut = '&cut='+queryStr['cut'].split(',')[0]+','+queryStr['cut'].split(',')[1];
        } else {
            $get_cut_from = 0;
            $get_cut_to = 4;
        }


        if (queryStr['carat'] != undefined) {
            $get_carat_from = queryStr['carat'].split(',')[0];
            $get_carat_to = queryStr['carat'].split(',')[1];
            $url_carat = '&carat='+queryStr['carat'].split(',')[0]+','+queryStr['carat'].split(',')[1];
        } else {
            $get_carat_from = 0.5;
            $get_carat_to = 15;
        }

        if (queryStr['price'] != undefined) {
            $get_price_from = queryStr['price'].split(',')[0];
            $get_price_to = queryStr['price'].split(',')[1];
            $url_price = '&price='+queryStr['price'].split(',')[0]+','+queryStr['price'].split(',')[1];
        } else {
            $get_price_from = 200;
            $get_price_to = 999000;
        }


        if (queryStr['polish'] != undefined) {
            $get_polish_from = queryStr['polish'].split(',')[0];
            $get_polish_to = queryStr['polish'].split(',')[1];
            $url_polish = '&polish='+queryStr['polish'].split(',')[0]+','+queryStr['polish'].split(',')[1];
        } else {
            $get_polish_from = 0;
            $get_polish_to = 4;
        }


        if (queryStr['symmetry'] != undefined) {
            $get_symmetry_from = queryStr['symmetry'].split(',')[0];
            $get_symmetry_to = queryStr['symmetry'].split(',')[1];
            $url_symmetry = '&symmetry='+queryStr['symmetry'].split(',')[0]+','+queryStr['symmetry'].split(',')[1];
        } else {
            $get_symmetry_from = 0;
            $get_symmetry_to = 4;
        }


        if (queryStr['depth'] != undefined) {
            $get_depth_from = queryStr['depth'].split(',')[0];
            $get_depth_to = queryStr['depth'].split(',')[1];
            $url_depth = '&depth='+queryStr['depth'].split(',')[0]+','+queryStr['depth'].split(',')[1];
        } else {
            $get_depth_from = 45;
            $get_depth_to = 80;
        }


        if (queryStr['table'] != undefined) {
            $get_table_from = queryStr['table'].split(',')[0];
            $get_table_to = queryStr['table'].split(',')[1];
            $url_table = '&table='+queryStr['table'].split(',')[0]+','+queryStr['table'].split(',')[1];
        } else {
            $get_table_from = 50;
            $get_table_to = 83;
        }


        if (queryStr['page'] != undefined) {
            $url_page = '&page='+queryStr['page'];
        }



        function generate_url () {

            return $action+'<?php echo $seo?>'+$url_shape+$url_color+$url_clarity+$url_cut+$url_carat+$url_price+
                    $url_polish+$url_symmetry+$url_labs+$url_depth+$url_table+
                    $url_fluorescence_intensities+$url_show+$url_sortby+$url_page;

        }


        $(document).on('change', '.w-group-shape input', function(){

            $url_shape = '&shape='+$(this).val();
            redirect = generate_url();
            history.pushState('', '', redirect);

            ajaxdata(redirect);

        });


        $(document).on('change', '.w-group-labs input', function(){

            var $labs_cecout = [];
            $('.w-group-labs input:checked').each(function (element) {
                $labs_cecout.push(this.value);
            });

            $url_labs = '&labs='+$labs_cecout.join(',');
            redirect = generate_url();
            history.pushState('', '', redirect);

            ajaxdata(redirect);

        });


        $(document).on('change', '.w-group-fluorescence-intensities input', function(){

            var $fluorescence_intensities_cecout = [];
            $('.w-group-fluorescence-intensities input:checked').each(function (element) {
                $fluorescence_intensities_cecout.push(this.value);
            });

            $url_fluorescence_intensities = '&fluorescence_intensities='+$fluorescence_intensities_cecout.join(',');
            redirect = generate_url();
            history.pushState('', '', redirect);

            ajaxdata(redirect);

        });



        //sort event

        $(document).on('change', '#w-product-show', function(){
            $('.container-loader').show();
            $url_show = '&show='+this.value;
            redirect = generate_url();
            history.pushState('', '', redirect);

            ajaxdata(redirect);
        });


        $(document).on('change', '#w-product-sortby', function(){

            $url_sortby = '&sortby='+this.value;
            redirect = generate_url();
            history.pushState('', '', redirect);

            ajaxdata(redirect);
        });




        var $w_slider_color = $('#w-slider-color').slider({
            min: 0,
            max: 8,
            range: true,
            step: 1,
            animate: 'slow',
            values: [$get_color_from, $get_color_to],
            slide: function( event, ui ) {
                if (ui.values[0] >= ui.values[1]) {
                    return false;
                }
                if (ui.values[1] <= ui.values[0]) {
                    return false;
                }
            },
            change: function( event, ui ) {

                $url_color = '&color='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);

            }
        });



        var $w_slider_clarity = $('#w-slider-clarity').slider({
            min: 0,
            max: 8,
            range: true,
            animate: 'slow',
            values: [$get_clarity_from, $get_clarity_to],
            slide: function( event, ui ) {
                if (ui.values[0] >= ui.values[1]) {
                    return false;
                }
                if (ui.values[1] <= ui.values[0]) {
                    return false;
                }
            },
            change: function( event, ui ) {

                $url_clarity = '&clarity='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });



        var $w_slider_cut = $('#w-slider-cut').slider({
            min: 0,
            max: 4,
            range: true,
            animate: 'slow',
            values: [$get_cut_from, $get_cut_to],
            slide: function( event, ui ) {
                if (ui.values[0] >= ui.values[1]) {
                    return false;
                }
                if (ui.values[1] <= ui.values[0]) {
                    return false;
                }
            },
            change: function( event, ui ) {

                $url_cut = '&cut='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });



        $('.w-input-carat-from').val($get_carat_from);
        $('.w-input-carat-to').val($get_carat_to);

        var $w_slider_carat = $('#w-slider-carat').slider({
            min: 0.5,
            max: 15,
            range: true,
            step: 0.01,
            animate: 'slow',
            values: [$get_carat_from, $get_carat_to],
            slide: function( event, ui ) {
                $('.w-input-carat-from').val(ui.values[0]);
                $('.w-input-carat-to').val(ui.values[1]);
            },
            change: function( event, ui ) {

                $url_carat = '&carat='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });


        $('.w-input-carat-from').on('change', function(){
            $w_slider_carat.slider("values", 0, $(this).val());
        });

        $('.w-input-carat-to').on('change', function(){
            $w_slider_carat.slider("values", 1, $(this).val());
        });



        $('.w-input-price-from').val($get_price_from);
        $('.w-input-price-to').val($get_price_to);

        var $w_slider_price = $('#w-slider-price').slider({
            min: 200,
            max: 10000,
            range: true,
            step: 100,
            animate: 'slow',
            values: [$get_price_from, $get_price_to],
            slide: function( event, ui ) {

                $('.w-input-price-from').val(ui.values[0]);
                $('.w-input-price-to').val(ui.values[1]);
            },
            change: function( event, ui ) {

                $url_price = '&price='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });


        $('.w-input-price-from').on('change', function(){
            $w_slider_price.slider("values", 0, $(this).val());
        });

        $('.w-input-price-to').on('change', function(){
            $w_slider_price.slider("values", 1, $(this).val());
        });



        //advendset


        var $w_slider_polish = $('#w-slider-polish').slider({
            min: 0,
            max: 4,
            range: true,
            animate: 'slow',
            values: [$get_polish_from, $get_polish_to],
            slide: function( event, ui ) {
                if (ui.values[0] >= ui.values[1]) {
                    return false;
                }
                if (ui.values[1] <= ui.values[0]) {
                    return false;
                }
            },
            change: function( event, ui ) {

                $url_polish = '&polish='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });



        var $w_slider_symmetry = $('#w-slider-symmetry').slider({
            min: 0,
            max: 4,
            range: true,
            animate: 'slow',
            values: [$get_symmetry_from, $get_symmetry_to],
            slide: function( event, ui ) {
                if (ui.values[0] >= ui.values[1]) {
                    return false;
                }
                if (ui.values[1] <= ui.values[0]) {
                    return false;
                }
            },
            change: function( event, ui ) {

                $url_symmetry = '&symmetry='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });




        $('.w-input-depth-from').val($get_depth_from);
        $('.w-input-depth-to').val($get_depth_to);

        var $w_slider_depth = $('#w-slider-depth').slider({
            min: 45,
            max: 80,
            range: true,
            animate: 'slow',
            values: [$get_depth_from, $get_depth_to],
            slide: function( event, ui ) {
                $('.w-input-depth-from').val(ui.values[0]);
                $('.w-input-depth-to').val(ui.values[1]);
            },
            change: function( event, ui ) {

                $url_depth = '&depth='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });


        $('.w-input-depth-from').on('change', function(){
            $w_slider_depth.slider("values", 0, $(this).val());
        });

        $('.w-input-depth-to').on('change', function(){
            $w_slider_depth.slider("values", 1, $(this).val());
        });






        $('.w-input-table-from').val($get_table_from);
        $('.w-input-table-to').val($get_table_to);

        var $w_slider_table = $('#w-slider-table').slider({
            min: 50,
            max: 83,
            range: true,
            animate: 'slow',
            values: [$get_table_from, $get_table_to],
            slide: function( event, ui ) {
                $('.w-input-table-from').val(ui.values[0]);
                $('.w-input-table-to').val(ui.values[1]);
            },
            change: function( event, ui ) {

                $url_table = '&table='+ui.values[0]+','+ui.values[1];
                redirect =  generate_url();
                history.pushState('', '', redirect);

                ajaxdata(redirect);
            }
        });


        $('.w-input-table-from').on('change', function(){
            $w_slider_table.slider("values", 0, $(this).val());
        });

        $('.w-input-table-to').on('change', function(){
            $w_slider_table.slider("values", 1, $(this).val());
        });




        $(document).on('click', '.w-pagination-diamonts .pagination li a', function(){

           //alert($(this).href());

            var $gets = parseQueryString ($(this).attr("href"));
            console.log($gets);
            $url_page = '&page='+$gets['page'];
            redirect = generate_url();
            history.pushState('', '', redirect);

            ajaxdata (this.href);
            return false;

        });





        function ajaxdata (redirect) {

            $.ajax({
                type: "GET",
                dataType: "HTML",
                url: '/index.php?route=module/rapnet/getjson',
                data: redirect,
                beforeSend: function() {
                    $('.container-loader').show();
                },
                complete: function() {
                    $('.container-loader').hide();
                },
                success: function (response) {

                    $('#w-show-product').empty();
                    $('#w-show-product').html(response);


                }

            });
        }





        //get parse url
        function parseQueryString (strQuery) {
            var i,
                    tmp     = [],
                    tmp2    = [],
                    objRes   = {};
            if (strQuery != '') {
                tmp = (strQuery.substr(1)).split('&');
                if (tmp.length == 1) {
                    tmp = strQuery.substr(1).split('?');
                }
                for (i = 0; i < tmp.length; i += 1) {
                    tmp2 = tmp[i].split('=');
                    if (tmp2[0]) {
                        objRes[tmp2[0]] = tmp2[1];
                    }
                }
            }
            return objRes;
        }




        $(document).on('click', '.w-product-diamonts', function(){

            $('.container-loader').show();

            history.pushState('', '', this.href);

            $.ajax({
                type: "GET",
                dataType: "HTML",
                url: '/index.php?route=module/rapnet/getproduct',
                data: 'diamond_id='+$(this).data('id'),
                success: function (response) {


                    $('.w-general-container').empty();
                    $('.w-general-container').html(response);
                    $('.container-loader').hide();

                }

            });

           return false;
        });





    });


</script>
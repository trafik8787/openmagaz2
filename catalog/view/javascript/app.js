/**
 * Created by Vitalik on 24.02.2016.
 */

$(document).ready(function() {


    //пагинация ajax
    $(document).on('click', '.w-pagination-product .pagination a', function(){

        input_sort (this.href);
        return false;
    });


    //загрузка товаров из подкатегории
    $(document).on('change', '.w-wsubcat' ,function(){
        input_sort ($(this).data('href'));
        history.pushState('', '', $(this).data('href'));
        return false;
    });


    //модуль подкатегорий добавление класса по клике
    //$(document).on('click', '.w-group-wsubcat a' ,function(){
    //
    //    $('.w-group-wsubcat a').removeClass('active');
    //    $(this).addClass('active');
    //
    //});



    //load controller general category
    $('.w-general-category').on('click', function(){

        $('.container-loader').show();

        history.pushState('', '', this.href);

        $.ajax({ // описываем наш запрос
            type: "POST", // будем передавать данные через POST
            dataType: "HTML", // указываем, что нам вернется JSON
            url: this.href,
            data: 'general_category=1',
            success: function (response) { // когда получаем ответ

                $('.w-general-container').empty();
                $('.w-general-container').html(response);
                $('.container-loader').hide();

                //initialize_grid();

            }

        });

        return false;
    });




    //загрузка продуктов
    $(document).on('click', '.w-product-ajax' ,function(){

        $('.container-loader').show();
        //console.log(this.href);

        history.pushState('', '', this.href);

        $.ajax({ // описываем наш запрос
            type: "GET", // будем передавать данные через POST
            dataType: "HTML", // указываем, что нам вернется JSON
            url: this.href,
            data: this.href, // передаем данные из формы
            success: function (response) { // когда получаем ответ


                $('.w-general-container').empty();
                $('.w-general-container').html(response);
                $('.container-loader').hide();

               // initialize_grid();

            }

        });


        $('.date').datetimepicker({
            pickTime: false
        });

        $('.datetime').datetimepicker({
            pickDate: true,
            pickTime: true
        });

        $('.time').datetimepicker({
            pickDate: false
        });


        return false;
    });

});



//добавить в complect
$(document).on('click', '#w-button-add-product-complect', function(){

    var $this = $(this);

    var $select = $('#product select');

    $.ajax({
        url: 'index.php?route=module/complect/add_product_complect',
        type: 'post',
        //data: 'complect_id_product='+$this.data('idproduct')+'&path='+$this.data('path')+$('#product select'),
        data: $('#product select, #product input[name=\'product_id\'], #product input[name=\'w_path\']'),
        dataType: 'html',
        beforeSend: function() {
            $this.button('loading');
        },
        complete: function() {
            $this.button('reset');
        },
        success: function(json) {
            $('.w-blocs-complects').empty();
            $('.w-blocs-complects').html(json);
            console.log(json);
        },
        error: function(xhr, ajaxOptions, thrownError) {

        }
    });

});


$(document).on('click', '#w-button-add-diamond-complect', function(){

    var $this = $(this);


    $.ajax({
        url: 'index.php?route=module/complect/add_product_complect',
        type: 'post',
        data: 'complect_id_diamond='+$this.data('idproduct')+'&shape='+$this.data('shape'),
        dataType: 'html',
        beforeSend: function() {
            $this.button('loading');
        },
        complete: function() {
            $this.button('reset');
        },
        success: function(json) {
            $('.w-blocs-complects').empty();
            $('.w-blocs-complects').html(json);
           // console.log(json);
        },
        error: function(xhr, ajaxOptions, thrownError) {

        }
    });


});



$(document).on('click', '.w-remowe-diamond-complect', function(){

    $.ajax({
        url: 'index.php?route=module/complect/del_complect',
        type: 'post',
        data: 'complect_id_diamond=1',
        dataType: 'html',
        beforeSend: function() {
            //$this.button('loading');
        },
        complete: function() {
            //$this.button('reset');
        },
        success: function(json) {
            $('.w-blocs-complects').empty();
            $('.w-blocs-complects').html(json);
            // console.log(json);
        },
        error: function(xhr, ajaxOptions, thrownError) {

        }
    });

    return false;

});

$(document).on('click', '.w-remowe-product-complect', function(){

    $.ajax({
        url: 'index.php?route=module/complect/del_complect',
        type: 'post',
        data: 'complect_id_product=1',
        dataType: 'html',
        beforeSend: function() {
            //$this.button('loading');
        },
        complete: function() {
            //$this.button('reset');
        },
        success: function(json) {
            $('.w-blocs-complects').empty();
            $('.w-blocs-complects').html(json);
            // console.log(json);
        },
        error: function(xhr, ajaxOptions, thrownError) {

        }
    });

    return false;

});





$(document).on('click', '#w-complide-view', function() {


    $('.container-loader').show();

    history.pushState('', '', this.href);

    $.ajax({
        type: "GET",
        dataType: "HTML",
        url: '/index.php?route=module/complect/complete_diamond',
        data: '',
        success: function (response) {


            $('.w-general-container').empty();
            $('.w-general-container').html(response);
            $('.container-loader').hide();

        }

    });

    return false;

});





function input_sort (value) {
    $('.container-loader').show();
    //console.log(value);
    $.ajax({ // описываем наш запрос
        type: "GET", // будем передавать данные через POST
        dataType: "HTML", // указываем, что нам вернется JSON
        url: value,
        data: value, // передаем данные из формы
        success: function (response) { // когда получаем ответ

            $('.w-category-ajax').empty();
            $('.w-category-ajax').html(response);
            $('.container-loader').hide();

            //initialize_grid();

        }

    });
}



function initialize_grid () {
    // What a shame bootstrap does not take into account dynamically loaded columns
    cols = $('#column-right, #column-left').length;

    if (cols == 2) {
        $('#content .product-list').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
    } else if (cols == 1) {
        $('#content .product-list').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
    } else {
        $('#content .product-list').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
    }

    localStorage.setItem('display', 'grid');


    // Product List
    $('#list-view').on('click', function () {
        $('#content .product-grid > .clearfix').remove();

        //$('#content .product-layout').attr('class', 'product-layout product-list col-xs-12');
        $('#content .row > .product-grid').attr('class', 'product-layout product-list col-xs-12');

        localStorage.setItem('display', 'list');
    });

    // Product Grid
    $('#grid-view').on('click', function () {
        // What a shame bootstrap does not take into account dynamically loaded columns
        cols = $('#column-right, #column-left').length;

        if (cols == 2) {
            $('#content .product-list').attr('class', 'product-layout product-grid col-lg-6 col-md-6 col-sm-12 col-xs-12');
        } else if (cols == 1) {
            $('#content .product-list').attr('class', 'product-layout product-grid col-lg-4 col-md-4 col-sm-6 col-xs-12');
        } else {
            $('#content .product-list').attr('class', 'product-layout product-grid col-lg-3 col-md-3 col-sm-6 col-xs-12');
        }

        localStorage.setItem('display', 'grid');
    });


}

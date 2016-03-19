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
    $(document).on('click', '.w-wsubcat' ,function(){

        input_sort (this.href);
        history.pushState('', '', this.href);
        return false;
    });


    //модуль подкатегорий добавление класса по клике
    $(document).on('click', '.w-group-wsubcat a' ,function(){

        $('.w-group-wsubcat a').removeClass('active');
        $(this).addClass('active');

    });



    //load controller general category
    $('.w-general-category').on('click', function(){

        $('.container-loader').show();

        history.pushState('', '', this.href);

        $.ajax({ // описываем наш запрос
            type: "POST", // будем передавать данные через POST
            dataType: "HTML", // указываем, что нам вернется JSON
            url: this.href,
            data: 'general_category=1', // передаем данные из формы
            success: function (response) { // когда получаем ответ

                $('.w-general-container').empty();
                $('.w-general-container').html(response);
                $('.container-loader').hide();

                initialize_grid();

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

            initialize_grid();

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

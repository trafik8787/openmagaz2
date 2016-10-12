/**
 * Created by Vitalik on 24.02.2016.
 */

//logarifm
Math.easeIn = function (val, min, max, strength) {
    val /= max;
    return (max-1)*Math.pow(val, strength) + min;
};

Math.easeOut = function (val, min, max, strength) {
    var res;
    res = (val-min)/(max-1);
    res = Math.pow(res, 1/strength);
    return max*res;
};

$(document).ready(function() {

    $('.bxslider').bxSlider({
        auto: true,
        minSlides: 2,
        maxSlides: 2,
        slideWidth: 220,
        slideMargin: 30,
        responsive: true,
        pager: false
        // nextSelector: '.icons-next_slider_icon',
        // prevSelector: '.icons-prev_slider_icon'

    });


    $('.w-more-info').on('click', function () {
        var $collapse = $('.collapse');
        $collapse.collapse('toggle');
    });



    //пагинация ajax
    $(document).on('click', '.w-pagination-product .pagination a', function(){

        input_sort (this.href);
        return false;
    });





    //загрузка товаров из подкатегории
    // $(document).on('change', '.w-wsubcat' ,function(){
    //     input_sort ($(this).data('href'));
    //     history.pushState('', '', $(this).data('href'));
    //     if ($(document).scrollTop() < 500) {
    //         $('html, body').animate({scrollTop: 500}, 'slow');
    //     }
    //     return false;
    // });


    //модуль подкатегорий добавление класса по клике
    //$(document).on('click', '.w-group-wsubcat a' ,function(){
    //
    //    $('.w-group-wsubcat a').removeClass('active');
    //    $(this).addClass('active');
    //
    //});









    //load controller general category

    // $(document).on('click', '.w-general-category', function(){
    //
    //     var $url = $(this).attr('href');
    //     history.pushState('', '', $url);
    //
    //     $.ajax({ // описываем наш запрос
    //         type: "POST", // будем передавать данные через POST
    //         dataType: "HTML", // указываем, что нам вернется JSON
    //         url: $url,
    //         data: 'general_category=1',
    //         beforeSend: function() {
    //             $('.container-loader').show();
    //             $(".menu > ul > li > .dropdown-inside").hide();
    //         },
    //         complete: function() {
    //             $('.container-loader').hide();
    //         },
    //         success: function (response) { // когда получаем ответ
    //
    //             $('.w-general-container').empty();
    //             $('.w-general-container').html(response);
    //             $('.question-filter-btn').popover();
    //
    //         }
    //
    //     });
    //
    //     $('html, body').animate({ scrollTop: 0 }, 'slow');
    //     return false;
    // });




    //загрузка продуктов
    $(document).on('click', '.w-product-ajax' ,function(){


        //console.log(this.href);

        history.pushState('', '', this.href);

        $.ajax({ // описываем наш запрос
            type: "GET", // будем передавать данные через POST
            dataType: "HTML", // указываем, что нам вернется JSON
            url: this.href,
            data: this.href, // передаем данные из формы
            beforeSend: function() {
                $('.container-loader').show();
            },
            complete: function() {
                $('.container-loader').hide();
            },
            success: function (response) { // когда получаем ответ


                $('.w-general-container').empty();
                $('.w-general-container').html(response);

                $('.dropdown').easyDropDown();
                Productslider();
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

        $('html, body').animate({ scrollTop: 0 }, 'slow');
        return false;
    });

});



//добавить в complect
$(document).on('click', '#w-button-add-product-complect', function(){

    var $this = $(this);

    var $select = $('#product select');
    var data = $('#product select, #product input[name=\'product_id\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select');
    $('.text-danger').detach();
    if ($("select option:selected").val()) {

        $.ajax({
            url: '/index.php?route=module/complect/add_product_complect',
            type: 'post',
            data: data,
            dataType: 'html',
            beforeSend: function () {
                $this.button('loading');
            },
            complete: function () {
                $this.button('reset');
            },
            success: function (json) {
                $('.w-blocs-complects').empty();
                $('.w-blocs-complects').html(json);
                $('html, body').animate({scrollTop: 0}, 'slow');

                if ($.cookie('CanaryDiamontCom') != null) {
                    window.location.href = '/complete_diamond';
                } else {
                    window.location.href = '/diamonds';
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {

            }
        });

    } else {

        $('.dropdown').after('<div class="text-danger">SIZE required!</div>');
    }
});


$(document).on('click', '#w-button-add-diamond-complect', function(){

    var $this = $(this);


    $.ajax({
        url: '/index.php?route=module/complect/add_product_complect',
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
            $('html, body').animate({ scrollTop: 0 }, 'slow');

            if ($.cookie('CanaryProductCom') != null) {
                window.location.href = '/complete_diamond';
            } else {
                window.location.href = '/engagement-rings';
            }


        },
        error: function(xhr, ajaxOptions, thrownError) {

        }
    });


});



$(document).on('click', '.w-remowe-diamond-complect', function(){

    $.ajax({
        url: '/del_complect',
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
        url: '/del_complect',
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



$(document).on('click', '.w-link-complect-bloc', function() {

    window.location.href = $(this).data('href');
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
            Productslider();
        }

    });

    return false;

});


// $(window).on('popstate', function(event) {
//     console.log( window.location.href);
//     // history.replaceState({ path: window.location.href }, '');
//     window.location.replace(window.location.href);
// });

window.onpopstate =  function(event) {
    // console.log( window.location.href);
    window.location.replace(window.location.href);
};



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

        }

    });
}


$(document).ready(function() {

    //пременная отступа
    var cont_left = $(".w-diamond-home-sparite").position().left;

    // рапределяем миниатюра по длинне,
    // смещая их по горизонтали
    $(".w-diam-row").each(function(index) {
        var left = (index * 120) + cont_left;
        $(this).css("left", left + "px");
    });


    $(".w-diam-row").hover(function() {
        // при наведении курсора мыши
        $(this).css("z-index", 2);
        $(this).find('.w-diamond-name-sparite').css('text-decoration','underline');
        $(this).animate({
            width    : "150px",
            left             : "-=10",
            top              : "-=15"
        }, "fast").find('.w-home-briliant').addClass('w-sparite-shadow');
    }, function() {
        // hover out
        $(this).css("z-index", 0);
        $(this).find('.w-diamond-name-sparite').css('text-decoration','none');
        $(this).animate({
            width           : "120px",
            left             : "+=10",
            top              : "+=15"
        }, "fast").find('.w-home-briliant').removeClass('w-sparite-shadow');
    });

});




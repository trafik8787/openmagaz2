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

    //$('.bxslider').bxSlider({
    //    //auto: true,
    //    minSlides: 1,
    //    maxSlides: 2,
    //    slideWidth: 230,
    //    slideMargin: 10,
    //    responsive: true,
    //    pager: false,
    //    adaptiveHeight: true
    //    // nextSelector: '.icons-next_slider_icon',
    //    // prevSelector: '.icons-prev_slider_icon'
    //
    //});


    $(document).on('click',".arrow-btn-number", function(e){
        e.preventDefault();
        if ($(this).attr('data-action')=='plus'){
            $(this).parent().find('input').val(Number($(this).parent().find('input').val())+1);
        }
        else{
            if (Number($(this).parent().find('input').val())>1){
                $(this).parent().find('input').val(Number($(this).parent().find('input').val())-1);
            }
        }
    });

    $(".mobile-menu-btn").click(function(){
        $(".mobile-menu").toggleClass("open");
    });
    $('.bxslider').slick({
        infinite: true,
        autoplay: true,
        prevArrow: '<a href="#" class="bx-prev"></a>',
        nextArrow: '<a href="#" class="bx-next"></a>',
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    $('.bxslider-blog').slick({
        infinite: true,
        prevArrow: '<div class="blog-control-prev"><a class="bx-prev" href="">Prev</a></div>',
        nextArrow: '<div class="blog-control-next"><a class="bx-next" href="">Next</a></div>',
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1024,
                settings: {
                    slidesToShow: 3,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            },
            {
                breakpoint: 480,
                settings: {
                    slidesToShow: 1,
                    slidesToScroll: 1
                }
            }
        ]
    });

    //$('.bxslider-blog').bxSlider({
    //    auto: true,
    //    minSlides: 1,
    //    maxSlides: 4,
    //    slideWidth: 287,
    //    slideMargin: 30,
    //    moveSlides: 1,
    //    infiniteLoop: true,
    //    responsive: true,
    //    pager: false,
    //    adaptiveHeight: true,
    //     nextSelector: '.blog-control-next',
    //     prevSelector: '.blog-control-prev'
    //
    //});


    $('.w-more-info').on('click', function () {
        var $collapse = $('.collapse');
        $collapse.collapse('toggle');
    });

    $('.collapse').on('shown.bs.collapse', function () {
        $('.w-more-info span').text('less info');

    });

    $('.collapse').on('hidden.bs.collapse', function () {
        $('.w-more-info span').text('more info');

    });

    //пагинация ajax
    $(document).on('click', '.w-pagination-product .pagination a', function(){

        input_sort (this.href);
        return false;
    });



    //add complect diamond
    $(document).on('click', '#w-diamont-button-cart', function(){


        $.ajax({
            url: 'index.php?route=checkout/cart/add_diamond',
            type: 'POST',
            data: 'diamond_id='+$('#w-diamond_id').val(),
            dataType: 'json',
            beforeSend: function() {
                $('#w-diamont-button-cart').button('loading');
            },
            complete: function() {
                $('#w-diamont-button-cart').button('reset');
            },
            success: function(json) {
                $('#w-but-cart').html('<i class="icons-cart_icon"></i><span class="w-count-circle">'+json['count']+'</span><span>cart</span>');
                $('html, body').animate({ scrollTop: 0 }, 'slow');
                $('.cart-basket').load('index.php?route=common/cart/info .w-cart-basket');
                $(".cart-bl").addClass("open");
            },
            error: function(xhr, ajaxOptions, thrownError) {
                alert('ошибочка вышла');
            }
        });

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

    if ($(window).width() >= '1090') {
        $(".w-diam-row").hover(function () {

            $(this).css({
                'width': "150px",
                'top': '-16px',
                'z-index': 2
            });

            $(this).find('a > img').css({'height': '102px'});

            $(this).parent().find('li').not($(this)).css({'top': '-27px'});
            $(this).find('.w-home-briliant').css({
                'box-shadow': '-1px 0 3px #ccc, 1px 0 3px #ccc',
                'border': '1px solid #cfdae6'
            });
            $(this).find('.w-diamond-name-sparite a').css({
                'text-decoration': 'underline'
            });

            $(this).prevAll().css({'left': '15px'});
            $(this).nextAll().css({'left': '-15px'});


        }, function () {
            $(this).css({
                'width': "120px",
                'top': '0',
                'z-index': 1
            });
            $(this).find('a > img').css({'height': '76px'});

            $(this).find('.w-home-briliant').css({
                'box-shadow': '0 0 1px #265293, 11px 15px 22px #144082',
                'border': 'none'
            });

            $(this).find('.w-diamond-name-sparite a').css({
                'text-decoration': 'none'
            });
            $(this).parent().find('li').not($(this)).css({'top': '0'});
            $(this).prevAll().css({'left': '0'});
            $(this).nextAll().css({'left': '0'});
        });
    }

});


$(function() {
    alignMenu();

    $(window).resize(function() {
        $("#horizontal").append($("#horizontal li.hideshow ul").html());
        $("#horizontal li.hideshow").remove();
        alignMenu();
    });

    function alignMenu() {
        var w = 0;
        var mw = $("#horizontal").width() - 60;
        var i = -1;
        var menuhtml = '';
        var flag_more = false;
        jQuery.each($("#horizontal").children('li'), function() {
            i++;
            w += $(this).outerWidth(true);
            if (mw < w) {
                menuhtml += $('<div>').append($(this).clone()).html();
                $(this).remove();
                flag_more = true;
            } else {
                flag_more = false;
            }

        });
        if (flag_more == true) {
            $("#horizontal").append(
                '<li href="#" class="hideshow">'
                + '<a href="#">more '
                + '<span style="font-size:13px">&#8595;</span>'
                + '</a><ul class="w-top-children-menu">' + menuhtml + '</ul></li>');
            $("#horizontal li.hideshow ul").css("top", "40px");
            $("#horizontal li.hideshow").click(function () {
                $(this).children("ul.w-top-children-menu").toggle();
            });
        }

    }
});






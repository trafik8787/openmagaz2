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
    // $('.one-product-slider .slider-for').show();
    // $('.one-product-slider .slider-nav').show();
    $('.product-advantages-list').show();

    $(document).on('click', '.button-send-hit', function () {
        $.ajax({
            url: '/index.php?route=product/product/send_hit',
            type: 'post',
            data: $('#form-email-hit').serialize(),
            dataType: 'json',
            beforeSend: function () {
                $('.container-loader').show();
            },
            complete: function () {
                $('.container-loader').hide();
            },
            success: function (json) {
                if (json['error']) {
                    //$('.body-modal-content').after
                    if (json['error']['friend_name']) {
                        $('.body-modal-content input[name=\"friend_name\"]').addClass('red-border').after('<span class="text-danger">'+ json['error']['friend_name'] +'</span>');
                    }

                    if (json['error']['friend_email']) {
                        $('.body-modal-content input[name=\"friend_email\"]').addClass('red-border').after('<span class="text-danger">'+ json['error']['friend_email'] +'</span>');
                    }

                    if (json['error']['your_name']) {
                        $('.body-modal-content input[name=\"your_name\"]').addClass('red-border').after('<span class="text-danger">'+ json['error']['your_name'] +'</span>');
                    }

                    if (json['error']['your_email']) {
                        $('.body-modal-content input[name=\"your_email\"]').addClass('red-border').after('<span class="text-danger">'+ json['error']['your_email'] +'</span>');
                    }
                } else {
                    $('.body-modal-content').html('<div style="text-align: center;font-size: 16px;color: green;">'+json['success']+'</div>');
                }
            }
        });
        return false;
    });


    var inProgress = false;
    var startFrom = 2;

    $(document).on("DOMSubtreeModified",function(){
        inProgress = false;
    });


    $(window).scroll(function() {
        if ($('.w-ajax-loader-page').length>0) {
            if ($(window).scrollTop() + $(window).height() >= $(document).height() - 2000 && !inProgress) {
                inProgress = true;
                $.ajax({
                    url: $('#input-sort option:selected').val()+'&srol=1'+'&page='+startFrom,
                    type: 'get',
                    //data:  {"startFrom" : startFrom},
                    dataType: 'html',
                    beforeSend: function () {
                        //$('.container-loader').show();
                    },
                    complete: function () {
                        //$('.container-loader').hide();
                    },
                    success: function (json) {

                        if (json.length > 0) {
                            $ner = $(json);
                            $('.main-catalog-container table tbody').append($ner);
                            $ner.fadeIn("slow");
                            inProgress = false;
                            startFrom += 1;
                        } else {
                            //inProgress = true;
                            startFrom = 1;
                        }
                    }
                });
            }
        }
    });



    $('.stack-responsive').stacktable();


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


        $('.w-form-cart-sub').submit();

    });

    $(".mobile-menu-btn").click(function(){
        $(".mobile-menu").toggleClass("open");
    });


    $('.bxslider').slick({
        infinite: true,
        autoplaySpeed: 5000,
        autoplay: true,
        prevArrow: '<a href="#" class="bx-prev"></a>',
        nextArrow: '<a href="#" class="bx-next"></a>',
        slidesToShow: 2,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1025,
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
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }
        ]
    });

    $('.bxslider-blog').show();

    $('.bxslider-blog').slick({
        infinite: true,
        prevArrow: '<div class="blog-control-prev"><a class="bx-prev" href="">Prev</a></div>',
        nextArrow: '<div class="blog-control-next"><a class="bx-next" href="">Next</a></div>',
        slidesToShow: 4,
        slidesToScroll: 1,
        responsive: [
            {
                breakpoint: 1025,
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
                    slidesToShow: 2,
                    slidesToScroll: 1
                }
            }
        ]
    });

    $('.w-right-home-top-slider').show();


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
        $(this).toggleClass('active');
        $collapse.collapse('toggle');
    });

    $('.collapse').on('show.bs.collapse', function () {
        $('.w-more-info span').text('less info');

    });

    $('.collapse').on('hide.bs.collapse', function () {
        $('.w-more-info span').text('more info');
    });

    // //пагинация ajax
    // $(document).on('click', '.w-pagination-product .pagination a', function(){
    //     $('html, body').animate({ scrollTop: 700 }, 'slow');
    //     input_sort (this.href);
    //     return false;
    // });



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

    if ($('*').is(".w-option-size")) {
        //if ($("select option:selected").val()) {
        if (true) {

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

                    if ($.cookie('CanaryDiamontCom') != null || $.cookie('CanaryProductComGemstonToRing')) {
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

    } else {

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

                if ($.cookie('CanaryDiamontCom') != null || $.cookie('CanaryProductComGemstonToRing')) {
                    window.location.href = '/complete_diamond';
                } else {
                    window.location.href = '/diamonds';
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {

            }
        });
    }


});


//добавить в complect Add a Gemstone
$(document).on('click', '#w-button-add-product-complect-add-gemstones', function(){

    var $this = $(this);

    var $select = $('#product select');
    var data = $('#product select, #product input[name=\'product_id\'], #product input[type=\'radio\']:checked, #product input[type=\'checkbox\']:checked, #product select');
    $('.text-danger').detach();

    if ($('*').is(".w-option-size")) {

        // if ($("select option:selected").val()) {
        if (true) {

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
                        window.location.href = '/gemstones';
                    }

                },
                error: function (xhr, ajaxOptions, thrownError) {

                }
            });

        } else {

            $('.dropdown').after('<div class="text-danger">SIZE required!</div>');
        }

    } else {
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
                    window.location.href = '/gemstones';
                }

            },
            error: function (xhr, ajaxOptions, thrownError) {

            }
        });
    }


});


//добавить в complect gemstones
$(document).on('click', '#w-button-add-product-complect-gemstone-to-ring', function(){

    var $this = $(this);

    $.ajax({
        url: '/index.php?route=module/complect/add_product_complect',
        type: 'post',
        data: {gemston_to_ring: 1, product_id: $('#product input[name=\'product_id\']').val()},
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


            if ($.cookie('CanaryProductCom') != null) {
                window.location.href = '/complete_diamond';
            } else {
                window.location.href = '/engagement-rings';
            }

        },
        error: function (xhr, ajaxOptions, thrownError) {

        }
    });


});


$(document).on('click', '#w-button-add-product-complect-gemstone-to-pendant', function(){

    var $this = $(this);

    $.ajax({
        url: '/index.php?route=module/complect/add_product_complect',
        type: 'post',
        data: {gemston_to_ring: 1, product_id: $('#product input[name=\'product_id\']').val()},
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


            if ($.cookie('CanaryProductCom') != null) {
                window.location.href = '/complete_diamond';
            } else {
                window.location.href = '/fine-jewelry/diamond_pendants';
            }

        },
        error: function (xhr, ajaxOptions, thrownError) {

        }
    });


});



//to a rings
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

//to a pendant
$(document).on('click', '#w-button-add-diamond-complect-to-pendant', function(){

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
                window.location.href = '/fine-jewelry/diamond_pendants';
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



$(document).mouseup(function (e) {
    if ($('.cart-basket').is(":visible")) {
        var container = $("#w-but-cart, .cart-basket");
        if (container.has(e.target).length === 0) {
            //container.hide();
            container.trigger('click');
        }
    }
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
        var mw = $("#horizontal").width() - 65;
        var i = -1;
        var menuhtml = '';
        var flag_more = false;
        jQuery.each($("#horizontal").children('li'), function() {
            i++;
            w += $(this).outerWidth(true) +5;
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
                + '<span style="font-size:13px"><i class="fa fa-angle-down" aria-hidden="true"></i></span>'
                + '</a><ul class="w-top-children-menu">' + menuhtml + '</ul></li>');
            $("#horizontal li.hideshow ul").css("top", "40px");
            $("#horizontal li.hideshow").hover(function () {
                $(this).children("ul.w-top-children-menu").toggle();
            }, function () {
                $(this).children("ul.w-top-children-menu").toggle();
            });
        }

    }
});






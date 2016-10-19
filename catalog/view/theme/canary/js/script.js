
$(window).load(function(){
    if (device.mobile()===true){
        $("head").append('<link rel="stylesheet" href="/catalog/view/theme/canary/css/mobile.css"/>');
        $(".faq-list li").click(function(e){
            e.preventDefault();
            if ($(this).hasClass('active')){
                $(this).removeClass("active");
            } else {
                $(".faq-list li").removeClass('active');
                $(this).addClass("active");
            }
        });
    } else{
        $("head").append('<meta name="viewport" content="width=980"><link rel="stylesheet" href="/catalog/view/theme/canary/css/desktop.css"/>');
    }
});

$( document ).ready(function( $ ) {


    if ($('.styled-select').length) {
        $('.styled-select').select2({
            minimumResultsForSearch: Infinity
        });
    }

    $(".fine-link").click(function(e){
        e.preventDefault();
        $(".fine-tab").removeClass('active');
        $($(this).attr('data-target')).addClass('active');
        $(".fine-link").removeClass("active");
        $(this).addClass("active");
    });
    $(".sapphires-link").click(function(e){
        e.preventDefault();
        var th=$(this).closest('.sapphires-tab-box');
        th.find(".one-sapphires").hide();
        $($(this).attr('data-target')).show();
        th.find(".sapphires-link").removeClass("active");
        $(this).addClass("active");
    });
    $(".ideal-cut").click(function(e){
        e.preventDefault();
        var th=$(this).closest('.sapphires-tab-box');
        th.find(".one-ideal-cut").hide();
        $($(this).attr('data-target')).show();
        th.find(".ideal-cut").removeClass("active");
        $(this).addClass("active");

    });
    $(".grading").click(function(e){
        e.preventDefault();
        var th=$(this).closest('.sapphires-tab-box');
        th.find(".one-grading").hide();
        $($(this).attr('data-target')).show();
        th.find(".grading").removeClass("active");
        $(this).addClass("active");
    });
    $(".choose-perfect").click(function(e){
        e.preventDefault();
        var th=$(this).closest('.sapphires-tab-box');
        th.find(".one-choose-perfect").hide();
        $($(this).attr('data-target')).show();
        th.find(".choose-perfect ").removeClass("active");
        $(this).addClass("active");
    });

    $('.question-filter-btn').popover();

    $(".fancy-color").click(function(e){
        e.preventDefault();
        var th=$(this).closest('.sapphires-tab-box');
        th.find(".one-fancy-color").hide();
        $($(this).attr('data-target')).show();
        th.find(".fancy-color").removeClass("active");
        $(this).addClass("active");
    });
    $(".gender .one-block").click(function() {
        $(".gender .one-block").removeClass("active");
        $(this).addClass("active");
    });


    $(document).on('click', '.view-product .btn-view', function() {
        $(".view-product .btn-view").removeClass("active");
        $(this).addClass("active");
    });

    $(".box-color li").click(function() {
        $(".box-color li").removeClass("active");
        $(this).addClass("active");
    });

    $(document).on('click', '.list-btn', function() {
        $(".wrapper-product-table").removeClass("th-view").addClass("list-view");
    });

    $(document).on('click', '.th-btn', function() {
        $(".wrapper-product-table").removeClass("list-view").addClass("th-view");
    });

    $(".cart-bl > a").click(function() {
        $(".cart-bl").addClass("open");
    });

    $(".fancy-btn").click(function() {
        $(".fancy-box").addClass("open");
    });



    $(".menu-l-open").click(function() {
        $(".static-page").toggleClass("open");
    });

    $(document).on('click', '.close-cart-main', function() {
        $(".cart-bl").removeClass("open");
    });

    $(".close-fancy").click(function() {
        $(".fancy-box").removeClass("open");
    });

    $(document).on('click', '.filter-change', function() {

        $(".wrapper-filter-close").slideToggle(500, function(){
            $(".filter-box").toggleClass('open');
        });

    });

    $(".product-p-5 label.btn-filter").click(function(){
        $(".product-p-5 label.btn-filter").removeClass('active');
    });


    $(".filter-advanced").click(function() {
        $(".filter-advanced-wrapper").toggleClass("open");
    });

    $(".dropdown-b > a").mouseenter(function() {
        $(this).parent().addClass("open");
        $(this).parent().find(".dropdown-inside").show();

        $(this).parent().mouseleave(function(){
            $(this).removeClass("open");
            $(this).find(".dropdown-inside").hide();
        });
    });

    $(".btn-view").tooltip();
    $(".btn-box > *").tooltip();


    //close-cart-main
    $("#owl-demo").owlCarousel({
        loop:true,
        margin:30,
        autoplay:5000,
        responsive:{
            0:{
                items:4
            },
            1300:{
                items:5
            },
            1600:{
                items:5
            }
        }
    });
    $("#owl-demo3").owlCarousel({
        loop:true,
        margin:30,
        autoplay:5000,
        responsive:{
            0:{
                items:4
            },
            1300:{
                items:5
            },
            1600:{
                items:5
            }
        }
    });



    $(".filter-default-result").click(function() {

        $("#w-slider-color").slider('values',[0,10]);
        $("#w-slider-clarity").slider('values',[0,8]);
        $("#w-slider-cut").slider('values',[0,4]);

        $("#w-slider-carat").slider('values',[0.25,15]);
        $('.w-input-carat-from').val(0.25);
        $('.w-input-carat-to').val(15);

        $("#w-slider-price").slider('values',[200,990000]);

        $("#w-slider-polish").slider('values',[0,4]);
        $("#w-slider-symmetry").slider('values',[0,4]);
        $("#w-slider-depth").slider('values',[45,80]);
        $("#w-slider-table").slider('values',[50,83]);

    });







});

//$('.slider-for').on('init', function(event, slick){
//    console.log(slick);
//    var video = document.getElementsByClassName('myVideo');
//    video.play();
//});


//slider product
function Productslider () {

    //var video = document.getElementsByClassName('myVideo');

    $('.slider-for').on('init', function(event, slick){
        if ($('video').hasClass('myVideo')) {
            $('.myVideo').get(0).play();
        }
    });


    $('.slider-for').on('afterChange', function(event, slick, currentSlide){
        if ($('video').hasClass('myVideo')) {
            $('.myVideo').get(0).play();
        }
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'

    });


    $('.slider-nav').slick({
        slidesToShow: 5,
        slidesToScroll: 1,
        asNavFor: '.slider-for',
        dots: false,
        focusOnSelect: true,
        responsive: [
            {
                breakpoint: 768,
                settings: {
                    slidesToShow: 4,
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


    $('.owl-product').owlCarousel({
        loop:true,
        margin:100,
        responsiveClass:true,
        responsive:{
            0:{
                items:1,
                nav:true
            },
            600:{
                items:3,
                nav:false
            },
            1000:{
                items:4,
                nav:true
            }
        }
    });

}

Productslider ();

function changePrice(price){
    var lng=String(price).length;
    var v1=String(price).substr(0,1);
    var v2=String(price).substr(-(lng-1));
    var now_price=v1+'.'+v2;
    return now_price;
}
//mobile login tabs
$(document).on('click', '.mobile-login-tab-btn', function(e) {
    e.preventDefault();
    var item = $(this),
        target = item.attr('href');

    $('.mobile-login-tab-btn').removeClass('active');
    $('.form-side').removeClass('active');
    item.addClass('active');
    $(target).addClass('active');
});


(function(){
    $(document).on('click', '.select-simulate-btn, .select-simulate-input', function(e) {
        e.preventDefault();
        $(this).parent().find('.select-simulate-btn').toggleClass('active');
        $(this).siblings('.select-simulate-list').find('.has-sub').removeClass('active');
        $(this).siblings('.select-simulate-list').find('.active-list').removeClass('active-list');
        $(this).siblings('.select-simulate-list').removeClass('sub-open');
    });

    $(document).on('click', '.select-simulate-list a', function(e) {
        var item = $(this),
            itemValue = item.attr('data-value'),
            itemLinkAllow = item.attr('data-link-allow') ? item.attr('data-link-allow') : false;

        if (!item.hasClass('has-sub')) {
            item.closest('.select-simulate-list').siblings('.select-simulate-input').val(itemValue);
            item.closest('.select-simulate-list').siblings('.select-simulate-btn').removeClass('active');
        } else {
            if (!item.hasClass('active')) {
                $('.select-simulate-list a').removeClass('active');
                item.addClass('active');
                item.siblings('ul').addClass('active-list');

                if (!$('.select-simulate-list').hasClass('sub-open')) {
                    $('.select-simulate-list').addClass('sub-open');
                }
            } else {
                item.removeClass('active');
                item.siblings('ul').removeClass('active-list');
                item.closest('ul').siblings('.has-sub').addClass('active');
                if (item.closest('ul').hasClass('select-simulate-list')) {
                    $('.select-simulate-list').removeClass('sub-open');
                }
            }

        }
        if (!itemLinkAllow) e.preventDefault();
    });
})();


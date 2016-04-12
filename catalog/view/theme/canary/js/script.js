
$(window).load(function(){
    if (device.mobile()===true){
        $("head").append('<link rel="stylesheet" href="css/mobile.css"/>');
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
        $("head").append('<meta name="viewport" content="width=980"><link rel="stylesheet" href="css/desktop.css"/>');
    }
});

$( document ).ready(function( $ ) {

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
    $(".filter-drop-drop .btn-filter").click(function() {
        $(this).toggleClass("active");
    });
    $(".view-product .btn-view").click(function() {
        $(".view-product .btn-view").removeClass("active");
        $(this).addClass("active");
    });
    $(".box-color li").click(function() {
        $(".box-color li").removeClass("active");
        $(this).addClass("active");
    });
    $(".list-btn").click(function() {
        $(".wrapper-product-table").removeClass("th-view").addClass("list-view");
    });
    $(".th-btn").click(function() {
        $(".wrapper-product-table").removeClass("list-view").addClass("th-view");
    });

    $(".cart-bl > a").click(function() {
        $(".cart-bl").addClass("open");
    });

    $(".fancy-btn").click(function() {
        $(".fancy-box").addClass("open");
    });

    $(".step-product .one-block").click(function(e) {
        e.preventDefault();
        $(".step-product .one-block").removeClass("active");
        $(this).addClass("active");
    });

    $(".menu-l-open").click(function() {
        $(".static-page").toggleClass("open");
    });

    $(".close-cart-main").click(function() {
        $(".cart-bl").removeClass("open");
    });

    $(".close-fancy").click(function() {
        $(".fancy-box").removeClass("open");
    });

    $(".filter-change").click(function() {
        var th=$(".filter-wrapper");
        var speed=500;
        if ($(".filter-box").hasClass('open')){
            th.slideDown(speed);
            setTimeout(function(){
                $(".filter-box").removeClass('open');
            }, speed);
        } else {
            th.slideUp(speed);
            setTimeout(function(){
                $(".filter-box").addClass('open');
            }, speed);
        }
    });

    $(".product-p-5 label.btn-filter").click(function(){
        $(".product-p-5 label.btn-filter").removeClass('active');
    });


    $(".filter-advanced").click(function() {
        $(".filter-advanced-wrapper").toggleClass("open");
    });

    $(".dropdown-b > a").mouseenter(function() {
        $(this).parent().addClass("open");

        $(this).parent().mouseleave(function(){
            $(this).removeClass("open");
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

    $( "#slider-range" ).slider({
        range: true,
        min: 0,
        max: 8,
        values: [ 0, 8 ]
    });

    $( "#slider-range2" ).slider({
        range: true,
        min: 0,
        max: 8,
        values: [ 0, 8 ]
    });

    $( "#slider-range3" ).slider({
        range: true,
        min: 0,
        max: 4,
        values: [ 0, 4 ]
    });

    $( "#polish" ).slider({
        range: true,
        min: 0,
        max: 4,
        values: [ 0, 4 ],
        slide: function (event, ui) {
            if (Number(ui.values[0])!=0||Number(ui.values[1])!=4){
                $("[data-target=polish-slider]").addClass('change');
            } else {
                $("[data-target=polish-slider]").removeClass('change');
            }
        }
    });

    $( "#symmetry" ).slider({
        range: true,
        min: 0,
        max: 4,
        values: [ 0, 4 ],
        slide: function (event, ui) {
            if (Number(ui.values[0])!=0||Number(ui.values[1])!=4){
                $("[data-target=symmetry-slider]").addClass('change');
            } else {
                $("[data-target=symmetry-slider]").removeClass('change');
            }
        }
    });

    $( "#depth" ).slider({
        range: true,
        min: 0,
        max: 4,
        values: [ 0, 4 ],
        slide: function (event, ui) {
            if (Number(ui.values[0])!=0||Number(ui.values[1])!=4){
                $("[data-target=depth-slider]").addClass('change');
            } else {
                $("[data-target=depth-slider]").removeClass('change');
            }
        }
    });

    $( "#table" ).slider({
        range: true,
        min: 0,
        max: 4,
        values: [ 0, 4 ],
        slide: function (event, ui) {
            if (Number(ui.values[0])!=0||Number(ui.values[1])!=4){
                $("[data-target=table-slider]").addClass('change');
            } else {
                $("[data-target=table-slider]").removeClass('change');
            }
        }
    });

    $("#slider-range4").slider({
        range: true,
        min: 2,
        max: 5,
        values: [2, 5],
        slide: function (event, ui) {
            $("#amountCarat1").val(ui.values[0]);
            $("#amountCarat2").val(ui.values[1]);
        }
    });
    $("#amountCarat1").val($("#slider-range4").slider("values", 0));
    $("#amountCarat2").val($("#slider-range4").slider("values", 1));

    $("#slider-range5").slider({
        range: true,
        min: 1000,
        max: 5000,
        step: 1,
        values: [1000, 5000],
        slide: function (event, ui) {
            $("#amountPrice1").val(changePrice(ui.values[0]) + "$");
            $("#amountPrice2").val(changePrice(ui.values[1]) + "$");
        }
    });
    $("#amountPrice1").val("1.000$");
    $("#amountPrice2").val("5.000$");

    $(".filter-default-result").click(function() {
        $("#slider-range").slider('values',0,0);
        $("#slider-range").slider('values',1,8);
        $("#slider-range2").slider('values',0,0);
        $("#slider-range2").slider('values',1,8);
        $("#slider-range3").slider('values',0,0);
        $("#slider-range3").slider('values',1,4);
        $("#slider-range4").slider('values',0,2);
        $("#slider-range4").slider('values',1,5);
        $("#slider-range5").slider('values',0,1000);
        $("#slider-range5").slider('values',1,5000);
        $("#amountPrice1").val("1.000$");
        $("#amountPrice2").val("5.000$");
        $("#polish").slider('values',0,0);
        $("#polish").slider('values',1,4);
        $("#symmetry").slider('values',0,0);
        $("#symmetry").slider('values',1,4);
        $("#table").slider('values',0,0);
        $("#table").slider('values',1,4);
        $("#depth").slider('values',0,0);
        $("#depth").slider('values',1,4);
    });

    $(".filter-drop-drop div").click(function(){
        //$(this).toggleClass("active");
        var th=$(this);
       setTimeout(function(){
           if (th.closest('.filter-drop-drop').find('.active').attr('class')!=undefined){
               th.closest('li').addClass('change');
           } else {
               th.closest('li').removeClass('change');
           }
       }, 100);
    });

    $('.slider-for').slick({
        slidesToShow: 1,
        slidesToScroll: 1,
        arrows: false,
        fade: true,
        asNavFor: '.slider-nav'
    });
    $('.slider-nav').slick({
        slidesToShow: 7,
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
    })

});

function changePrice(price){
    var lng=String(price).length;
    var v1=String(price).substr(0,1);
    var v2=String(price).substr(-(lng-1));
    var now_price=v1+'.'+v2;
    return now_price;
}
//mobile login tabs
$('.mobile-login-tab-btn').on('click', function(e) {
    e.preventDefault();
    var item = $(this),
        target = item.attr('href');

    $('.mobile-login-tab-btn').removeClass('active');
    $('.form-side').removeClass('active');
    item.addClass('active');
    $(target).addClass('active');
});

(function(){
    $('.select-simulate-btn, .select-simulate-input').on('click', function(e) {
        e.preventDefault();
        $(this).parent().find('.select-simulate-btn').toggleClass('active');
        $(this).siblings('.select-simulate-list').find('.has-sub').removeClass('active');
        $(this).siblings('.select-simulate-list').find('.active-list').removeClass('active-list');
        $(this).siblings('.select-simulate-list').removeClass('sub-open');
    });

    $('.select-simulate-list a').on('click', function(e) {
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
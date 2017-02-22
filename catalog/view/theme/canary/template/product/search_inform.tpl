<?php echo isset($header) ? $header : ''; ?>



<main class="w-general-container">
    <div class="margin-buttom-30 w-bredcrum-border">
        <div class="center-bl">
            <div class="row">
                <div class="col-md-5 col-sm-5 hidden-xs ">
                    <ul class="breadcrumbs">
                        <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                        <?if (!empty($breadcrumb['href'])):?>
                        <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                        <?else:?>
                        <li><?php echo $breadcrumb['text']; ?></li>
                        <?endif?>
                        <li>&nbsp;»&nbsp;</li>
                        <?php } ?>
                    </ul>
                </div>
                <div class="col-md-7 col-sm-7 col-xs-12 padding-0">
                    <a href="<?=get_baners_top_random()[1]?>"><img src="<?=get_baners_top_random()[0]?>" class="bread-baner" ></a>
                </div>
            </div>
        </div>
    </div>
    <input type="hidden" class="w-action_page" value="<?php echo $action_page?>">
    <section class="static-page">


        <div class="center-bl">

            <?php echo $content_top; ?>


        </div>

        <div class="list-product w-category-ajax">

            <?php if ($search_information) :?>

                <div class="center-bl clearfix">
                    <div class="row form-static w-page-search">
                        <ul class="media-list">
                            <?foreach ($search_information as $row):?>
                                <li class="media">
                                    <div class="media-body">
                                        <a href="<?=$row['href']?>"><h4 class="media-heading"><b style="color: #2F4680;"><?=$row['title']?></b></h4></a>
                                        <a href="<?=$row['href']?>">
                                            <?=text::limit_chars(strip_tags($row['meta_description']), 160 , null, true)?>
                                        </a>
                                    </div>
                                    <hr>
                                </li>
                            <?endforeach?>
                        </ul>
                    </div>
                </div>


            <?else:?>
                <div class="center-bl clearfix">
                    <div class="row form-static w-page-search">
                        <div class="col-md-10 col-sm-9 col-xs-12">
                            <div class="form-group">
                                <input type="text" class="form-control" name="search" placeholder="Search">
                            </div>
                        </div>
                        <div class="col-md-2 col-xs-12 col-sm-3 text-center">
                            <button class="btn w-btn-orange2">SEARCH</button>
                        </div>
                    </div>
                    <p><?php echo $text_empty; ?></p>
                </div>
            <?endif?>




        </div>

    </section>
</main>














<script type="text/javascript">
$('#button-search').on('click', function() {

	url = '/search';

	var search = $('#content input[name=\'search\']').prop('value');

	if (search) {
		url += '?search=' + encodeURIComponent(search);
	}

	var category_id = $('#content select[name=\'category_id\']').prop('value');

	if (category_id > 0) {
		url += '&category_id=' + encodeURIComponent(category_id);
	}

	var sub_category = $('#content input[name=\'sub_category\']:checked').prop('value');

	if (sub_category) {
		url += '&sub_category=true';
	}

	var filter_description = $('#content input[name=\'description\']:checked').prop('value');

	if (filter_description) {
		url += '&description=true';
	}

	location = url;
});

$('#content input[name=\'search\']').bind('keydown', function(e) {
	if (e.keyCode == 13) {
		$('#button-search').trigger('click');
	}
});

$('select[name=\'category_id\']').on('change', function() {
	if (this.value == '0') {
		$('input[name=\'sub_category\']').prop('disabled', true);
	} else {
		$('input[name=\'sub_category\']').prop('disabled', false);
	}
});

$('select[name=\'category_id\']').trigger('change');
</script>
<?php echo isset($footer) ? $footer : ''; ?>
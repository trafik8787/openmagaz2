<div class="panel panel-default">
  <div class="panel-heading"><?php echo $heading_title; ?></div>
  <div class="list-group">
    <?php foreach ($filter_groups as $filter_group) { ?>
    <a class="list-group-item"><?php echo $filter_group['name']; ?></a>
    <div class="list-group-item">
      <div id="filter-group<?php echo $filter_group['filter_group_id']; ?>">
        <?php foreach ($filter_group['filter'] as $filter) { ?>
        <div class="checkbox">
          <label>
            <?php if (in_array($filter['filter_id'], $filter_category)) { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" checked="checked" />
            <?php echo $filter['name']; ?>
            <?php } else { ?>
            <input type="checkbox" name="filter[]" value="<?php echo $filter['filter_id']; ?>" />
            <?php echo $filter['name']; ?>
            <?php } ?>
          </label>
        </div>
        <?php } ?>
      </div>
    </div>
    <?php } ?>
  </div>
  <div class="panel-footer text-right">
    <button type="button" id="button-filter" class="btn btn-primary"><?php echo $button_filter; ?></button>
  </div>
</div>
<script type="text/javascript"><!--
$('#button-filter').on('click', function() {
	filter = [];

	$('input[name^=\'filter\']:checked').each(function(element) {
		filter.push(this.value);
	});

	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});


$('input[name^=\'filter\']').on('change', function(){

      filter= [];
      $('input[name^=\'filter\']:checked').each(function(element) {
        filter.push(this.value);
      });

      var action = '<?php echo $action; ?>';
      redirect = action+'&filter=' + filter.join(',');
      history.pushState('', '', redirect);


    $('.container-loader').show();

    $.ajax({ // описываем наш запрос
      type: "GET", // будем передавать данные через POST
      dataType: "HTML", // указываем, что нам вернется JSON
      url: redirect,
      data: '&filter=' + filter.join(','), // передаем данные из формы
      success: function(response) { // когда получаем ответ
        console.log(response);

        $('.w-category-ajax').empty();
        $('.w-category-ajax').html(response);
        $('.container-loader').hide();


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
          $('#list-view').on('click', function() {
              $('#content .product-grid > .clearfix').remove();

              //$('#content .product-layout').attr('class', 'product-layout product-list col-xs-12');
              $('#content .row > .product-grid').attr('class', 'product-layout product-list col-xs-12');

              localStorage.setItem('display', 'list');
          });

          // Product Grid
          $('#grid-view').on('click', function() {
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
    });





});








//--></script>

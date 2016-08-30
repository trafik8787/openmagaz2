<?php echo $header; ?><?php echo $column_left; ?>
<div id="content">
    <div class="page-header">
        <div class="container-fluid">
            <div class="pull-right">
                <button type="button" data-toggle="tooltip" title="<?php echo $button_delete; ?>" class="btn btn-danger" onclick="confirm('<?php echo $text_confirm; ?>') ? $('#form-affiliate').submit() : false;"><i class="fa fa-trash-o"></i></button>
            </div>
            <h1><?php echo $heading_title; ?></h1>
            <ul class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
                <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
                <?php } ?>
            </ul>
        </div>
    </div>
    <div class="container-fluid">
        <?php if ($error_warning) { ?>
        <div class="alert alert-danger"><i class="fa fa-exclamation-circle"></i> <?php echo $error_warning; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <?php if ($success) { ?>
        <div class="alert alert-success"><i class="fa fa-check-circle"></i> <?php echo $success; ?>
            <button type="button" class="close" data-dismiss="alert">&times;</button>
        </div>
        <?php } ?>
        <div class="panel panel-default">
            <div class="panel-heading">
                <h3 class="panel-title"><i class="fa fa-list"></i> <?php echo $text_list; ?></h3>
            </div>
            <div class="panel-body">
                <div class="well">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-email"><?php echo $entry_email; ?></label>
                                <input type="text" name="filter_email" value="<?php echo $filter_email; ?>" placeholder="<?php echo $entry_email; ?>" id="input-email" class="form-control" />
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-status"><?php echo $entry_status; ?></label>
                                <select name="filter_status" id="input-status" class="form-control">
                                    <option value="*"></option>
                                    <?php if ($filter_status) { ?>
                                    <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                                    <?php } else { ?>
                                    <option value="1"><?php echo $text_enabled; ?></option>
                                    <?php } ?>
                                    <?php if (!$filter_status && !is_null($filter_status)) { ?>
                                    <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                                    <?php } else { ?>
                                    <option value="0"><?php echo $text_disabled; ?></option>
                                    <?php } ?>
                                </select>
                            </div>

                        </div>
                        <div class="col-sm-4">
                            <div class="form-group">
                                <label class="control-label" for="input-date-added"><?php echo $entry_create_date; ?></label>
                                <div class="input-group date">
                                    <input type="text" name="filter_create_date" value="<?php echo $filter_create_date; ?>" placeholder="<?php echo $entry_create_date; ?>" data-date-format="YYYY-MM-DD" id="input-date-added" class="form-control" />
                                    <span class="input-group-btn">
                  <button type="button" class="btn btn-default"><i class="fa fa-calendar"></i></button>
                  </span></div>
                            </div>
                            <div class="form-group">
                                <button type="button" id="button-filter" class="btn btn-primary pull-right"><i class="fa fa-search"></i> <?php echo $button_filter; ?></button>
                            </div>
                        </div>
                    </div>
                </div>
                <form action="<?php echo $delete; ?>" method="post" enctype="multipart/form-data" id="form-affiliate">
                    <div class="table-responsive">
                        <table class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <td style="width: 1px;" class="text-center"><input type="checkbox" onclick="$('input[name*=\'selected\']').prop('checked', this.checked);" /></td>

                                <td class="text-left"><?php if ($sort == 'email') { ?>
                                    <a href="<?php echo $sort_email; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_email; ?></a>
                                    <?php } else { ?>
                                    <a href="<?php echo $sort_email; ?>"><?php echo $column_email; ?></a>
                                    <?php } ?></td>
                                <td class="text-left"><?php if ($sort == 'status') { ?>
                                    <a href="<?php echo $sort_status; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_status; ?></a>
                                    <?php } else { ?>
                                    <a href="<?php echo $sort_status; ?>"><?php echo $column_status; ?></a>
                                    <?php } ?></td>
                                <td class="text-left"><?php if ($sort == 'create_date') { ?>
                                    <a href="<?php echo $sort_create_date; ?>" class="<?php echo strtolower($order); ?>"><?php echo $column_create_date; ?></a>
                                    <?php } else { ?>
                                    <a href="<?php echo $sort_create_date; ?>"><?php echo $column_create_date; ?></a>
                                    <?php } ?></td>
                                <td class="text-left">
                                    <?php echo $column_ip; ?>
                                </td>
                                <td class="text-right"><?php echo $column_action; ?></td>
                            </tr>
                            </thead>
                            <tbody>
                            <?php if ($affiliates) { ?>
                            <?php foreach ($affiliates as $affiliate) { ?>
                            <tr>
                                <td class="text-center"><?php if (in_array($affiliate['id'], $selected)) { ?>
                                    <input type="checkbox" name="selected[]" value="<?php echo $affiliate['id']; ?>" checked="checked" />
                                    <?php } else { ?>
                                    <input type="checkbox" name="selected[]" value="<?php echo $affiliate['id']; ?>" />
                                    <?php } ?></td>

                                <td class="text-left"><?php echo $affiliate['email']; ?></td>
                                <td class="text-left"><?php echo $affiliate['status']; ?></td>
                                <td class="text-left"><?php echo $affiliate['create_date']; ?></td>
                                <td class="text-left"><?php echo $affiliate['ip']; ?></td>
                                <td class="text-right">
                                    <!--*<?php if ($affiliate['unlock']) { ; ?>*-->
                                    <!--*<a href="<?php echo $affiliate['unlock']; ?>" data-toggle="tooltip" title="<?php echo $button_unlock; ?>" class="btn btn-warning"><i class="fa fa-unlock"></i></a>*-->
                                    <!--*<?php } else { ?>*-->
                                    <!--*<button type="button" class="btn btn-warning" disabled><i class="fa fa-unlock"></i></button>*-->
                                    <!--*<?php } ?>*-->

                                </td>
                            </tr>
                            <?php } ?>
                            <?php } else { ?>
                            <tr>
                                <td class="text-center" colspan="7"><?php echo $text_no_results; ?></td>
                            </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                </form>
                <div class="row">
                    <div class="col-sm-6 text-left"><?php echo $pagination; ?></div>
                    <div class="col-sm-6 text-right"><?php echo $results; ?></div>
                </div>
            </div>
        </div>
    </div>
    <script type="text/javascript"><!--
        $('#button-filter').on('click', function() {
            url = 'index.php?route=marketing/affiliate&token=<?php echo $token; ?>';


            var filter_email = $('input[name=\'filter_email\']').val();

            if (filter_email) {
                url += '&filter_email=' + encodeURIComponent(filter_email);
            }

            var filter_status = $('select[name=\'filter_status\']').val();

            if (filter_status != '*') {
                url += '&filter_status=' + encodeURIComponent(filter_status);
            }

            var filter_create_date = $('input[name=\'filter_create_date\']').val();

            if (filter_create_date) {
                url += '&filter_create_date=' + encodeURIComponent(filter_create_date);
            }

            location = url;
        });
        //--></script>

    <script type="text/javascript"><!--
        $('.date').datetimepicker({
            pickTime: false
        });
        //--></script></div>
<?php echo $footer; ?>

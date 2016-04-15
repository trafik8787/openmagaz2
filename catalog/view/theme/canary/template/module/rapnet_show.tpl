
<?if (!empty($data_error)):?>
    <?=$data_error?>
<?else:?>
<?//dd($data)?>
    <div class="filter-product-line">
        <div class="center-bl clearfix">
            <div class="pull-left left-drop-f">
                <span>Sort By:</span>
                <li class="dropdown">
                    <input type="text" class="shipping-input select-simulate-input" id="sort1" required>
                    <label for="sort1" class="shipping-label">Default</label>
                    <a href="#" class="select-simulate-btn"></a>
                    <ul class="select-simulate-list">
                        <li><a href="#" data-value="Default">Default</a></li>
                        <li><a href="#" data-value="Sort 1">Sort 1</a></li>
                        <li><a href="#" data-value="Sort 2">Sort 2</a></li>
                    </ul>
                </li>
                <span>Product compare (0)</span>
            </div>

            <div class="view-product">
                <button class="list-btn btn-view" data-toggle="tooltip" data-placement="top" title="list"><i class="fa fa-list"></i></button>
                <button class="th-btn btn-view active" data-toggle="tooltip" data-placement="top" title="block"><i class="fa fa-th"></i></button>
            </div>
            <div class="show-b">
                <span>Show:</span>
                <li class="dropdown">
                    <input type="text" class="shipping-input select-simulate-input" id="sort2" required>
                    <label for="sort2" class="shipping-label">10</label>
                    <a href="#" class="select-simulate-btn"></a>
                    <ul class="select-simulate-list">
                        <li><a href="#" data-value="10">10</a></li>
                        <li><a href="#" data-value="20">20</a></li>
                        <li><a href="#" data-value="30">30</a></li>
                    </ul>
                </li>
            </div>
        </div>
    </div>

    <div class="wrapper-product-table th-view">
        <table class="table">
            <thead>
            <tr>
                <th>Actual photo</th>
                <th>Share</th>
                <th>Carat</th>
                <th>Clatity</th>
                <th>Cut</th>
                <th>Depth</th>
                <th>Table</th>
                <th>Lab</th>
                <th>Origin</th>
                <th>Price</th>
                <th>Compare</th>
                <th>Wishlist</th>
            </tr>
            </thead>
            <tbody>

                <?php foreach ($data as $row):?>

                    <tr>
                        <td>
                            <div class="product-item">
                                <div class="box-img">
                                    <a href="/diamond_page?diamond_id=<?=$row->diamond_id?>"><img src="<?=imageDiamont($row->shape)?>" width="150" alt="img"></a>
                                </div>
                                <div class="rating">
                                    <i class="star active"></i>
                                    <i class="star active"></i>
                                    <i class="star active"></i>
                                    <i class="star active"></i>
                                    <i class="star"></i>
                                </div>
                                <div class="btn-box">
                                    <a href="#" class="cart-btn-item" data-toggle="tooltip" data-placement="top" title="add to wishlist"></a>
                                    <a href="#" class="compare-btn-item" data-toggle="tooltip" data-placement="top" title="add to basket"></a>
                                    <a href="/diamond_page?diamond_id=<?=$row->diamond_id?>" class="search-btn-item" data-toggle="tooltip" data-placement="top" title="add to wishlist"></a>
                                    <a href="#" class="wishlist-btn-item" data-toggle="tooltip" data-placement="top" title="add to wishlist"></a>
                                </div>
                                <div class="box-tovar-th">
                                    <div class="name"><?=$row->shape?> <?=$row->size?> CARAT <?=$row->color?> <?=$row->clarity?></div>
                                    <span class="price"><?=$row->total_sales_price?>.00$</span>
                                    <!--<span class="discount"><?=$row->total_sales_price?>.00$</span>-->
                                </div>
                            </div>
                        </td>
                        <td data-th="Share"><?=$row->shape?></td>
                        <td data-th="Carat"><?=$row->size?></td>
                        <td data-th="Clatity"><?=$row->clarity?></td>
                        <td data-th="Cut"><?=$row->cut?></td>
                        <td data-th="Depth"><?=$row->depth_percent?></td>
                        <td data-th="Table"><?=$row->table_percent?></td>
                        <td data-th="Lab"><?=$row->lab?></td>
                        <td data-th="Origin">-</td>
                        <td data-th="Price"><div class="price"><?=$row->total_sales_price?>.00$</div></td>
                        <td><i class="fa fa-exchange"></i></td>
                        <td><i class="fa fa-heart"></i></td>
                    </tr>

                <?endforeach?>

            </tbody>
        </table>
    </div>
    <div class="center-bl clearfix">

        <div class="w-pagination-diamonts text-center"><?=isset($pagination)? $pagination : ''?></div>

    </div>
<?endif?>


<?if (!empty($data_error)):?>
    <?=$data_error?>
<?else:?>
<?//dd($data)?>
    <div class="filter-product-line">
        <div class="center-bl clearfix">
            <div class="pull-left left-drop-f">
                <span>Sort By:</span>
                <select name="sortby" id="w-product-sortby">
                    <option value="size_Asc">Carat: low to high</option>
                    <option value="size_Desc">Carat: high to low</option>
                    <option value="Color_Asc">Color: low to high</option>
                    <option value="Color_Desc">Color: high to low</option>
                    <option value="Clarity_Asc">Clarity: low to high</option>
                    <option value="Clarity_Desc">Clarity: high to low</option>
                    <option value="Cut_Asc">Cut: low to high</option>
                    <option value="Cut_Desc">Cut: high to low</option>
                    <option selected value="Price_Asc">Price: low to high</option>
                    <option value="Price_Desc">Price: high to low</option>
                </select>
                <!--<span>Product compare (0)</span>-->
            </div>

            <div class="view-product">
                <button class="list-btn btn-view" data-toggle="tooltip" data-placement="top" title="list"><i class="fa fa-list"></i></button>
                <button class="th-btn btn-view active" data-toggle="tooltip" data-placement="top" title="block"><i class="fa fa-th"></i></button>
            </div>
            <div class="show-b">
                <span>Show:</span>
                <li class="dropdown">
                    <select name="show" id="w-product-show">
                        <option value="15">15</option>
                        <option value="25">25</option>
                        <option value="50">50</option>
                    </select>
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

<?php 
session_start();
$is_homepage = true;
require_once('components/header.php');
?>
   
    <!-- Categories Section Begin -->
    <section class="categories">
        <div class="container">
            <div class="row">
            <div class="section-title">
                        <h2>Danh mục sản phẩm</h2>
                    </div>
                <div class="categories__slider owl-carousel">
                <?php
                    $sql_str = "select * from categories order by name";
                    $result = mysqli_query($conn, $sql_str);
                    while ($row = mysqli_fetch_assoc($result)) {
                ?>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-1.jpg">
                            <h5><a href="#"><?=$row['name']?></a></h5>
                        </div>
                    </div>
                    <?php } ?>
                 <!--   <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-2.jpg">
                            <h5><a href="#">Dried Fruit</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-3.jpg">
                            <h5><a href="#">Vegetables</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-4.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="categories__item set-bg" data-setbg="img/categories/cat-5.jpg">
                            <h5><a href="#">drink fruits</a></h5>
                        </div>
                    </div> -->
                </div>
            </div>
        </div>
    </section>
    <!-- Categories Section End -->

    <!-- Featured Section Begin -->
    <section class="featured spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title">
                        <h2>Sản phẩm đặc trưng</h2>
                    </div>
                    <div class="featured__controls">
                        <ul>
                            <li class="active" data-filter="*">All</li>
                            <?php 
                            $sql_str = "select * from categories order by name";
                            $result = mysqli_query($conn, $sql_str);
                            while ($row = mysqli_fetch_assoc($result)) {
                            ?>
                            <li data-filter=".<?=$row['slug']?>"><?=$row['name']?></li>
                            <?php } ?>
                
                        </ul>
                    </div>
                </div>
            </div>
            <div class="row featured__filter">
            <?php 
                            $sql_str = "select products.name as pname, images, price, categories.slug as cslug from products, categories where products.category_id = categories.id;";
                            $result = mysqli_query($conn, $sql_str);
                            while ($row = mysqli_fetch_assoc($result)) {
                                $anh_arr = explode(";", $row['images']);
                            ?>
                <div class="col-lg-3 col-md-4 col-sm-6 mix <?=$row['cslug']?>">
                    <div class="featured__item">
                        <div class="featured__item__pic set-bg" data-setbg="<?="quantri/".$anh_arr[0]?>">
                            <ul class="featured__item__pic__hover">
                                <li><a href="#"><i class="fa fa-heart"></i></a></li>
                                <li><a href="#"><i class="fa fa-retweet"></i></a></li>
                                <li><a href="#"><i class="fa fa-shopping-cart"></i></a></li>
                            </ul>
                        </div>
                        <div class="featured__item__text">
                            <h6><a href="#"><?=$row['pname']?></a></h6>
                            <h5><?=$row['price']?></h5>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!-- Featured Section End -->

    

    <!-- Blog Section Begin -->
    <section class="from-blog spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="section-title from-blog__title">
                        <h2>Tin tức</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <?php
                $sql_str="select * from news order by created_at desc limit 0, 3";
                $result = mysqli_query($conn, $sql_str);
                while ($row = mysqli_fetch_assoc($result)) {

                ?>
                <div class="col-lg-4 col-md-4 col-sm-6">
                    <div class="blog__item">
                        <div class="blog__item__pic">
                            <img src="<?='quantri/'.$row['avatar']?>" alt="">
                        </div>
                        <div class="blog__item__text">
                            <ul>
                                <li><i class="fa fa-calendar-o"></i><?=$row['created_at']?></li>
                                <li><i class="fa fa-comment-o"></i> 5</li>
                            </ul>
                            <h5><a href="tintuc.php?id=<?=$row['id']?>"><?=$row['title']?></a></h5>
                            <p><?=$row['sumary']?></p>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
    </section>
    <!-- Blog Section End -->
<?php 
require_once('components/footer.php');
?>
   
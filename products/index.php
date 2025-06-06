<?php
$search = isset($_GET['search']) ? $_GET['search'] : '';
$brand_filter = isset($_GET['brand_filter']) ? explode(",",$_GET['brand_filter']) : 'all';
$category_filter = isset($_GET['category_filter']) ? explode(",",$_GET['category_filter']) : 'all';
?>

                   
            <div class="col-md-8 mt-3">
                <div class="row">
                    <div class="col-md-12">
                        <form action="" id="search_prod">
                            <div class="input-group">
                                <input type="search" name="search" value="<?= $search ?>" class="form-control" placeholder="Serach Product...">
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary"><i class="fa fa-search"></i></button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="row row-cols-sm-1 row-cols-md-2 row-cols-xl-3">
                    <?php 
                    $where="";
                    if(is_array($brand_filter)){
                        $where.=" and p.brand_id in (".(implode(',',$brand_filter)).") ";
                    }
                    if(is_array($category_filter)){
                        $where.=" and p.category_id in (".(implode(',',$category_filter)).") ";
                    }
                    if(!empty($search)){
                        $where.=" and (p.name LIKE '%{$search}%' or p.description LIKE '%{$search}%' or b.name LIKE '%{$search}%' or c.category LIKE '%{$search}%') ";
                    }
                        $products = $conn->query("SELECT p.*,b.name as brand, c.category FROM `product_list` p inner join brand_list b on p.brand_id = b.id inner join `categories` c on p.category_id = c.id where p.delete_flag = 0 and p.status = 1 {$where} order by RAND()");
                        while($row= $products->fetch_assoc()):
                    ?>
                        <a class="col px-1 py-2 text-decoration-none text-dark product-item" href ="./?p=products/view_product&id=<?= $row['id'] ?>">
                            <div class="card rounded-0 shadow">
                                <div class="product-img-holder overflow-hidden position-relative">
                                    <img src="<?= validate_image($row['image_path']) ?>" alt="Product Image" class="img-top"/>
                                    <span class="position-absolute price-tag rounded-pill bg-gradient-primary text-light px-3">
                                        <i class="fa fa-tags"></i> <b><?= number_format($row['price'],2) ?></b>
                                    </span>
                                </div>
                                <div class="card-body border-top">
                                    <h4 class="card-title my-0"><b><?= $row['name'] ?></b></h4><br>
                                    <small class="text-muted"><?= $row['brand'] ?></small><br>
                                    <small class="text-muted"><?= $row['category'] ?></small>
                                    <p class="m-0 truncate-5"><?= strip_tags(html_entity_decode($row['description'])) ?></p>
                                </div>
                            </div>
                        </a>
                    <?php endwhile; ?>
                </div>
                <?php if($products->num_rows <= 0): ?>
                    <div class="w-100 d-flex justify-content-center align-items-center" style="min-height:10em">
                    <center><em class="text-muted">No data.</em></center>
                    </div>
                <?php endif; ?>
            </div>
        </div>
    </div>
</div>
<script>
    $(function(){
        if($('.brand_filter').length == $('.brand_filter:checked').length){
            $('#brand_all').prop("checked",true)
        }else{
            $('#brand_all').prop("checked",false)
        }
        if($('.category_filter').length == $('.category_filter:checked').length){
            $('#category_all').prop("checked",true)
        }else{
            $('#category_all').prop("checked",false)
        }
        $('#brand_all').change(function(){
            if($(this).is(':checked') ==true){
                $('.brand_filter').prop("checked",true).trigger('change')
            }
        })
        $('#category_all').change(function(){
            if($(this).is(':checked') ==true){
                $('.category_filter').prop("checked",true).trigger('change')
            }
        })
        $('#search_prod').submit(function(e){
            e.preventDefault()
            var search = $(this).serialize()
            location.href="./?p=products"+(search != '' ? "&"+search : "")+"<?= isset($_GET['brand_filter']) ? "&brand_filter=".$_GET['brand_filter'] : "" ?><?= isset($_GET['category_filter']) ? "&category_filter=".$_GET['category_filter'] : "" ?>";

        })
        $('.brand_filter').change(function(){
            var brand_ids = [];
            if($('.brand_filter').length == $('.brand_filter:checked').length){
                $('#brand_all').prop("checked",true)
            }else{
                $('#brand_all').prop("checked",false)
                $('.brand_filter:checked').each(function(){
                    brand_ids.push($(this).val())
                })  
                brand_ids = brand_ids.join(",")
            }
            
            location.href="./?p=products"+(brand_ids.length > 0 ? "&brand_filter="+brand_ids : "")+"<?= isset($_GET['category_filter']) ? "&category_filter=".$_GET['category_filter'] : "" ?><?= isset($_GET['search']) ? "&search=".$_GET['search'] : "" ?>";
        })
        $('.category_filter').change(function(){
            var category_ids = [];
            if($('.category_filter').length == $('.category_filter:checked').length){
                $('#category_all').prop("checked",true)
            }else{
                $('#category_all').prop("checked",false)
                $('.category_filter:checked').each(function(){
                    category_ids.push($(this).val())
                }) 
                category_ids = category_ids.join(",")
            }
             
            location.href="./?p=products"+(category_ids.length > 0 ? "&category_filter="+category_ids : "")+"<?= isset($_GET['brand_filter']) ? "&brand_filter=".$_GET['brand_filter'] : "" ?><?= isset($_GET['search']) ? "&search=".$_GET['search'] : "" ?>";
        })
    })
</script>
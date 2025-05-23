<?php
if(isset($_GET['id']) && $_GET['id'] > 0){
    $qry = $conn->query("SELECT p.*, b.name as brand,c.category from `product_list` p inner join brand_list b on p.brand_id = b.id inner join categories c on p.category_id = c.id where p.id = '{$_GET['id']}' ");
    if($qry->num_rows > 0){
        foreach($qry->fetch_assoc() as $k => $v){
            $$k=stripslashes($v);
        }
    }
}
?>
<style>
    .product-img{
        width:20em;
        height:17em;
        object-fit:scale-down;
        object-position:center center;
    }
</style>
<div class="content py-3">
    <div class="card card-outline rounded-0 card-primary shadow">
        <div class="card-header">
            <h4 class="card-title">Product Details</h4>
            <div class="card-tools">
                <a class="btn btn-primary btn-sm btn-flat" href="./?page=products/manage_product&id=<?= isset($id) ? $id : "" ?>"><i class="fa fa-edit"></i> Edit</a>
                <a class="btn btn-danger btn-sm btn-flat" href="javascript:void(0)>" id="delete_data"><i class="fa fa-trash"></i> Delete</a>
                <a class="btn btn-default border btn-sm btn-flat" href="./?page=products"><i class="fa fa-angle-left"></i> Back</a>
            </div>
        </div>
        <div class="card-body">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <img src="<?= validate_image(isset($image_path) ? $image_path : "") ?>" alt="Product Image <?= isset($name) ? $name : "" ?>" class="img-thumbnail product-img">
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <small class="mx-2 text-muted">Categories Name</small>
                        <div class="pl-4"><?= isset($brand) ? $brand : '' ?></div>
                    </div>
                    <div class="col-md-6">
                        <small class="mx-2 text-muted">Category</small>
                        <div class="pl-4"><?= isset($category) ? $category : '' ?></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <small class="mx-2 text-muted">Compatible Models</small>
                        <div class="pl-4"><?= isset($models) ? $models : '' ?></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <small class="mx-2 text-muted">Name</small>
                        <div class="pl-4"><?= isset($name) ? $name : '' ?></div>
                    </div>
                    <div class="col-md-6">
                        <small class="mx-2 text-muted">Price</small>
                        <div class="pl-4"><?= isset($price) ? number_format($price,2) : '' ?></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <small class="mx-2 text-muted">Description</small>
                        <div class="pl-4"><?= isset($description) ? html_entity_decode($description) : '' ?></div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <small class="mx-2 text-muted">Status</small>
                        <div class="pl-4">
                            <?php if(isset($status)): ?>
                            <?php if($status == 1): ?>
                                <span class="badge badge-success px-3 rounded-pill">Active</span>
                            <?php else: ?>
                                <span class="badge badge-danger px-3 rounded-pill">Inactive</span>
                            <?php endif; ?>
                            <?php endif; ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
		$('#delete_data').click(function(){
			_conf("Are you sure to delete this product permanently?","delete_product",[])
		})
    })
    function delete_product($id = '<?= isset($id) ? $id : "" ?>'){
		start_loader();
		$.ajax({
			url:_base_url_+"classes/Master.php?f=delete_product",
			method:"POST",
			data:{id: $id},
			dataType:"json",
			error:err=>{
				console.log(err)
				alert_toast("An error occured.",'error');
				end_loader();
			},
			success:function(resp){
				if(typeof resp== 'object' && resp.status == 'success'){
					location.href= './?page=products';
				}else{
					alert_toast("An error occured.",'error');
					end_loader();
				}
			}
		})
	}
</script>
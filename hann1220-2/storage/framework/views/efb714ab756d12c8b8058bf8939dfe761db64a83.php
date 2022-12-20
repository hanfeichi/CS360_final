
<style>
	.zhezhao {
		position: fixed;
		left: 0px;
		top: 0px;
		background: #000;
		width: 100%;
		height: 100%;
		opacity: 0.5;
	}
</style>
<?php $__env->startSection('content'); ?>

<main class="login-form">
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Edit</div>
					<div class="card-body">
						<div class="form-group row">
							<label for="name" class="col-md-4 col-form-label text-md-right">goods_image</label>
							<div class="col-md-6">
								<img style="width:10%" src="<?php echo e(asset($goods['goods_image'])); ?>"><br><br>
							</div>
						</div>
						<form action="/update" method="POST">
							<?php echo csrf_field(); ?>
							<input type="hidden" value="<?php echo e($goods['id']); ?>" name="id">
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">goods_name</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" name="goods_name" value="<?php echo e($goods['goods_name']); ?>" required autofocus>
								</div>
							</div>
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">price</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" name="price" value="<?php echo e($goods['price']); ?>" required autofocus>
								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">goods_category</label>
								<div class="col-md-6">
									<select name="goods_category" id="" class="form-control">
										<?php $__currentLoopData = $goods_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<option value="<?php echo e($v); ?>" <?php if($v==$goods['goods_category']): ?> selected="selected" <?php endif; ?>><?php echo e($v); ?></option>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

									</select>

								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">rating</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" name="rating" value="<?php echo e($goods['rating']); ?>" required autofocus>
								</div>
							</div>
							<?php $__currentLoopData = $goods['sku']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sku): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right"><?php echo e($sku['spec']['spec_name']); ?></label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" value="<?php echo e($sku['sku_name']); ?>" disabled="disabled">
								</div>
							</div>
							<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">
									submit
								</button>
								<a class="btn btn-primary" href="/shop">
									go to list
								</a>
								<button onclick="dianwo()" type="button" class="btn btn-primary">
									add new sku
								</button>
							</div>
						</form>
						<br>
						<div id='zhezhao' class="form-group row">
							<form action="<?php echo e(route('addsku')); ?>" method="post">
							<?php echo csrf_field(); ?>
								<select name="spec_id" id="">
									<?php $__currentLoopData = $goodssku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
									<option value="<?php echo e($v['id']); ?>"><?php echo e($v['spec_name']); ?></option>
									<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
								</select>
								<input type="text" name="sku_name">
								<input type="hidden" name="goods_id" value="<?php echo e($goods['id']); ?>" class="form-control">
								<input type="button" value="cancle" onclick="hidder()" /> <input type="submit" value="save" id="save" />
							</form>
						</div>

						<script type="text/javascript">
							document.getElementById('zhezhao').style.display = "none";

							function dianwo() {
								document.getElementById('zhezhao').style.display = "";
							}

							function hidder() {
								document.getElementById('zhezhao').style.display = "none";
							}
						</script>
						<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/hanfeichi/Desktop/hann1220-2/resources/views/edit.blade.php ENDPATH**/ ?>
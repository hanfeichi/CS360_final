
  
<?php $__env->startSection('content'); ?>
<main class="login-form">
  <div class="cotainer">
      <div class="row justify-content-center">
          <div class="col-md-8">
              <div class="card">
                  <div class="card-header">Upload</div>
                  <div class="card-body">
  
                      <form action="<?php echo e(route('upload.post')); ?>" method="POST" enctype="multipart/form-data">
                          <?php echo csrf_field(); ?>
                          <div class="form-group row">
                              <label for="name" class="col-md-4 col-form-label text-md-right">goods_name</label>
                              <div class="col-md-6">
                                  <input type="text" id="name" class="form-control" name="goods_name" required autofocus>
                                  <?php if($errors->has('goods_name')): ?>
                                      <span class="text-danger"><?php echo e($errors->first('goods_name')); ?></span>
                                  <?php endif; ?>
                              </div>
                          </div>

                          <div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">goods_category</label>
								<div class="col-md-6">
									<select name="goods_category" id="" class="form-control">
										<?php $__currentLoopData = $goods_category; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
										<option value="<?php echo e($v); ?>" ><?php echo e($v); ?></option>
										<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

									</select>

								</div>
							</div>

                            <div class="form-group row">
                              <label for="name" class="col-md-4 col-form-label text-md-right">goods_image</label>
                              <div class="col-md-6">
                                  <input type="file" id="name" class="form-control" name="goods_image" required autofocus>
                         
                              </div>
                          </div>
                          
                          <div class="form-group row">
                              <label for="name" class="col-md-4 col-form-label text-md-right">price</label>
                              <div class="col-md-6">
                                  <input type="text" id="name" class="form-control" name="price" required autofocus>
                                  <?php if($errors->has('price')): ?>
                                      <span class="text-danger"><?php echo e($errors->first('price')); ?></span>
                                  <?php endif; ?>
                              </div>
                          </div>

                        

                          <div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">rating</label>
								<div class="col-md-6">
									<select name="rating" id="" class="form-control">
										<option value="1" >1</option>
										<option value="2" >2</option>
										<option value="3" >3</option>
										<option value="4" >4</option>
										<option value="5" >5</option>

									</select>

								</div>
							</div>

                          <div class="col-md-6 offset-md-4">
                              <button type="submit" class="btn btn-primary">
                                  submit
                              </button>
                          </div>
                      </form>
                        
                  </div>
              </div>
          </div>
      </div>
  </div>
</main>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/hanfeichi/Desktop/hann1220-2/resources/views/upload.blade.php ENDPATH**/ ?>
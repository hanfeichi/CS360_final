
  
<?php $__env->startSection('content'); ?>
                <div class="card-body">
                    <table>
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>goods_name</th>
                        <th>goods_image</th>
                        <th>goods_category</th>
                        <th>price</th>
                        <th>rating</th>
                        <th>sku</th>
                        <th>created_at</th>
                        <th>set</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php $__currentLoopData = $goods; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                        <td style="width: 1%"><?php echo e($value['id']); ?></td>
                        <td style="width: 5%"><?php echo e($value['goods_name']); ?> </td>
                        <td style="width: 5%"><img width="19%" src="<?php echo e(asset($value['goods_image'])); ?>"></td>
                        <td style="width: 5%"><?php echo e($value['goods_category']); ?></td>
                        <td style="width: 5%"><?php echo e($value['price']); ?></td>
                        <td style="width: 2%"><?php echo e($value['rating']); ?></td>
                        <td style="width: 5%">
                            <?php $__currentLoopData = $value['sku']; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php echo e($v->sku_name); ?> /
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                        </td>
                        <td style="width: 5%"><?php echo e($value['created_at']); ?></td>
                        <td style="width: 5%"> <a href="/edit/<?php echo e($value['id']); ?>">Edit</a> </td>
              
                           
                       
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </tbody>
                    </table>
                </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\stamina\Desktop\hann\resources\views/shop.blade.php ENDPATH**/ ?>
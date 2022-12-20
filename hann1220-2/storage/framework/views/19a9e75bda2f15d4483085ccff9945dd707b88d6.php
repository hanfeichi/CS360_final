
  
<?php $__env->startSection('content'); ?>
                <div class="card-body">
                    <table>
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>goods_name</th>
                        <th>total_price</th>
                        <th>haggle</th>
                        <th>phone</th>
                        <th>address</th>
                        <th>city</th>
                        <th>state</th>
                        <th>card</th>
                        <th>card_name</th>
                        <th>status</th>
                        <th>created_at</th>
                        </tr>
                    </thead>
                    <tbody>

                        <?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                        <td style="width: 5%"><?php echo e($value['id']); ?></td>
                        <td style="width: 5%"><?php echo e($value['goods_name']); ?></td>
                        <td style="width: 5%"><?php echo e($value['total_price']); ?></td>
                        <td style="width: 5%"><?php echo e($value['haggle']); ?></td>
                        <td style="width: 5%"><?php echo e($value['phone']); ?></td>
                        <td style="width: 5%"><?php echo e($value['address']); ?></td>
                        <td style="width: 5%"><?php echo e($value['city']); ?></td>
                        <td style="width: 5%"><?php echo e($value['state']); ?> %</td>
                        <td style="width: 5%"><?php echo e($value['card']); ?></td>
                        <td style="width: 5%"><?php echo e($value['card_name']); ?></td>
                        <td style="width: 5%"><?php echo e($value['status']); ?></td>
                        <td style="width: 5%"><?php echo e($value['created_at']); ?></td>
                        <?php if(Auth::user()->identity == 'user'): ?>
                        <td style="width: 5%"><a href="/orderdelete/<?php echo e($value['id']); ?>">cancel order</a></td>
                        <?php else: ?>
                            <?php if($value['status'] == 'pending'): ?>
                            <td style="width: 5%"><a href="/orderdelete/<?php echo e($value['id']); ?>">接受</a>  | <a href="/orderdelete/<?php echo e($value['id']); ?>">拒绝</a></td>
                            
                            <?php endif; ?> 
                        <?php endif; ?>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </tbody>
                    </table>
                </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\stamina\Desktop\hann\resources\views/order.blade.php ENDPATH**/ ?>
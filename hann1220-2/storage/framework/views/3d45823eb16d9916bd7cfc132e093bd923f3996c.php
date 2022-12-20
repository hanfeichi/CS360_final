
  
<?php $__env->startSection('content'); ?>
                <div class="card-body">
                    <table>
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>goods_name</th>
                        <th>total_price</th>
                        <th>haggle</th>
                        <th>status</th>
                        <th>token</th>
                        <th>created_at</th>

                        <?php if(Auth::user()->identity == 'supplier'): ?>
                        <th>phone</th>
                        <th>address</th>
                        <th>city</th>
                        <!-- <th>state</th> -->
                        <?php endif; ?>
                        </tr>
                    </thead>
                    <tbody>

                        <?php $__currentLoopData = $order; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                        <td style="width: 10%"><?php echo e($value['id']); ?></td>
                        <td style="width: 10%"><?php echo e($value['goods_name']); ?></td>
                        <td style="width: 10%"><?php echo e($value['total_price']); ?></td>
                        <td style="width: 10%"><?php echo e($value['haggle']); ?></td>
                        <td style="width: 10%"><?php echo e($value['status']); ?></td>
                        <td style="width: 10%"> <?php if($value['content']): ?>  <?php echo e($value['content']); ?> <?php endif; ?></td>
                        <td style="width: 10%"><?php echo e($value['created_at']); ?></td>
                        
                        <?php if($value['status'] == 'accepted' && Auth::user()->identity == 'supplier'): ?>
                        <td style="width: 5%"><?php echo e($value['phone']); ?></td>
                        <td style="width: 5%"><?php echo e($value['address']); ?></td>
                        <td style="width: 5%"><?php echo e($value['city']); ?></td>
                        <!-- <td style="width: 5%"><?php echo e($value['state']); ?> %</td> -->
                        <?php else: ?>
                        <td></td>
                        <td></td>
                        <td></td>
                        <?php endif; ?> 

                        <?php if(Auth::user()->identity == 'user'): ?>
                            <?php if($value['status'] == 'accepted'): ?>
                            <td style="width: 5%"><a onclick='if(confirm("Are you certain you want to void the deal? The amount of liquidated damages for cancellation is <?php echo e($value["damages_percent"]); ?>% of the entire cost of the items ($<?php echo e($value["damages"]); ?>). The remaining funding($<?php echo e($value["tui"]); ?>) will be reimbursed to your bank card with the code <?php echo e($value["card"]); ?>.?")==false)return false;' href="/orderdelete/<?php echo e($value['id']); ?>">cancel order</a></td> 
                            <?php else: ?>
                            <td style="width: 5%"><a onclick='if(confirm("Are you certain you want to void the deal?")==false)return false;' href="/orderdelete/<?php echo e($value['id']); ?>">cancel order</a></td> 
                            <?php endif; ?>
                        <?php else: ?>
                            <?php if($value['status'] == 'pending'): ?>
                            <td style="width: 5%"><a href="/orderset/accepted/<?php echo e($value['id']); ?>">    Accepted</a>  | <a href="/orderset/rejected/<?php echo e($value['id']); ?>">Rejected</a></td>
                            
                            <?php endif; ?> 
                        <?php endif; ?>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </tbody>
                    </table>
                </div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\70725\Desktop\hann(1)\resources\views/order.blade.php ENDPATH**/ ?>
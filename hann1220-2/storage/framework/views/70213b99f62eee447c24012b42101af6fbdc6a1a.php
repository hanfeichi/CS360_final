
  
<?php $__env->startSection('content'); ?>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header"><?php echo e(__('Dashboard')); ?></div>
  
                <div class="card-body">
                    <?php if(session('success')): ?>
                        <div class="alert alert-success" role="alert">
                            <?php echo e(session('success')); ?>

                        </div>
                    <?php endif; ?>
  
                    You are Logged In , User : <b><?php echo e(Auth::user()->username); ?></b>
                </div>

                <div class="card-body">
                    <table>
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>NAME</th>
                        <th>EMAIL</th>
                        <th>CREATR</th>
                        <th>UPDATE</th>
                        <th>DELETE</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $value): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                        <td style="width: 10%"><?php echo e($value['id']); ?></td>
                        <td style="width: 10%"><?php echo e($value['username']); ?></td>
                        <td style="width: 20%"><?php echo e($value['email']); ?></td>
                        <td style="width: 25%"><?php echo e($value['created_at']); ?></td>
                        <td style="width: 25%"><?php echo e($value['updated_at']); ?></td>
                        <td style="width: 10%"><a href="/delete/<?php echo e($value['id']); ?>">Delete</a></td>
                        </tr>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>

                    </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\stamina\Desktop\register\resources\views/dashboard.blade.php ENDPATH**/ ?>
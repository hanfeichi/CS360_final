
  
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
  
                    You are Logged In
                </div>

                <div class="card-body">
                    <table class="table">
                    <thead>
                        <tr>
                        <th>id</th>
                        <th>name</th>
                        <th>email</th>
                        <th>created_at</th>
                        <th>updated_at</th>
                        <th>operation</th>
                        </tr>
                    </thead>
                    <tbody>
                        <?php $__currentLoopData = $user; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <tr>
                        <td><?php echo e($v['id']); ?></td>
                        <td><?php echo e($v['name']); ?></td>
                        <td><?php echo e($v['email']); ?></td>
                        <td><?php echo e($v['created_at']); ?></td>
                        <td><?php echo e($v['updated_at']); ?></td>
                        <td><label class="badge badge-danger"><a href="/usersdelete/<?php echo e($v['id']); ?>">Delete</a></label></td>
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
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\stamina\Desktop\Login\resources\views/dashboard.blade.php ENDPATH**/ ?>


<?php $__env->startSection('content'); ?>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Liquidated damages</div>
                    <div class="card-body">
                        <form action="/setting" method="POST">
                            <?php echo csrf_field(); ?>
              <!--               <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">shop ID</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" value="<?php echo e(Auth::user()->id); ?>" disabled="disabled">
                                </div>
                            </div> -->
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Shop Name</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" value="<?php echo e(Auth::user()->username); ?>" disabled="disabled">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">damages (%)</label>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" name="damages" value="<?php echo e(Auth::user()->damages); ?>">
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-4">
                            <input type="submit" class="btn btn-primary" value="save" />
                            </div>
                        </form>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH /Users/hanfeichi/Desktop/hann1220-2/resources/views/set.blade.php ENDPATH**/ ?>
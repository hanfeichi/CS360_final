
  
<?php $__env->startSection('content'); ?>

<head>
        <meta http-equiv="X-UA-Compatible" content="IE=Edgitge">
        <meta charset="UTF-8">
        <title>
            shop
        </title>
<style type="text/css">
    .imgleft{margin-left: 30px;}
    .span4{width: 23% !important;}
    .widthl{width: 100% !important;}
    .brick-item{width: 100%;}
</style>
        
<meta name="viewport" content="width=1226">
<!-- <link href="//unpkg.com/layui@2.7.6/dist/css/layui.css" rel="stylesheet">
<script src="//unpkg.com/layui@2.7.6/dist/layui.js"> -->
<link href="<?php echo e(asset('home.css')); ?>" rel="stylesheet">
<script>
var _countAA = 0
function doBBBd(){}
doBBBd()


</script></head>

<div class="home-brick-box home-brick-row-2-box xm-plain-box">
    <div class="box-hd clearfix" style="text-align: center;padding-top: 20px;">
       <form>
           <input type="text" name="keyword" placeholder="Search" value="<?php echo e(request('keyword')); ?>">
           <input type="submit" value="Search">
       
</div>

<div class="box-bd">
    <div class="row">
        <div class="span4" style="padding-left: 20px;">
            <ul class="brick-promo-list clearfix">
                <li class="brick-item  brick-item-l widthl">
                    <p style="text-align:center;">Filter </p>
                    <?php $__currentLoopData = $goodsSpec; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $g): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                        <?php echo e($g['spec_name']); ?> : <br>
                            <?php $__currentLoopData = $GoodsSpecSku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $s): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                                <?php if($s['spec_id'] == $g['id']): ?>
                                <input type="checkbox" name="GoodsSpecSku_id[]"  <?php if($skuid_array): ?><?php if(in_array($s["sku_name"],$skuid_array)): ?> checked <?php endif; ?> <?php endif; ?>   value=" <?php echo e($s['sku_name']); ?>"> <?php echo e($s['sku_name']); ?>

                                <?php endif; ?>
                            <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                            <hr>
                    <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
                       
                    <p style="text-align:center;">Sort </p>
                    <select name="sort">
                        <option value="">Please select a sort </option>
                        <option value="1">price desc</option>
                        <option value="2">price asc</option>
                        <option value="3">rating desc</option>
                        <option value="4">rating asc</option>
                    </select>
                    <br>
                    <br>
                    <input type="submit" value="Search">
                    </form>
                </li>
            </ul>
        </div>
        <div class="span16">
            <div>
                <ul class="brick-list clearfix">
                    <?php $__currentLoopData = $goods; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
                    <div>
                        <li class="brick-item brick-item-m brick-item-m-2">
                            <a href="<?php echo e(asset("details/$v->id")); ?>">
                                <div class="figure figure-img">
                                    <img class="imgleft" width="160"  height="160" alt="<?php echo e($v['goods_name']); ?>" src="<?php echo e($v['goods_image']); ?>" lazy="loaded">
                                </div>
                                <h3 class="title"><?php echo e($v['goods_name']); ?></h3>
                                <!-- <p class="desc">details|details</p> -->
                                <p class="price">
                                    <span class="num">$ <?php echo e($v['price']); ?></span>
                                    <!-- <del><span class="num">1099</span>$</del> -->
                                </p>
                                </a>
                            </li>
                        </div>
                        <?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>      
            </div>
        </div>
    </div>
</div>
<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\70725\Desktop\hann(1)\resources\views/home.blade.php ENDPATH**/ ?>
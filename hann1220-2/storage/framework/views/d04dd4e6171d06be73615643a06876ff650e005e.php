
  
<?php $__env->startSection('content'); ?>


<style type="text/css">

	.mar{
		line-height: 30px;
	}
	.main{
		margin-left: 30%;
		margin-top: 1%;
	}
</style>

	<div class="main">
		<img style="width:10%" src="<?php echo e(asset($goods['goods_image'])); ?>"><br>
		<h4><?php echo e($goods['goods_name']); ?></h4>
		<?php $__currentLoopData = $GoodsSpecSku; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $sku): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
		<mark class="mar"><?php echo e($sku['spec']['spec_name']); ?></mark>：<?php echo e($sku['sku_name']); ?> <br>
		<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		<mark class="mar">price</mark>：<?php echo e($goods['price']); ?> $<br>
		

<hr>	
		<input type="button" id="bt_display" value="Buy it" onclick="controlDIV()"/>
		<div id="my" style="visibility:hidden;">
		<mark class="mar">taxation</mark>:
		<select id="select">
			<?php $__currentLoopData = $taxation; $__env->addLoop($__currentLoopData); foreach($__currentLoopData as $v): $__env->incrementLoopIndices(); $loop = $__env->getLastLoop(); ?>
			<option value="<?php echo e($v['state']); ?>"><?php echo e($v['state']); ?> : <?php echo e($v['rate']); ?>%</option>
			<?php endforeach; $__env->popLoop(); $loop = $__env->getLastLoop(); ?>
		</select>
			<div>
				<div>
					<form>
						<fieldset>

							<label>Phone Number：</label><input type="text" name="phone" /> <br>
							<label>Address：</label><input type="text" name="address"/> <br>
							<label>City：</label><input type="text" name="city"/> <br>
							<label>State：</label><input type="text" name="state"/> <br>

							<input type="button" onclick="step1()" value="Next step">
							<div id="step2" style="visibility:hidden;">
							<mark class="mar">Product Price</mark>:<input id="price" type="text" value="<?php echo e($goods['price']); ?>"><br>
							<mark class="mar">Tax Fee</mark>:<input id="fee" type="text" value="" ><br>
							<mark class="mar">Total</mark>:<input id="total" type="text"><br>
							 <label>Card Number：</label><input type="text" name="card"/> <br>
							 <label>Name on card：</label><input type="text" name="name"/> <br>
							 <label>Expiration date (MM / YY)：</label><input type="text"/>
							 <label>Security code：</label><input type="text"/> <br>
							 <button type="submit" class="btn">submit</button>
							</div>

						</fieldset>
					</form>
				</div>
			</div>
		</div>
	</div>


<script type="text/javascript">
	var flag=1;
	var flag1 = 1;
	function $(id)
	{
		return document.getElementById(id);
	}
	function controlDIV()
	{
	    if(flag==0)
	    {
	        $("my").style.visibility="hidden";
	        // $("bt_display").value="显示";
	        flag=1;
	    }else{
	        $("my").style.visibility="";
	        flag=0;    
	    }
	}
	function step1() {
	    if(flag1==0)
	    {
	        $("step2").style.visibility="hidden";
	        // $("bt_display").value="显示";
	        flag1=1;
	    }else{
	        $("step2").style.visibility="";
	        $("bt_display").value="显示";
	        var options=$("select option : selected");
	        console.log(options.val());
	        flag1=0;    
	    }
	}

	</script>
</script>






<?php $__env->stopSection(); ?>
<?php echo $__env->make('layout', \Illuminate\Support\Arr::except(get_defined_vars(), ['__data', '__path']))->render(); ?><?php /**PATH C:\Users\70725\Desktop\register\resources\views/details.blade.php ENDPATH**/ ?>
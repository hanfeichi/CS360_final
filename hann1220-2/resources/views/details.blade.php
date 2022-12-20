@extends('layout')
  
@section('content')


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
		<img style="width:10%" src="{{ asset($goods['goods_image']) }}"><br><br>
		<!-- <label style="border:2px solid #ccc;"><b> Shopname : {{$shop}}</b></label> -->
		<!-- <br> -->
		<h4>{{ $goods['goods_name'] }}</h4>
		@foreach( $GoodsSpecSku as $sku)
		<mark class="mar">{{ $sku['spec']['spec_name']}}</mark>：{{$sku['sku_name']}} <br>
		@endforeach
		<mark class="mar">price</mark>：<span id="price">{{ $goods['price']}}</span> $ <br>

		

<hr>	
		<input type="button" id="bt_display" value="Buy it" onclick="controlDIV()"/>
		<div id="my" style="visibility:hidden;">
		
		<form action="/buy" method="post" enctype="multipart/form-data">
		@csrf
		
			<div>
				<div>

						<fieldset>
							<label>State：</label>
							<select id="select" name="state">
							@foreach( $taxation as $v)
							<option value="{{$v['rate']}}"  >{{$v['state']}} : {{$v['rate']}}%</option>
							@endforeach
							</select> <br>
							<label>Phone Number：</label><input type="text" name="phone" /> <br>
							<label>Address：</label><input type="text" name="address"/> <br>
							<label>City：</label><input type="text" name="city"/> <br>
							<!-- <label>State：</label><input type="text" name="state"/> <br> -->

							<input type="button" onclick="step1()" value="Next step">
							<div id="step2" style="visibility:hidden;">
							<label>Product Price：</label><input id="priceInput" type="text" name="" disabled='disabled'><br>
							<label>Tax Fee：</label><input id="fee" type="text" value=""  name="" disabled='disabled'><br>
							<label>Total：</label><input id="total" type="text" disabled='disabled'><br>
							<label>haggle：</label><input id="haggle" type="text" name="haggle"><br>
											<input id="total_hidden" type="hidden" name="total_price" >
							 <label>Card Number：</label><input type="text" name="card"/> <br>
							 <label>Name on card：</label><input type="text" name="card_name"/> <br>
							 <label>Expiration date (MM / YY)：</label><input type="text"/>
							 <label>Security code：</label><input type="text"/> <br>
							 <input type="hidden" name="goods_name" value="{{ $goods['goods_name'] }}">
							 <input type="hidden" name="goods_id" value="{{ $goods['id'] }}">
							 <input type="submit" value="submit">
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

	    alert("Purchase Notice: When the seller accepts your bargain, the transaction will be generated. If you cancel the order, you will be fined {{$shop}}% of the total price of the product.");

	}
	function step1() {
	    if(flag1==0)
	    {
	        $("step2").style.visibility="hidden";
	        // $("bt_display").value="显示";
	        flag1=1;
	    }else{
	        $("step2").style.visibility="";
				var priceDiv = document.getElementById('price').innerHTML;
				console.log('priceDiv',priceDiv);
				var select = document.getElementById('select');
				var index = select.selectedIndex;
				var option = select.options[index].value;
				console.log('option',option);
				document.getElementById('priceInput').value = priceDiv;
				var feeText = priceDiv * option / 100;
				feeText = feeText.toFixed(3);
				document.getElementById('fee').value = feeText;
				document.getElementById('total').value = Number(priceDiv) + Number(feeText);
				document.getElementById('total_hidden').value = Number(priceDiv) + Number(feeText);
	        flag1=0;    
	    }
	}

	</script>







@endsection
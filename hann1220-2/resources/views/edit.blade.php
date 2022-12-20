@extends('layout')
<style>
	.zhezhao {
		position: fixed;
		left: 0px;
		top: 0px;
		background: #000;
		width: 100%;
		height: 100%;
		opacity: 0.5;
	}
</style>
@section('content')

<main class="login-form">
	<div class="cotainer">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">Edit</div>
					<div class="card-body">
						<div class="form-group row">
							<label for="name" class="col-md-4 col-form-label text-md-right">goods_image</label>
							<div class="col-md-6">
								<img style="width:10%" src="{{ asset($goods['goods_image']) }}"><br><br>
							</div>
						</div>
						<form action="/update" method="POST">
							@csrf
							<input type="hidden" value="{{ $goods['id']}}" name="id">
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">goods_name</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" name="goods_name" value="{{ $goods['goods_name'] }}" required autofocus>
								</div>
							</div>
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">price</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" name="price" value="{{ $goods['price']}}" required autofocus>
								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">goods_category</label>
								<div class="col-md-6">
									<select name="goods_category" id="" class="form-control">
										@foreach($goods_category as $v)
										<option value="{{$v}}" @if($v==$goods['goods_category']) selected="selected" @endif>{{$v}}</option>
										@endforeach

									</select>

								</div>
							</div>

							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">rating</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" name="rating" value="{{ $goods['rating']}}" required autofocus>
								</div>
							</div>
							@foreach( $goods['sku'] as $sku)
							<div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">{{ $sku['spec']['spec_name']}}</label>
								<div class="col-md-6">
									<input type="text" id="name" class="form-control" value="{{$sku['sku_name']}}" disabled="disabled">
								</div>
							</div>
							@endforeach

							<div class="col-md-6 offset-md-4">
								<button type="submit" class="btn btn-primary">
									submit
								</button>
								<a class="btn btn-primary" href="/shop">
									go to list
								</a>
								<button onclick="dianwo()" type="button" class="btn btn-primary">
									add new sku
								</button>
							</div>
						</form>
						<br>
						<div id='zhezhao' class="form-group row">
							<form action="{{ route('addsku') }}" method="post">
							@csrf
								<select name="spec_id" id="">
									@foreach($goodssku as $v)
									<option value="{{$v['id']}}">{{$v['spec_name']}}</option>
									@endforeach
								</select>
								<input type="text" name="sku_name">
								<input type="hidden" name="goods_id" value="{{ $goods['id']}}" class="form-control">
								<input type="button" value="cancle" onclick="hidder()" /> <input type="submit" value="save" id="save" />
							</form>
						</div>

						<script type="text/javascript">
							document.getElementById('zhezhao').style.display = "none";

							function dianwo() {
								document.getElementById('zhezhao').style.display = "";
							}

							function hidder() {
								document.getElementById('zhezhao').style.display = "none";
							}
						</script>
						@endsection
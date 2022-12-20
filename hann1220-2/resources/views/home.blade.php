@extends('layout')
  
@section('content')

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
<link href="{{asset('home.css')}}" rel="stylesheet">
<script>
var _countAA = 0
function doBBBd(){}
doBBBd()


</script></head>

<div class="home-brick-box home-brick-row-2-box xm-plain-box">
    <div class="box-hd clearfix" style="text-align: center;padding-top: 20px;">
       <form>
           <input type="text" name="keyword" placeholder="Search" value="{{request('keyword')}}">
           <input type="submit" value="Search">
       
</div>

<div class="box-bd">
    <div class="row">
        <div class="span4" style="padding-left: 20px;">
            <ul class="brick-promo-list clearfix">
                <li class="brick-item  brick-item-l widthl">
                    <p style="text-align:center;">Filter </p>
                    @foreach($goodsSpec as $g)
                        {{ $g['spec_name'] }} : <br>
                            @foreach($GoodsSpecSku as $s)
                                @if($s['spec_id'] == $g['id'])
                                <input type="checkbox" name="GoodsSpecSku_id[]"  @if($skuid_array)@if(in_array($s["sku_name"],$skuid_array)) checked @endif @endif   value=" {{ $s['sku_name']}}"> {{ $s['sku_name'] }}
                                @endif
                            @endforeach
                            <hr>
                    @endforeach
                       
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
                    @foreach($goods as $v)
                    <div>
                        <li class="brick-item brick-item-m brick-item-m-2">
                            <a href="{{asset("details/$v->id")}}">
                                <div class="figure figure-img">
                                    <img class="imgleft" width="160"  height="160" alt="{{ $v['goods_name'] }}" src="{{ $v['goods_image'] }}" lazy="loaded">
                                </div>
                                <h3 class="title">{{ $v['goods_name'] }}</h3>
                                <!-- <p class="desc">details|details</p> -->
                                <p class="price">
                                    <span class="num">$ {{ $v['price'] }}</span>
                                    <!-- <del><span class="num">1099</span>$</del> -->
                                </p>
                                </a>
                            </li>
                        </div>
                        @endforeach      
            </div>
        </div>
    </div>
</div>
@endsection
@extends('layout')
  
@section('content')
                <div class="card-body">
                    <table>
                    <thead>
                        <tr>
                        <th>ID</th>
                        <th>goods_name</th>
                        <th>goods_image</th>
                        <!-- <th>goods_category</th> -->
                        <th>price</th>
                        <!-- <th>rating</th> -->
                        <th>parameter</th>
                        <th>created_at</th>
                        <th>settings</th>
                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($goods as $value)
                        <tr>
                        <td style="width: 5%">{{$value['id']}} </td>
                        <td style="width: 5%">{{$value['goods_name']}} </td>
                        <td style="width: 5%"><img width="19%" src="{{ asset($value['goods_image']) }}"></td>
                        <!-- <td style="width: 5%">{{$value['goods_category']}}</td> -->
                        <td style="width: 5%">{{$value['price']}}</td>
                        <!-- <td style="width: 2%">{{$value['rating']}}</td> -->
                        <td style="width: 5%">
                            @foreach($value['sku'] as $v)
                                {{$v->sku_name}} /
                            @endforeach
                        </td>
                        <td style="width: 5%">{{$value['created_at']}}</td>
                        <td style="width: 5%"> <a href="/edit/{{$value['id']}}">Edit</a> </td>
              
                           
                       
                        </tr>
                        @endforeach

                    </tbody>
                    </table>
                </div>
@endsection
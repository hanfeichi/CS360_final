@extends('layout')
  
@section('content')
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

                        @if(Auth::user()->identity == 'supplier')
                        <th>phone</th>
                        <th>address</th>
                        <th>city</th>
                        <!-- <th>state</th> -->
                        @endif
                        </tr>
                    </thead>
                    <tbody>

                        @foreach ($order as $value)
                        <tr>
                        <td style="width: 10%">{{$value['id']}}</td>
                        <td style="width: 10%">{{$value['goods_name']}}</td>
                        <td style="width: 10%">{{$value['total_price']}}</td>
                        <td style="width: 10%">{{$value['haggle']}}</td>
                        <td style="width: 10%">{{$value['status']}}</td>
                        <td style="width: 10%"> @if($value['content'])  {{$value['content']}} @endif</td>
                        <td style="width: 10%">{{$value['created_at']}}</td>
                        
                        @if($value['status'] == 'accepted' && Auth::user()->identity == 'supplier')
                        <td style="width: 5%">{{$value['phone']}}</td>
                        <td style="width: 5%">{{$value['address']}}</td>
                        <td style="width: 5%">{{$value['city']}}</td>
                        <!-- <td style="width: 5%">{{$value['state']}} %</td> -->
                        @else
                        <td></td>
                        <td></td>
                        <td></td>
                        @endif 

                        @if(Auth::user()->identity == 'user')
                            @if($value['status'] == 'accepted')
                            <td style="width: 5%"><a onclick='if(confirm("Are you certain you want to void the deal? The amount of liquidated damages for cancellation is {{$value["damages_percent"]}}% of the entire cost of the items (${{$value["damages"]}}). The remaining funding(${{$value["tui"]}}) will be reimbursed to your bank card with the code {{$value["card"]}}.?")==false)return false;' href="/orderdelete/{{$value['id']}}">cancel order</a></td> 
                            @else
                            <td style="width: 5%"><a onclick='if(confirm("Are you certain you want to void the deal?")==false)return false;' href="/orderdelete/{{$value['id']}}">cancel order</a></td> 
                            @endif
                        @else
                            @if($value['status'] == 'pending')
                            <td style="width: 5%"><a href="/orderset/accepted/{{$value['id']}}">    Accepted</a>  | <a href="/orderset/rejected/{{$value['id']}}">Rejected</a></td>
                            
                            @endif 
                        @endif
                        </tr>
                        @endforeach

                    </tbody>
                    </table>
                </div>
@endsection
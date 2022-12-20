@extends('layout')
  
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Dashboard') }}</div>
  
                <div class="card-body">
                    @if (session('success'))
                        <div class="alert alert-success" role="alert">
                            {{ session('success') }}
                        </div>
                    @endif
  
                    You are Logged In , User : <b>{{Auth::user()->username}}</b>
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
                        @foreach ($user as $value)
                        <tr>
                        <td style="width: 10%">{{$value['id']}}</td>
                        <td style="width: 10%">{{$value['username']}}</td>
                        <td style="width: 20%">{{$value['email']}}</td>
                        <td style="width: 25%">{{$value['created_at']}}</td>
                        <td style="width: 25%">{{$value['updated_at']}}</td>
                        <td style="width: 10%"><a href="/delete/{{$value['id']}}">Delete</a></td>
                        </tr>
                        @endforeach

                    </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@extends('layout')

@section('content')

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Liquidated damages</div>
                    <div class="card-body">
                        <form action="/setting" method="POST">
                            @csrf
              <!--               <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">shop ID</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" value="{{Auth::user()->id}}" disabled="disabled">
                                </div>
                            </div> -->
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">Shop Name</label>
                                <div class="col-md-6">
                                    <input type="text" class="form-control" value="{{Auth::user()->username}}" disabled="disabled">
                                </div>
                            </div>
                            <div class="form-group row">
                                <label for="name" class="col-md-4 col-form-label text-md-right">damages (%)</label>
                                <div class="col-md-6">
                                    <input type="number" class="form-control" name="damages" value="{{Auth::user()->damages}}">
                                </div>
                            </div>
                            <div class="col-md-6 offset-md-4">
                            <input type="submit" class="btn btn-primary" value="save" />
                            </div>
                        </form>
@endsection
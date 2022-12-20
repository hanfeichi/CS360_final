@extends('layout')
  
@section('content')
<main class="login-form">
  <div class="cotainer">
      <div class="row justify-content-center">
          <div class="col-md-8">
              <div class="card">
                  <div class="card-header">Upload</div>
                  <div class="card-body">
  
                      <form action="{{ route('upload.post') }}" method="POST" enctype="multipart/form-data">
                          @csrf
                          <div class="form-group row">
                              <label for="name" class="col-md-4 col-form-label text-md-right">goods_name</label>
                              <div class="col-md-6">
                                  <input type="text" id="name" class="form-control" name="goods_name" required autofocus>
                                  @if ($errors->has('goods_name'))
                                      <span class="text-danger">{{ $errors->first('goods_name') }}</span>
                                  @endif
                              </div>
                          </div>

                          <div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">goods_category</label>
								<div class="col-md-6">
									<select name="goods_category" id="" class="form-control">
										@foreach($goods_category as $v)
										<option value="{{$v}}" >{{$v}}</option>
										@endforeach

									</select>

								</div>
							</div>

                            <div class="form-group row">
                              <label for="name" class="col-md-4 col-form-label text-md-right">goods_image</label>
                              <div class="col-md-6">
                                  <input type="file" id="name" class="form-control" name="goods_image" required autofocus>
                         
                              </div>
                          </div>
                          
                          <div class="form-group row">
                              <label for="name" class="col-md-4 col-form-label text-md-right">price</label>
                              <div class="col-md-6">
                                  <input type="text" id="name" class="form-control" name="price" required autofocus>
                                  @if ($errors->has('price'))
                                      <span class="text-danger">{{ $errors->first('price') }}</span>
                                  @endif
                              </div>
                          </div>

                        

                          <div class="form-group row">
								<label for="name" class="col-md-4 col-form-label text-md-right">rating</label>
								<div class="col-md-6">
									<select name="rating" id="" class="form-control">
										<option value="1" >1</option>
										<option value="2" >2</option>
										<option value="3" >3</option>
										<option value="4" >4</option>
										<option value="5" >5</option>

									</select>

								</div>
							</div>

                          <div class="col-md-6 offset-md-4">
                              <button type="submit" class="btn btn-primary">
                                  submit
                              </button>
                          </div>
                      </form>
                        
                  </div>
              </div>
          </div>
      </div>
  </div>
</main>
@endsection
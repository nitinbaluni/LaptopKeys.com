@extends('layouts.dash')
@section('content')
<div class="card">
    <div class="header"><h4 class="title">UPDATE PRODUCT : "{{ $product->title }}"</h4></div>
    <div class="content">
        <form method="post" action="{{ route('dashboard.product.update', ['id' => $product->id ]) }}" 
        enctype="multipart/form-data">
        {{ csrf_field() }}
        <input name="author" type="hidden" value=""/>
            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Title</label>

                    <input type="text" class="form-control border-input" name="title"placeholder="Product Title" 
                    value="{{ $product->title }}">
                    @if ($errors->has('title'))
                        <span class="help-block">
                        	<strong>{{ $errors->first('title') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Description</label>
                    <textarea rows="5" class="form-control border-input" name="description" placeholder="Product description">{{ $product->description }}</textarea>
                    @if( $errors->has('description') )
                        <span class="help-block">
                        	<strong>{{ $errors->first('description') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Price</label>
                    <input type="text" class="form-control border-input" name="price" placeholder="Price" 
                    value="{{ $product->price }}">
                    @if ($errors->has('price'))
                        <span class="help-block">
                        <strong>{{ $errors->first('price') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Thumbnail</label>
                    <div class="pre_thumb" style="padding:10px;border:1px solid;width:80px;display:block;
                    margin-bottom: 5px;text-align:center;">
                    	<img src="{{asset('storage/app/'.$product->thumbnail)}}" width="50px" height="50px"/>
                    </div>
                    <input type="file" class="form-control border-input" name="thumb" placeholder="Product Thumbanil" value="{{ $product->thumbnail }}">
                    @if ($errors->has('thumb'))
                    <span class="help-block">
                        <strong>{{ $errors->first('thumb') }}</strong>
                    </span>
                    @endif
                  </div>
                </div>
            </div>
  
          <div class="row">
              <div class="col-md-6">
              	<input type="submit" class="btn btn-info btn-fill btn-wd" value="Update Product">
              	@if(session()->has('message'))
				<div class="alert alert-success">
					{{ session()->get('message') }}
				</div>
				@endif
              </div>
				
          </div>
            <div class="clearfix"></div>
        </form>
    </div>
</div>
@endsection

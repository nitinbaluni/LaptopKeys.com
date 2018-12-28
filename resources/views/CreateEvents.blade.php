@extends('layouts.dash')

@section('content')
<div class="card">
    <div class="header"><h4 class="title">Create Events</h4></div>
    <div class="content">
    	<form method="post" action="{{ route('create_product') }}" enctype="multipart/form-data">
        {{ csrf_field() }}
        <input name="author" type="hidden" value="{{ $user_id }}"/>
            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Title</label>
                    <input type="text" class="form-control border-input" name="title"placeholder="Product Title" value="{{ old('title') }}">
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
                    <textarea rows="5" class="form-control border-input" name="description" placeholder="Product description">
                    {{ old('description') }}
                    </textarea>
                    @if ($errors->has('description'))
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
                    <label>Location</label>
                    <input type="text" class="form-control border-input" name="location" 
                    placeholder="Location" value="{{ old('location') }}">
                    @if ($errors->has('location'))
                        <span class="help-block">
                        <strong>{{ $errors->first('location') }}</strong>
                        </span>
                    @endif
                  </div>
                </div>
            </div>

            <div class="row">
                <div class="col-md-6">
                  <div class="form-group">
                    <label>Price</label>
                    <input type="text" class="form-control border-input" name="price" placeholder="Price" value="{{ old('price') }}">
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
                    <input type="file" class="form-control border-input" name="thumb" placeholder="Product Thumbanil" value="{{ old('thumb') }}">
                    @if ($errors->has('thumb'))
                    <span class="help-block">
                        <strong>{{ $errors->first('thumb') }}</strong>
                    </span>
                    @endif
                  </div>
                </div>
            </div>
  
          <div class="row">
              <div class="col-md-6"><input type="submit" class="btn btn-info btn-fill btn-wd" value="Add Product"></div>
          </div>
            <div class="clearfix"></div>
        </form>
    </div>
</div>
@endsection

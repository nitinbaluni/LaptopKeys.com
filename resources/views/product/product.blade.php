@extends('layouts.dash')

@section('content')
<div class="card">
    <div class="header"><h4 class="title">Add Product</h4></div>
    <div class="content">
        <div class="container-fluid">
                <div class="row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="header">
                                <h4 class="title">{{ $product->title }}</h4>
                                <p class="category"><strong>Price: </strong>{{ $product->price }}</p>
                            </div>
                            <div class="content">
                            <p>{{$product->description}}</p>
                            </div>
                        </div>
                    </div>

                </div>
            </div>        
    </div>
</div>
@endsection

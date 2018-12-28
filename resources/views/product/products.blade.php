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
                                <h4 class="title">Striped Table</h4>
                                <form method="POST" action="{{ route('product.search') }}" role="search">
                                    {{ csrf_field() }}
                                    <input type="search" name="pro">
                                </form>
                                <p class="category">Here is a subtitle for this table</p>
                            </div>
                            <div class="content table-responsive table-full-width">
                             @if( $products )
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Thumbnail</th>
                                            <th>Name</th>
                                            <th>Salary</th>
                                            <th>Country</th>
                                            <th>City</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <?php 
                                    //dd($products);
                                    ?>
                                    @foreach( $products as $product )
                                        <tr>
                                            <td>{{ $product->id }}</td>
                                            <td>
                                            @if( $product->thumbnail )
                                            <a href="{{ url('/dashboard/product')."/".$product->id }}">
                                            <img src="{{asset('storage/app/'.$product->thumbnail)}}" height="50" width="50">
                                            </a>
                                            @else
                                            <img src="{{asset('storage/app/'.$product->thumbnail)}}" 
                                            height="50" width="50">
                                            @endif
                                            </td>
                                            <td>{{ $product->title }}</td>
                                            <td>{{ $product->description }}</td>
                                            <td>{{ $product->price }}</td>
                                            <td>{{ $product->created_at }}</td>
                                            <td>
                                            <a href="javascript:void(0);" data-token="{{ csrf_token() }}" data-id="{{$product->id}}" class="delete-product">Delete</a> | 
                                            <a href="{{ route('dashboard.product.edit', ['id' => $product->id]) }}" class="delete-product">Edit</a>
                                            </td>
                                        </tr>
                                    @endforeach    
                                    </tbody>
                                </table>
                                <div class="dataTables_paginate paging_simple_numbers" id="example2_paginate">
                                {{ $products->links() }}
                                </div>
                            @endif
                            </div>
                        </div>
                    </div>

                </div>
            </div>        
    </div>
</div>
@endsection
<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model{
	protected $table = 'products';
    protected $fillable = [
       'author', 'title', 'description', 'price', 'thumbnail'
    ];

    public function user(){
    	return $this->belongsTo( 'App\User', 'author' );
	}
}
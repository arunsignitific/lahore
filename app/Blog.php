<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Cviebrock\EloquentSluggable\Sluggable;

class Blog extends Model
{
    use Sluggable; 
    
    /**
    * Return the sluggable configuration array for this model.
    *
    * @return array
    */
   public function sluggable()
   {
       return [
           'slug' => [
               'source' => 'title'
           ]
       ];
   }
   
    public function blogCategory()
    {
        return $this->belongsTo('App\BlogCategory');
    }

    public function blogAuthor()
    {
        return $this->belongsTo('App\BlogAuthor');
    }
}

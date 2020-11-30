<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class ProductDetail extends Model
{
    public function brand()
    {
        return $this->belongsTo('App\Brand');
    }

    public function caseMaterial()
    {
        return $this->belongsTo('App\CaseMaterial');
    }

    public function caseShape()
    {
        return $this->belongsTo('App\CaseShape');
    }

    public function caseSize()
    {
        return $this->belongsTo('App\CaseSize');
    }

    public function collection()
    {
        return $this->belongsTo('App\Collection');
    }

    public function dialColour()
    {
        return $this->belongsTo('App\DialColour');
    }

    public function gender()
    {
        return $this->belongsTo('App\Gender');
    }

    public function glassMaterial()
    {
        return $this->belongsTo('App\GlassMaterial');
    }

    public function movement()
    {
        return $this->belongsTo('App\Movement');
    }

    public function movementType()
    {
        return $this->belongsTo('App\MovementType');
    }

    public function strapColour()
    {
        return $this->belongsTo('App\StrapColour');
    }

    public function strapMaterial()
    {
        return $this->belongsTo('App\StrapMaterial');
    }

    public function colour()
    {
        return $this->belongsTo('App\Colour');
    }

    public function clockType()
    {
        return $this->belongsTo('App\ClockType');
    }
}

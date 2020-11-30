<?php

// This class file to define all general functions

namespace App\Helpers;


use Auth;

class Helper
{
    static function csvread($filename){        
        $tmp_array=array();
        if (($handle = fopen($filename, "r")) !== FALSE) {
        while (($data = fgetcsv($handle, 1000, ",")) !== FALSE) {                       
                    array_push($tmp_array,$data);                
            }
             
        }
        
        return $tmp_array;
    }
}

?>
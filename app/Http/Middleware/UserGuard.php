<?php

namespace App\Http\Middleware;

use Closure; 
use Illuminate\Support\Facades\Auth;

class UserGuard 
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @param  string|null  $guard
     * @return mixed
     */
    public function handle($request, Closure $next, $guard = null)
    {


   $fullinfo = $request->session()->all();

        if(isset($fullinfo["name"])){
            if($fullinfo["name"]->user_type == "ADMIN" && $fullinfo["name"]->status == "ACTIVE" && $fullinfo["name"]->email != "" && $fullinfo["name"]->password != ""){
                // User Login
                return $next($request);
                // return redirect("dashboard");
            }
        }    
        else{
            // User Not Login
            echo 'User Not Login';
           // return redirect("login");
        }
    }
}

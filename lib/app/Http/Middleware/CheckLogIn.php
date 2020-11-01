<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class CheckLogIn
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        if(Auth::check()){
            $user = Auth::user();
            if($user->level == 1)
                return $next($request);
            else
                return redirect('login')->with('error','Bạn không phải là Admin!!!');
        }else{
            return redirect('login')->with('error','Bạn phải đăng nhập trước khi vào trang admin!!!');
        }
    }
}

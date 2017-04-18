<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ViewController extends Controller
{
    //
    public function index()
    {
        $data = [
            'name' => '杠子大帅',
            'kk'   => '2222'
        ];
        $title = '我是大帅哥';

//        return view('my_laravel')->with('data',$data);
         return view('my_laravel',compact('data','title'));
    }
    public function view()
    {
        return view('view');
    }
    public  function article()
    {
        return view('article');
    }
    public function layouts()
    {
        return view('layouts');
    }
}

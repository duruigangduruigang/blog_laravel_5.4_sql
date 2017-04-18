<?php

namespace App\Http\Controllers\Admin;

use App\Http\Model\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Input;
use Illuminate\Support\Facades\Validator;


class IndexController extends commonController
{
    //
    public function index()
    {
        return view('admin.index');
    }

    public function info()
    {
        return view('admin.info');
    }

    /**
     * 修改管理员密码
     */
    public function pass()
    {
        if($input = Input::all()){
            $rules = [
                'password'=>'required|between:6,20|confirmed',//必填，6，20 2次密码必须一样   注意修改  重复密码  name=password_confirmation
            ];
            $message = [
                'password.required'=>'新密码不能为空！',
                'password.between'=>'新密码必须在6-20位之间！',
                'password.confirmed'=>'两次密码必须一致！'
            ];
            $validator = Validator::make($input,$rules,$message);
            if($validator->passes()){
                $user  = User::first();
                $password = Crypt::decrypt($user->user_password);
//dd($password);
                if($input['password_o'] == $password){
                    $user->user_password = Crypt::encrypt($input['password']);
                    $user->update();
                    return back()->with('errors','修改成功！');

                }else{
                    return back()->with('errors','原密码错误！');
                }
            }else{
                return back()->withErrors($validator);
            }
        }else{
            return view('admin.pass');
        }

    }


}

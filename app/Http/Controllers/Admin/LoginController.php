<?php
/**
 * Created by PhpStorm.
 * User: DRG
 * Date: 2017/3/22
 * Time: 23:56
 */
namespace App\Http\Controllers\Admin;//注意命名空间
//use App\Http\Controllers\Controller;//注意命名空间

use App\Http\Model\User;
use Illuminate\Support\Facades\Crypt;
use Illuminate\Support\Facades\Input;

require_once ('/ORG/code/code.class.php');
class LoginController extends commonController
{
   public function index()
   {
      return view('welcome');
   }
    public  function  login()
    {

        if($input = Input::all()){//相当于tp  is_post
            $getcode = new \Code;
            $_code   =  $getcode->get();
            if(strtoupper($input['code']) != $_code){
                return back()->with('msg','验证码错误！');
            }
            $user = User::first();//all 所有   first()第一条
            if($user->user_name!= $input['user_name'] || Crypt::decrypt($user->user_password)!= $input['user_password']){
                return back()->with('msg','用户名或者密码错误！');
            }
//            dd($user->user_name);
            session(['user'=>$user]);
            return redirect('admin/index');//跳控制器   必须先配置路由
        }else{
//            dd($_SERVER);
            return view('admin/login');
        }
    }
/*
退出登录
*/
    public function quit()
    {
        session(['user'=>null]);
        return redirect('admin/login');
    }
    public function code()
    {
        $code = new \Code;
        $code->make();
    }
    /*
    *密码加密
    */
    public function crypt()
    {
        $str = '123456';
        echo Crypt::encrypt($str);//加密     decrypt 解密

    }
}
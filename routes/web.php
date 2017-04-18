<?php



/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| This route group applies the "web" middleware group to every route
| it contains. The "web" middleware group is defined in your HTTP
| kernel and includes session state, CSRF protection, and more.
|
*/
Route::group(['middleware' => ['web']], function () {

    Route::get('/', 'Home\IndexController@index');
    Route::get('/cate/{cat_id}', 'Home\IndexController@cate');//分类
    Route::get('/a/{art_id}', 'Home\IndexController@article');//文章


    Route::any('admin/login', 'Admin\LoginController@login');//any  get  post都可以
    Route::get('admin/code', 'Admin\LoginController@code');//验证码

    Route::get('admin/crypt', 'Admin\LoginController@crypt');//验证码

});
//使用了这个 才可以开始session  和scrf保护  admin.login是中间件里面的名字

//中间件的作用：过滤  和验证
//  prefix   前缀   namespace命名空间
Route::group(['middleware' => ['web','admin.login'],'prefix'=>'admin','namespace'=>'Admin'], function () {

//    Route::get('admin/crypt', 'Admin\LoginController@crypt');//测试密码加密   这个是没有加前缀时候的
//    Route::get('admin/getcode', 'Admin\IndexController@getcode');//session  验证码

    Route::get('index', 'IndexController@index');//加前缀后
    Route::get('quit', 'LoginController@quit');//验证码quit
    Route::get('info', 'IndexController@info');
    Route::any('pass', 'IndexController@pass');//修改密码

    Route::post('category/changorder', 'CategoryController@changorder');//修改密码
    Route::resource('category', 'CategoryController');//资源路由分类
    Route::resource('article', 'ArticleController');//资源路由

    Route::post('links/changeorder', 'LinksController@changeOrder');//修改
    Route::resource('links', 'LinksController');

    Route::post('navs/changeorder', 'NavsController@changeOrder');//修改
    Route::resource('navs', 'NavsController');

    Route::post('config/changeorder', 'ConfigController@changeOrder');//修改
    Route::post('config/changecontent', 'ConfigController@changecontent');//修改内容  ajax
    Route::resource('config', 'ConfigController');//配置

    Route::any('upload', 'CommonController@upload');//图片上传

});

<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Navs extends Model
{
    protected $table = 'navs';//如果不定义  默认是users
    protected $primaryKey = 'nav_id';//如果不定义会找id    而表中是写的user_id    find(1)就是查询user_id = 1;
    public $timestamps = false;//否则在update()  时他会自动插入数据库updata_at更新时间  数据库没有这个字段会报错 1加这个2数据库增加字段
    protected $guarded = [];//排除为空的guarded
}

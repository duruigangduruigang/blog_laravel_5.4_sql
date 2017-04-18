<?php

namespace App\Http\Model;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    //
    protected $table = 'category';//如果不定义  默认是users
    protected $primaryKey = 'cate_id';//如果不定义会找id    而表中是写的user_id    find(1)就是查询user_id = 1;
    public $timestamps = false;//否则在update()  时他会自动插入数据库updata_at更新时间  数据库没有这个字段会报错 1加这个2数据库增加字段
    protected $guarded = [];//排除为空的guarded

    public static function tree()
    {
        $categorys = Category::orderBy('cate_order', 'asc')->get();
        return  (new Category)->getTree($categorys,'cate_name','cate_id','cate_pid',0);
    }
    //分类组合
    public function getTree($data,$field_name,$field_id='id',$field_pid='pid',$pid='0')
    {
        $arr = array();
        foreach ($data as $k=>$v)
        {
            if($v->$field_pid == $pid)
            {
                $arr[] = $data[$k];
                $data[$k]["_".$field_name] =  $data[$k][$field_name];
                foreach ($data as $m=>$n)
                {
                    if($n->$field_pid == $v->$field_id)
                    {
                        $data[$m]["_".$field_name] = '|-- '. $data[$m][$field_name];
                        $arr[] = $data[$m];
                    }
                }
            }
        }
        return $arr;

    }
}

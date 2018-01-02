<?php
/**
 * Created by PhpStorm.
 * User: Vitaliy
 * Date: 21.12.2017
 * Time: 15:47
 */

namespace app\models;
use yii\db\ActiveRecord;

class Product extends ActiveRecord
{

    public function behaviors()
    {
        return [
            'image' => [
                'class' => 'rico\yii2images\behaviors\ImageBehave',
            ]
        ];
    }

    public static function tableName(){
        return 'Product';
    }

    public function getCategory(){
        return $this->hasOne(Category::className(), ['id' => 'category_id']);
    }
}
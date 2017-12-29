<?php
/**
 * Created by PhpStorm.
 * User: Vitaliy
 * Date: 21.12.2017
 * Time: 15:47
 */

namespace app\models;
use yii\db\ActiveRecord;

class Category extends ActiveRecord
{

    public static function tableName(){
        return 'category';
    }

    public function getProducts(){
        return $this->hasMany(Product::className(), ['category_id' => 'id']);
    }
}
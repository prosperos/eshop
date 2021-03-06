<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\modules\admin\models\Product */

$this->title = $model->name;
$this->params['breadcrumbs'][] = ['label' => 'Products', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="product-view">

    <h1><?= Html::encode($this->title) ?></h1>

    <p>
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </p>
    <?php $img = $model->getImage();  ?>
    <?= DetailView::widget([
        'model' => $model,
        'attributes' => [
            'id',
            'category_id',
            'name',
            'content:raw',
            'price',
            'keywords',
            'description',
            [
                'attribute' => 'image',
                'value' => "<img src='{$img->getUrl()}'>",
                'format' => 'html',
            ],
            [
                'attribute' => 'hit',
                'value' => function($model){
                    return !$model->hit ? '<span class="text-danger">НЕТ</span>': '<span class="text-success">ДА</span>';
                },
                'format' => 'html',
            ],
            [
                'attribute' => 'new',
                'value' => function($model){
                    return !$model->new ? '<span class="text-danger">НЕТ</span>': '<span class="text-success">ДА</span>';
                },
                'format' => 'html',
            ],
            [
                'attribute' => 'sale',
                'value' => function($model){
                    return !$model->sale ? '<span class="text-danger">НЕТ</span>': '<span class="text-success">ДА</span>';
                },
                'format' => 'html',
            ],
        ],
    ]) ?>

</div>

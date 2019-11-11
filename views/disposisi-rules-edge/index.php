<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\DisposisiRulesEdgeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Disposisi Rules Edge';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="disposisi-rules-edge-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Disposisi Rules Edge', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <div class="box-body table-responsive no-padding">
        <?php // echo $this->render('_search', ['model' => $searchModel]); ?>
        <?= GridView::widget([
            'dataProvider' => $dataProvider,
            'filterModel' => $searchModel,
            'layout' => "{items}\n{summary}\n{pager}",
            'columns' => [
                ['class' => 'yii\grid\SerialColumn'],

                'id',
                'parent_node_id',
                'child_node_id',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

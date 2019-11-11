<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\ApprovalRulesEdgeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Approval Rules Edge';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="approval-rules-edge-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Approval Rules Edge', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'parent_rules_node_id',
                'child_rules_node_id',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

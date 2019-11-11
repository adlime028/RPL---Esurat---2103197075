<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\DisposisiRulesNodeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Disposisi Rules Node';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="disposisi-rules-node-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Disposisi Rules Node', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'instansi_id',
                'jabatan_id',
                'penerima_surat',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

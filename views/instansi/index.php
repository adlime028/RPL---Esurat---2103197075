<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\InstansiSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Instansi';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="instansi-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Instansi', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'nama',
                'alamat:ntext',
                'no_telepon',
                'kode_pos',
                // 'fax',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

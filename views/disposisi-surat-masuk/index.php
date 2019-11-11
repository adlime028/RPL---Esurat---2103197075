<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\DisposisiSuratMasukSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Disposisi Surat Masuk';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="disposisi-surat-masuk-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Disposisi Surat Masuk', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'surat_masuk_id',
                'jabatan_users_id',
                'status',
                'tanggal',
                // 'keterangan',
                // 'dari_jabatan_users_id',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

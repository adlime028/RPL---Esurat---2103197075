<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\JabatanUsersSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Jabatan Users';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="jabatan-users-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Jabatan Users', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'jabatan_id',
                'users_id',
                'golongan_id',
                'instansi_id',
                // 'status',
                // 'created_at',
                // 'updated_at',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

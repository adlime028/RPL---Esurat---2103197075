<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\ApprovalSuratKeluar */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Approval Surat Keluars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="approval-surat-keluar-view box box-primary">
    <div class="box-header">
        <?= Html::a('Update', ['update', 'id' => $model->id], ['class' => 'btn btn-primary btn-flat']) ?>
        <?= Html::a('Delete', ['delete', 'id' => $model->id], [
            'class' => 'btn btn-danger btn-flat',
            'data' => [
                'confirm' => 'Are you sure you want to delete this item?',
                'method' => 'post',
            ],
        ]) ?>
    </div>
    <div class="box-body table-responsive no-padding">
        <?= DetailView::widget([
            'model' => $model,
            'attributes' => [
                'id',
                'surat_keluar_id',
                'jabatan_users_id',
                'status',
                'tanggal',
                'keterangan:ntext',
                'dari_jabatan_users_id',
            ],
        ]) ?>
    </div>
</div>

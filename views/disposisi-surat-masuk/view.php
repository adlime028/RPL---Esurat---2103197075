<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\DisposisiSuratMasuk */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Disposisi Surat Masuks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="disposisi-surat-masuk-view box box-primary">
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
                'surat_masuk_id',
                'jabatan_users_id',
                'status',
                'tanggal',
                'keterangan',
                'dari_jabatan_users_id',
            ],
        ]) ?>
    </div>
</div>

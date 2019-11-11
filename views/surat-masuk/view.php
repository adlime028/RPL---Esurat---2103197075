<?php

use yii\helpers\Html;
use yii\widgets\DetailView;

/* @var $this yii\web\View */
/* @var $model app\models\SuratMasuk */

$this->title = $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Surat Masuks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="surat-masuk-view box box-primary">
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
                'nomor_agenda',
                'no_surat',
                'surat_dari',
                'instansi_id',
                'is_antar_dinas',
                'kategori_surat_id',
                'sifat_id',
                'no_tindak_lanjut',
                'perihal:ntext',
                'tanggal',
                'lampiran',
                'file_surat',
                'file_lampiran',
                'jumlah_lampiran',
                'jabatan_users_id',
            ],
        ]) ?>
    </div>
</div>

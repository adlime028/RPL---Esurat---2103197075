<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SuratMasukSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Surat Masuk';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="surat-masuk-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Surat Masuk', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'nomor_agenda',
                'no_surat',
                'surat_dari',
                'instansi_id',
                // 'is_antar_dinas',
                // 'kategori_surat_id',
                // 'sifat_id',
                // 'no_tindak_lanjut',
                // 'perihal:ntext',
                // 'tanggal',
                // 'lampiran',
                // 'file_surat',
                // 'file_lampiran',
                // 'jumlah_lampiran',
                // 'jabatan_users_id',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

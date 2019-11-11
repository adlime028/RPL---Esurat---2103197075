<?php

use yii\helpers\Html;
use yii\grid\GridView;

/* @var $this yii\web\View */
/* @var $searchModel app\models\SuratKeluarSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = 'Surat Keluar';
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="surat-keluar-index box box-primary">
    <div class="box-header with-border">
        <?= Html::a('Create Surat Keluar', ['create'], ['class' => 'btn btn-success btn-flat']) ?>
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
                'nomor_klasifikasi',
                'file_lampiran',
                'perihal:ntext',
                'jabatan_id',
                // 'sifat_id',
                // 'kategori_surat_id',
                // 'isi_surat:ntext',
                // 'isi_lampiran_surat:ntext',
                // 'no_agenda',
                // 'tanggal',
                // 'instansi_id',
                // 'approval_surat_keluar_id',

                ['class' => 'yii\grid\ActionColumn'],
            ],
        ]); ?>
    </div>
</div>

<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\SuratKeluar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="surat-keluar-form box box-primary">
    <?php $form = ActiveForm::begin(); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'nomor_klasifikasi')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'file_lampiran')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'perihal')->textarea(['rows' => 6]) ?>

        <?= $form->field($model, 'jabatan_id')->textInput() ?>

        <?= $form->field($model, 'sifat_id')->textInput() ?>

        <?= $form->field($model, 'kategori_surat_id')->textInput() ?>

        <?= $form->field($model, 'isi_surat')->textarea(['rows' => 6]) ?>

        <?= $form->field($model, 'isi_lampiran_surat')->textarea(['rows' => 6]) ?>

        <?= $form->field($model, 'no_agenda')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'tanggal')->textInput() ?>

        <?= $form->field($model, 'instansi_id')->textInput() ?>

        <?= $form->field($model, 'approval_surat_keluar_id')->textInput() ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>

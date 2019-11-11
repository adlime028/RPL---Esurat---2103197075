<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\ApprovalSuratKeluar */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="approval-surat-keluar-form box box-primary">
    <?php $form = ActiveForm::begin(); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'surat_keluar_id')->textInput() ?>

        <?= $form->field($model, 'jabatan_users_id')->textInput() ?>

        <?= $form->field($model, 'status')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'tanggal')->textInput() ?>

        <?= $form->field($model, 'keterangan')->textarea(['rows' => 6]) ?>

        <?= $form->field($model, 'dari_jabatan_users_id')->textInput() ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>

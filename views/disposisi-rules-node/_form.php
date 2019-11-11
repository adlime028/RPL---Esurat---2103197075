<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\DisposisiRulesNode */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="disposisi-rules-node-form box box-primary">
    <?php $form = ActiveForm::begin(); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'instansi_id')->textInput() ?>

        <?= $form->field($model, 'jabatan_id')->textInput() ?>

        <?= $form->field($model, 'penerima_surat')->textInput() ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>

<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\AppovalRulesNode */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="appoval-rules-node-form box box-primary">
    <?php $form = ActiveForm::begin(); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'instansi_id')->textInput() ?>

        <?= $form->field($model, 'jabatan_id')->textInput() ?>

        <?= $form->field($model, 'bisa_menandatangani')->textInput() ?>

        <?= $form->field($model, 'bisa_atas_nama')->textInput() ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>
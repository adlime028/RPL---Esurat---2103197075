<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\Instansi */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="instansi-form box box-primary">
    <?php $form = ActiveForm::begin(); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'nama')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'alamat')->textarea(['rows' => 6]) ?>

        <?= $form->field($model, 'no_telepon')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'kode_pos')->textInput(['maxlength' => true]) ?>

        <?= $form->field($model, 'fax')->textInput(['maxlength' => true]) ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>

<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\models\DisposisiRulesEdge */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="disposisi-rules-edge-form box box-primary">
    <?php $form = ActiveForm::begin(); ?>
    <div class="box-body table-responsive">

        <?= $form->field($model, 'parent_node_id')->textInput() ?>

        <?= $form->field($model, 'child_node_id')->textInput() ?>

    </div>
    <div class="box-footer">
        <?= Html::submitButton('Save', ['class' => 'btn btn-success btn-flat']) ?>
    </div>
    <?php ActiveForm::end(); ?>
</div>

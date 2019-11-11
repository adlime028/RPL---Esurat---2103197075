<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ApprovalRulesEdge */

$this->title = 'Update Approval Rules Edge: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Approval Rules Edges', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="approval-rules-edge-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

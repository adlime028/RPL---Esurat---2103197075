<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\ApprovalRulesEdge */

$this->title = 'Create Approval Rules Edge';
$this->params['breadcrumbs'][] = ['label' => 'Approval Rules Edges', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="approval-rules-edge-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

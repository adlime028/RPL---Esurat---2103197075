<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Sifat */

$this->title = 'Update Sifat: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Sifats', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="sifat-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Golongan */

$this->title = 'Update Golongan: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Golongans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="golongan-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

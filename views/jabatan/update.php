<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Jabatan */

$this->title = 'Update Jabatan: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Jabatans', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="jabatan-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

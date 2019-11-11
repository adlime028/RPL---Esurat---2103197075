<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\Instansi */

$this->title = 'Update Instansi: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Instansis', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="instansi-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

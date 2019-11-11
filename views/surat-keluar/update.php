<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\SuratKeluar */

$this->title = 'Update Surat Keluar: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Surat Keluars', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="surat-keluar-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

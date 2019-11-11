<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\ApprovalSuratKeluar */

$this->title = 'Update Approval Surat Keluar: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Approval Surat Keluars', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="approval-surat-keluar-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\ApprovalSuratKeluar */

$this->title = 'Create Approval Surat Keluar';
$this->params['breadcrumbs'][] = ['label' => 'Approval Surat Keluars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="approval-surat-keluar-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

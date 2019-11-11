<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\SuratKeluar */

$this->title = 'Create Surat Keluar';
$this->params['breadcrumbs'][] = ['label' => 'Surat Keluars', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="surat-keluar-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

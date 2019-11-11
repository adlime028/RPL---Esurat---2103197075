<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\DisposisiSuratMasuk */

$this->title = 'Update Disposisi Surat Masuk: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Disposisi Surat Masuks', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="disposisi-surat-masuk-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

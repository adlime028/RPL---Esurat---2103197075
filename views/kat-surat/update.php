<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\KategoriSurat */

$this->title = 'Update Kategori Surat: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Kategori Surats', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="kategori-surat-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

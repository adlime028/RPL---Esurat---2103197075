<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\KategoriSurat */

$this->title = 'Create Kategori Surat';
$this->params['breadcrumbs'][] = ['label' => 'Kategori Surats', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="kategori-surat-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

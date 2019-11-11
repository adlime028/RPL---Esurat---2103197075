<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\DisposisiSuratMasuk */

$this->title = 'Create Disposisi Surat Masuk';
$this->params['breadcrumbs'][] = ['label' => 'Disposisi Surat Masuks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="disposisi-surat-masuk-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

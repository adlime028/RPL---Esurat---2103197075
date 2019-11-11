<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\SuratMasuk */

$this->title = 'Create Surat Masuk';
$this->params['breadcrumbs'][] = ['label' => 'Surat Masuks', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="surat-masuk-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Golongan */

$this->title = 'Create Golongan';
$this->params['breadcrumbs'][] = ['label' => 'Golongans', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="golongan-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

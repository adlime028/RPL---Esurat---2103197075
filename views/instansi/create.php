<?php

use yii\helpers\Html;


/* @var $this yii\web\View */
/* @var $model app\models\Instansi */

$this->title = 'Create Instansi';
$this->params['breadcrumbs'][] = ['label' => 'Instansis', 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="instansi-create">

    <?= $this->render('_form', [
    'model' => $model,
    ]) ?>

</div>

<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\models\JabatanUsers */

$this->title = 'Update Jabatan Users: ' . $model->id;
$this->params['breadcrumbs'][] = ['label' => 'Jabatan Users', 'url' => ['index']];
$this->params['breadcrumbs'][] = ['label' => $model->id, 'url' => ['view', 'id' => $model->id]];
$this->params['breadcrumbs'][] = 'Update';
?>
<div class="jabatan-users-update">

    <?= $this->render('_form', [
        'model' => $model,
    ]) ?>

</div>

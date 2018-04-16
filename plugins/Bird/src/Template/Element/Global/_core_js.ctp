<!-- Core JS files -->
<?= $this->Html->script('jquery.min')?>
<?= $this->Html->script('bootstrap.min')?>
<?= $this->Html->script('fancybox.min')?>
<?= $this->Html->script('forms/uniform.min');?>
<?= $this->Html->script('app')?>
<?= $this->fetch('core_script')?>
<?php $this->Html->script('script', ['block' => true]) ?>


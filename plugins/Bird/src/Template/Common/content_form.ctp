<?php $this->extend('/Common/content_header');?>

<!-- Content area -->
<div class="content">
    <?= $form;?>
    <?php $this->eventManager()->dispatch(new \Cake\Event\Event('Template.Element.before.admin.structure', $this)); ?>
    <?= $this->element('form_structure');?>
    <?= $this->fetch('body')?>
    <?= $this->Form->end() ?>
    <?= $this->element('Global/footer')?>
</div>
<!-- /content area -->

<?= $this->fetch('content') ?>


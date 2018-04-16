<?php $this->extend('/Common/content_header');?>
<?php
if($this->DataTables){
    $this->DataTables->draw();
}
?>

<?php $this->append('body')?>
<?php $this->eventManager()->dispatch(new \Cake\Event\Event('Template.Element.before.admin.structure', $this)); ?>
<?= $this->element('index_structure')?>
<?php $this->end()?>

<div class="content">
    <?= $this->fetch('body')?>
    <?= $this->element('Global/footer')?>
</div>

<?= $this->fetch('content')?>
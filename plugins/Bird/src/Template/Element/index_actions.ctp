<?php
if(!isset($id)){
    $id = '-ID-';
}
?>
<ul class="icons-list">
    <li class="dropdown">
        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i></a>
        <ul class="dropdown-menu dropdown-menu-right">
            <li><?= $this->Html->link('<i class="fa fa-eye"></i>' . __('View'), ['action' => 'view', $id], ['escape' => false]) ?></li>
            <li><?= $this->Html->link('<i class="fa fa-edit"></i> ' . __('Edit'), ['action' => 'edit', $id], ['escape' => false]) ?></li>
            <li><?= $this->Html->link('<i class="fa fa-edit"></i> ' . __('Delete'), ['action' => 'delete', $id], ['escape' => false]) ?></li>
            <li>
                <?= $this->Form->postLink('<i class="fa fa-trash"></i> ' . __('Delete'), ['action' => 'delete', $id], ['escape' => false, 'confirm' => __('Are you sure you want to delete # {0}?', $id)]) ?>
            </li>
        </ul>
    </li>
</ul>
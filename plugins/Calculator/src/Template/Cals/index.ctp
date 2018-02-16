<?= $this->Form->create(null, ['type' => 'file']);?>
<?= $this->Form->input('from_date');?>
<?= $this->Form->input('to_date');?>
<?= $this->Form->file('file');?>
<?= $this->Form->submit('calculate');?>
<?= $this->Form->end()?>
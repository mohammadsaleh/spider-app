<div class="panel panel-flat">
    <div class="panel-heading">
        <h4 class="hide panel-title"><?= $this->fetch('table_title', 'Table Title')?></h4>
        <div class="actions">
        <?=$this->fetch('actions')?>
        </div>
    </div>
    <div class="panel-body"><?= $this->fetch('table_description', 'Table Description')?></div>
    <div class="table-responsive">
        <?= $this->fetch('table')?>
    </div>
</div>
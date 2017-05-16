<div class="row">
    <div class="col-md-8">
        <div class="panel panel-flat">
            <?= $this->fetch('form') ?>
        </div>
    </div>
    <div class="col-md-4">
        <?php $this->start('box')?>
        <div class="panel panel-flat">
            <div class="panel-heading">
                <h4 class="panel-title"><?= $this->fetch('action_title', 'Actions')?></h4>
            </div>
            <div class="panel-body">
                <div class="actions">
                    <?php $this->start('actions')?>
                    <button type="submit" name="save" class="btn btn-success btn-sm">Save</button>
                    <button type="submit" name="apply" class="btn btn-info btn-sm">Apply</button>
                    <?= $this->Html->link(__('Cancel'), ['action' => 'index'], ['class' => 'btn btn-default btn-sm'])?>
                    <?= $this->fetch('actions')?>
                    <?php $this->end();?>

                    <?= $this->fetch('actions')?>
                </div>
            </div>
        </div>
        <?= $this->fetch('box')?>
        <?php $this->end()?>

        <?= $this->fetch('box')?>
    </div>
</div>
<div class="page-header">
    <div class="page-header-content">
        <div class="page-title">
            <h4><i class="fa fa-home position-left"></i> <span><?= $this->fetch('content_title', $title);?></span></h4>
        </div>
        <?php
        echo $this->Html->getCrumbList([
                'class' => 'breadcrumb',
                'lastClass' => 'active',
                'firstClass' => false,
            ], [
                'text' => '<i class="fa fa-home"></i>' . __('Home'),
                'url' => \Spider\Lib\SpiderNav::getDashboardUrl(),
                'escape' => false
            ]
        );
        ?>
    </div>
</div>
<div class="page-header-content">
    <?= $this->Flash->render();?>
</div>
<?= $this->fetch('content');?>


<div class="page-header">
    <div class="page-header-content">
        <div class="page-title">
            <h4><i class="fa fa-home position-left"></i> <span><?= $this->fetch('content_title', $title);?></span></h4>
        </div>
        <?php
        $this->Breadcrumbs->insertAt(0, '<i class="fa fa-home"></i>' . __('Home'),
            \Spider\Lib\SpiderNav::getDashboardUrl(), ['escape' => false]
        );
        echo $this->Breadcrumbs->render(['class' => 'breadcrumb']);
        ?>
    </div>
</div>
<div class="page-header-content">
    <?= $this->Flash->render();?>
</div>
<?= $this->fetch('content');?>


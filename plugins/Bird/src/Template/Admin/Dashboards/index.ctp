<?php
$this->extend('/Common/content_header');
$this->assign('content_title', !empty($title) ? $title : __('Dashboard'));
$this->Breadcrumbs->add(!empty($title) ? $title : __('Dashboard'));
?>
<div class="content">
<?= $this->fetch('dashboard');?>
<?= $this->element('Global/footer')?>
</div>


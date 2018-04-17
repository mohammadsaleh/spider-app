<?php
$this->extend('/Common/content_header');
$this->Html->script('/assets/js/pages/dashboard', ['block' => true]);
$this->assign('content_title', !empty($title) ? $title : __('Templates'));
$this->Breadcrumbs->add(!empty($title) ? $title : __('Templates'));
?>
<?php $this->append('actions');?>
<?= $this->Html->link('<i class="fa fa-plus positio-left"></i> ' . __('New Plugin'), ['action' => 'add'], ['class' => 'btn btn-success btn-sm', 'escape' => false]);?>
<?php $this->end();?>

<div class="content">
    <div class="panel panel-white">
        <div class="panel-heading">
            <?= $this->fetch('actions')?>
        </div>
        <div class="panel-body">
            <!-- Full sized thumbs -->
            <div class="row">
                <?php
                $row = 1;
                foreach ($plugins as $plugin):
                ?>
                <div class="col-lg-3 col-sm-3">
                    <div class="thumbnail">
                        <div class="thumb">
                            <?php
                            $screenshot = $plugin['name'] . '.screenshot.png';
                            $file = new \Cake\Filesystem\File(\Cake\Core\Plugin::path($plugin['name']) . 'webroot' . DS . 'img' . DS . 'screenshot.png');
                            if($file->exists()){
                                echo $this->Html->image($screenshot, ['style' => 'height:150px']);
                            }else{
                                $colors = ['pink', 'amber', 'brown', 'blue', 'indigo', 'purple', 'lime'];
                                $prefixes = ['300', '400', '600', '700', '800'];
                                $class = 'bg-' . $colors[rand(0, 6)] . '-' . $prefixes[rand(0, 4)];

                                echo $this->Html->tag('div', '', ['class' => $class, 'style' => 'height:150px']);
                            }
                            ?>
                        </div>
                        <div class="caption text-left">
                            <h6 class="text-semibold no-margin"><?= $plugin['name'] . (!empty($plugin['version']) ? (' v' . $plugin['version']) : '') ?>
                                <small class="display-block">Bird admin template for spider</small>
                                <small class="display-block"><a href="">mohammadsaleh.sayari@gmail.com</a></small>
                            </h6>
                            <ul class="icons-list mt-15">
                                <li>
                                    <?=
                                    $this->Form->postLink('<span class="label label-danger"><i class="fa fa-trash"></i>' . __d('plugin_manager', 'Remove') . '</span>',
                                        ['action' => 'delete', $plugin['id']],
                                        [
                                            'confirm' => __('Are you sure you want to delete # {0}?', $plugin['name']),
                                            'escape' => false,
                                            'data-popup' => "tooltip",
                                            'data-original-title' => "Remove"
                                        ]
                                    );
                                    ?>
                                </li>
                                <li>
                                    <?php if(!$plugin['default']){?>
                                    <a href="#" data-popup="tooltip" title="" data-original-title="default">
                                        <span class="label label-danger"><i class="fa fa-times"></i> <?= __d('plugin_manager', 'Default')?></span>
                                    </a>
                                    <?php }else{?>
                                        <span class="label label-success"><i class="fa fa-check"></i> <?= __d('plugin_manager', 'Default')?></span>
                                    <?php }?>
                                </li>
                                <li>
                                    <?php if($plugin['theme'] == 'admin'){?>
                                    <span class="label label-<?= $plugin['default'] ? 'info' : 'default'?>"><?= '# ' . __d('plugin_manager', 'Admin')?></span>
                                    <?php }else{?>
                                    <span class="label label-<?= $plugin['default'] ? 'info' : 'default'?>"><?= '# ' . __d('plugin_manager', 'Front')?></span>
                                    <?php }?>
                                </li>

                            </ul>
                        </div>

                    </div>
                </div>
                <?php endforeach; ?>
            </div>
        </div>
    </div>
    <?= $this->element('Global/footer')?>
</div>

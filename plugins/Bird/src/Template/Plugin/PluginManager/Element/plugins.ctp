<?php
$this->extend('/Common/content_index');
$this->Html->script('datatables/extensions/row_reorder.min', ['block' => true]);
$this->Html->script('datatables/extensions/responsive.min', ['block' => true]);
$this->element('index_scripts');
$this->assign('content_title', !empty($title) ? $title : __('List Plugin'));
$this->assign('table_title', 'Table Title');
$this->assign('table_description', 'Table Description');
$this->Html->addCrumb(!empty($title) ? $title : __('List Plugin'));
?>

<?php $this->append('actions');?>
<?= $this->Html->link('<i class="fa fa-plus positio-left"></i> ' . __('New Plugin'), ['action' => 'add'], ['class' => 'btn btn-success btn-sm', 'escape' => false]);?>

<?php $this->end();?>

<?php $this->append('table');?>
<table class="table datatable index-datatable">
    <thead>
        <tr>
            <th>#</th>
            <th><?= $this->Paginator->sort('id') ?></th>
            <th><?= $this->Paginator->sort('name') ?></th>
            <th><?= $this->Paginator->sort('version') ?></th>
            <th><?= $this->Paginator->sort('new_version') ?></th>
            <th><?= $this->Paginator->sort('status') ?></th>
            <th><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php
    $row = 1;
    foreach ($plugins as $plugin):
        ?>
        <tr>
            <td><?=$row++?></td>
            <td><?= $this->Number->format($plugin->id) ?></td>
            <td><?= h($plugin->name) ?></td>
            <td><?= h($plugin->version) ?></td>
            <td><?= h($plugin->new_version) ?></td>
            <td><?= $this->Number->format($plugin->status) ?></td>
            <td class="text-center">
                <ul class="icons-list">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><?= $this->Html->link(__('View'), ['action' => 'view', $plugin->id], ['escape' => false]) ?></li>
                            <li><?= $this->Html->link('<i class="fa fa-edit"></i> ' . __('Edit'), ['action' => 'edit', $plugin->id], ['escape' => false]) ?></li>
                            <li><?= $this->Form->postLink('<i class="fa fa-trash"></i> ' . __('Delete'), ['action' => 'delete', $plugin->id], ['escape' => false, 'confirm' => __('Are you sure you want to delete # {0}?', $plugin->id)]) ?></li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
<?php $this->end();?>

<?php $this->append('script');?>
<script type='text/javascript'>
    // Full row selection
    $(document).ready(function() {
        indexDataTable.destroy();
        $.extend($.fn.dataTable.defaults, {
            rowReorder: {selector: 'td:not(:last-child)'},
            dom: '<"datatable-header"fl><"datatable-scroll"t><"datatable-footer"ip>',
        });
        var table = $('.index-datatable').dataTable();
            // Setup event
        table.on('row-reorder', function (e, diff, edit) {
            alert('reordered');
//            var result = 'Reorder started on row: '+edit.triggerRow.data()[1]+'<br>';
//
//            for (var i=0, ien=diff.length ; i<ien ; i++) {
//                var rowData = table.row( diff[i].node ).data();
//
//                result += rowData[1]+' updated to be in position '+
//                    diff[i].newData+' (was '+diff[i].oldData+')<br>';
//            }
//
//            $('#event-result').html('Event result:<br>'+result);
        });
    });
</script>
<?php $this->end();?>


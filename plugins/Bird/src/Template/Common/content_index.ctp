<?php $this->extend('/Common/content_header');?>
<?php
if($this->DataTables){
    $this->DataTables->options(\Cake\Utility\Hash::merge([
        'autoWidth' => false,
        'fixedHeader' => true,
        'dom' => '<"datatable-header"fBl>r<"datatable-scroll"t><"datatable-footer"ip>',
        'buttons' => [
            'dom' => [
                'button' => ['className' => 'btn btn-primary']
            ],
            'buttons' => [
                ['extend' => 'copy', 'className' => 'copyButton' ],
                ['extend' => 'csv', 'className' => 'csvButton' ],
                ['extend' => 'excel', 'className' => 'excelButton' ],
                ['extend' => 'pdf', 'className' => 'pdfButton' ],
                ['extend' => 'print', 'className' => 'printButton']
            ]
        ],
        'language' => [
            'searchPlaceholder' => "Type to search...",
            'search' => '<span>Filter:</span> _INPUT_',
            'lengthMenu' => '<span>Show:</span> _MENU_',
            'processing' => "Waiting for response...",
            'paginate' => ['first' => 'First', 'last' => 'Last', 'next' => '&rarr;', 'previous' => '&larr;' ]
        ],
        'lengthMenu' => [ 10, 20, 50, 75, 100 ],
        'displayLength' => 10,
    ], $this->DataTables->config()))->applyOptions()->draw();
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
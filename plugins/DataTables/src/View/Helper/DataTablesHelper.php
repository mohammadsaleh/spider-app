<?php
namespace DataTables\View\Helper;

use Cake\View\Helper;
use DataTables\Lib\DataTable;

/**
 * DataTables helper
 *
 *
 */
class DataTablesHelper extends Helper
{

    public $helpers = ['Html'];
    private $__dataTables = [];
    private $__rendered = false;

    /**
     * Create new DataTable
     *
     * @param $selector
     * @return DataTable
     */
    public function create($selector)
    {
        $dataTable = new DataTable($selector);
        $this->__dataTables[] = $dataTable;
        return $dataTable;
    }

    /**
     * Draw datatable
     *
     * @param $dataTables
     * @return string
     */
    public function draw($dataTables = null, $block = true)
    {
        if(!$dataTables){
            $dataTables = $this->__dataTables;
        }
        if(!is_array($dataTables)){
            $dataTables = [$dataTables];
        }
        $output = '';
        if(!$this->__rendered){
            $this->__rendered = true;
            $output = '$.extend($.fn.dataTable.defaults, {"drawCallback": dataTableDrawCallback});';
        }
        foreach($dataTables as $dataTable){
            $columnSearch = $dataTable->getConfig('columnSearch');
            $dataTable->setConfig('columnSearch', null);

            $selector = $dataTable->selector();
            $selectorVar = $dataTable->getSelectorVar();

            $output .= '(typeof ' . $selectorVar . ' == "undefined") ? (' . $selectorVar . ' = {}) : "";';
            $output .= sprintf('$.extend(' . $selectorVar . ', %s);', json_encode($dataTable->getConfig()));
            $this->Html->scriptBlock($output, ['block' => $block]);
            if(!$dataTable->active()){
                continue;
            }
            $this->Html->script('forms/select2.min', ['block' => true]);
            $this->Html->script('DataTables.cakephp.dataTables', ['block' => 'core_script']);
            $this->Html->script('datatables/datatables.min.js', ['block' => 'core_script']);
            $this->Html->script('datatables/extensions/buttons.min', ['block' => 'core_script']);
            $this->Html->script('datatables/extensions/fixed_header.min', ['block' => 'core_script']);
            $output = 'jQuery(document).ready(function($){%s})';
            if($columnSearch){
                $this->Html->script('DataTables.cakephp.dataTables', ['block' => true]);
            }
            $initializeDataTable = 'if($("%s").length > 0){' . $selectorVar . ' = $("%s").dataTable(' . $selectorVar . '); %s}';
            $initializeDataTable .= "$('.table').on('init.dt', function(e){
                // Enable Select2 select for the length option
                $('.dataTables_length select').select2({
                    minimumResultsForSearch: Infinity,
                    width: 'auto'
                });
            });
            ";
            $output = sprintf($output, sprintf($initializeDataTable, $selector, $selector, $columnSearch ? 'initSearch(' . $selectorVar . ');' : ''));
            if($block){
                $this->Html->scriptBlock($output, ['block' => $block]);
                $output = '';
            }else{
                return $output;
            }
        }
        return '';
    }


}

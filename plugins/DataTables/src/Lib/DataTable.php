<?php
namespace DataTables\Lib;
/**
 * Created by PhpStorm.
 * User: lenovo YOGA
 * Date: 7/2/2017
 * Time: 12:13 PM
 */

use Cake\Core\InstanceConfigTrait;
use Cake\Utility\Inflector;

class DataTable
{
    use InstanceConfigTrait;

    protected $_defaultConfig = [];
    private $__selector = 'table';
    private $__status = true;

    public function __construct($selector)
    {
        $this->setConfig([
            'columnSearch' => true,
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
                'searchPlaceholder' => __d('data_tables', "Type to search..."),
                'search' => '<span>' . __d('data_tables', "Filter") . ':</span> _INPUT_',
                'lengthMenu' => '<span>' . __d('data_tables', "Show") . ':</span> _MENU_',
                'processing' => __d('data_tables', "Waiting for response..."),
                'paginate' => ['first' => __d('data_tables', 'First'), 'last' => __d('data_tables', 'Last'), 'next' => __d('data_tables', '&rarr;'), 'previous' => __d('data_tables', '&larr;') ],
                'info' => __d('data_tables', 'Showing _START_ to _END_ of _TOTAL_ entries'),
                'infoFiltered' => __d('data_tables', '(filtered from _MAX_ total entries)')
            ],
            'lengthMenu' => [10, 20, 50, 75, 100],
            'displayLength' => 10,
        ]);
        $this->selector($selector);
        return $this;
    }

    public function getSelectorVar()
    {
        $selector = $this->selector();
        if(!empty($selector)){
            $selector = str_replace('-', '_', $selector);
            $selector = trim($selector, '.');
            $selector = trim($selector, '#');
            return Inflector::variable($selector);
        }
        return null;
    }

    /**
     * Set/Get selector dom
     *
     * @param null $selector
     * @return null|string
     */
    public function selector($selector = null)
    {
        if(!$selector){
            return $this->__selector;
        }
        $this->__selector = $selector;
    }

    /**
     * Set ajax options and url
     *
     * @param $url
     * @return $this
     */
    public function ajax($url)
    {
        $this->setConfig([
            'ajax' => [
                'dataSrc' => "data",
                'url' => $url
            ],
            'processing' => true,
            'serverSide' => true,
            'deferRender' => true,
        ]);
        return $this;
    }

    /**
     * Active / DeActive DataTable to generate automatically or not
     *
     * @param null $status
     * @return $this|bool
     */
    public function active($status = null)
    {
        if(is_bool($status)){
            $this->__status = $status;
            return $this;
        }
        return $this->__status;
    }
}
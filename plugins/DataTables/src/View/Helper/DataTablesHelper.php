<?php
namespace DataTables\View\Helper;

use Cake\Utility\Hash;
use Cake\View\Helper;
use Cake\View\View;
use Cake\ORM\Query;
use Cake\View\StringTemplateTrait;

/**
 * DataTables helper
 *
 *
 */
class DataTablesHelper extends Helper
{

    use StringTemplateTrait;
    public $helpers = ['Html'];
    private $__selector = 'table';

    protected $_defaultConfig = [];

    /**
     * Set options exactly like datatables.net
     *
     * @param array $options
     * @return $this
     */
    public function options(array $options = [])
    {
        $this->_templater = $this->templater();
        $this->config($options);

        // -- load i18n
        if(!$this->config('dom')){
            $this->config('dom', '<<"row"<"col-sm-4"i><"col-sm-8"lp>>rt>');
        }
        $this->config('language', Hash::merge([
            'paginate' => [
                'next' => '<i class="fa fa-chevron-right"></i>',
                'previous' => '<i class="fa fa-chevron-left"></i>'
            ],
            'processing' => __d('DataTables', 'Your request is processing ...'),
            'lengthMenu' =>
                '<select class="form-control">' .
                '<option value="10">' . __d('DataTables', 'Display {0} records', 10) . '</option>' .
                '<option value="25">' . __d('DataTables', 'Display {0} records', 25) . '</option>' .
                '<option value="50">' . __d('DataTables', 'Display {0} records', 50) . '</option>' .
                '<option value="100">' .__d('DataTables', 'Display {0} records', 100) . '</option>' .
                '</select>',
            'info' => __d('DataTables', 'Showing _START_ to _END_ of _TOTAL_ entries'),
            'infoFiltered' => __d('DataTables', '(filtered from _MAX_ total entries)')
        ], $this->config('language')));

        return $this;
    }

    /**
     * Set ajax options and url
     *
     * @param $url
     * @param array $options
     * @return $this
     */
    public function ajax($url, $options = [])
    {
        $this->config(array_merge($this->config(), [
            'ajax' => [
                'dataSrc' => "data",
                'url' => $url
            ],
            'processing' => true,
            'serverSide' => true,
            'deferRender' => true,
        ], $options));
        return $this;
    }

    /**
     * Overwrite datatabe default options.
     *
     * @param bool $block
     * @return string
     */
    public function applyOptions($block = true)
    {
        $output = sprintf('$.extend($.fn.dataTable.defaults, %s);', json_encode($this->config()));
        if($block){
            $this->Html->scriptBlock($output, ['block' => $block]);
            return $this;
        }else{
            return $output;
        }
    }

    /**
     * Draw datatable
     * @param $selector
     * @return string
     */
    public function draw($selector = null, $block = true)
    {
        if(!$selector){
            $selector = $this->__selector;
        }
        if($selector){
            $output = 'jQuery(document).ready(function($){%s})';
            $output = sprintf($output, sprintf('if($("%s").length > 0){table = $("%s").DataTable()}', $selector, $selector));
            if($block){
                $this->Html->scriptBlock($output, ['block' => $block]);
            }else{
                return $output;
            }
        }
        return '';
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

}

<?php
namespace DataTables\Controller\Component;

use Cake\Controller\Component;
use Cake\Event\Event;
use Cake\ORM\TableRegistry;
use Cake\Utility\Hash;

/**
 * DataTables component
 */
class DataTablesComponent extends Component
{

    public $request;
    protected $_viewVars = [
        'recordsTotal' => 0,
        'recordsFiltered' => 0,
        'draw' => 0
    ];
    private $__query = null;
    private $__usedDataTable = false;

    public function initialize(array $config)
    {
        parent::initialize($config);
        $this->request = $this->__getController()->request;

    }
    public function dataTable($query)
    {
        $this->__usedDataTable = true;
        $this->__query = $query;
        $this->_viewVars['recordsTotal'] = $this->__query->count();
        $this->__addConditions();
        $this->_viewVars['recordsFiltered'] = $this->__query->count();
        $this->__addSort();
        $this->__addLimit();
        $this->__setViewVars();
        $results['datatable'] = $this->__query->toArray();
        return $results;

    }
    public function beforeRender(Event $event)
    {
        if($this->__usedDataTable){
            foreach($this->__getController()->viewVars as $var => $data){
                if(is_array($data) && isset($data['datatable'])){
                    $this->__getController()->viewVars[$var] = $data['datatable'];
                    $this->__getController()->set([
                        'data' => $data['datatable'],
                        '_serialize' => array_merge($this->__getController()->viewVars['_serialize'], ['data'])
                    ]);
                }
            }
        }
    }

    private function __getController()
    {
        return $this->_registry->getController();
    }
    private function __setViewVars()
    {
        $_serialize = [];
        foreach($this->_viewVars as $field => $value) {
            $_serialize[] = $field;
        }
        $this->__getController()->set($this->_viewVars);
        $this->__getController()->set('_serialize', $_serialize);
    }
    private function __addConditions()
    {
        // Don't support any search if columns data missing
        if(empty($this->request->getQuery('columns'))){
            return;
        }

        // Check table search field
        $globalSearch = $this->request->getQuery('search.value') ? $this->request->getQuery('search.value') : false;

        // Add conditions for both table-wide and column search fields
        $conditions = ['OR' => [], 'AND' => []];
        foreach($this->request->getQuery('columns') as $column){
            if(empty($column['name'])){
                continue;
            }
//            list($association, $field) = explode('.', $column['name']);
            if($globalSearch && $column['searchable'] == 'true' ) {
                $conditions['OR'][] = function($exp, $q) use ($column, $globalSearch){
                    return $exp->like($column['name'], '%'.$globalSearch.'%', 'string');
                };
            }
            $localSearch = $column['search']['value'];
            /*
                In some circumstances (no "table-search" row present), DataTables
                fills in all column searches with the global search. Compromise:
                Ignore local field if it matches global search.
            */
            if(!empty($localSearch) && ($localSearch !== $globalSearch)) {
//                $conditions['AND'][] = [$column['name'] => $column['search']['value']];
                $conditions['AND'][] = function($exp, $q) use ($column, $localSearch){
                    return $exp->like($column['name'], '%'.$localSearch.'%', 'string');
                };
            }
        }
        $conditions['OR'] ? $this->__query->where(function($exp) use($conditions){
            return $exp->or_($conditions['OR']);
        }) : false;
        $conditions['AND'] ? $this->__query->where($conditions['AND']) : false;
    }
    private function __addLimit(){
        // Add limit
        $length = $this->request->getQuery('length') ?: 10;
        $this->__query->limit($length);

        // Add offset
        $start = $this->request->getQuery('start') ?: 0;
        $this->__query->offset($start);
    }
    private function __addSort()
    {
        // Add order
        $orders = $this->request->getQuery('order');
        if(!empty($orders)) {
            foreach($orders as $item) {
                if(($column = $this->request->getQuery("columns.{$item['column']}.name")) && !empty($column)){
                    $this->__query->order([$column => $item['dir']]);
                }
            }
        }
    }
}

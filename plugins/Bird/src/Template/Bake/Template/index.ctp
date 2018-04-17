<%
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @since         0.1.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */
use Cake\Utility\Inflector;

$fields = collection($fields)
    ->filter(function($field) use ($schema) {
        return !in_array($schema->columnType($field), ['binary', 'text']);
    });

if (isset($modelObject) && $modelObject->behaviors()->has('Tree')) {
    $fields = $fields->reject(function ($field) {
        return $field === 'lft' || $field === 'rght';
    });
}

if (!empty($indexColumns)) {
    $fields = $fields->take($indexColumns);
}

%>
<?php
$this->extend('/Common/content_index');
$this->element('index_scripts');
$this->assign('content_title', !empty($title) ? $title : __('List <%= $singularHumanName %>'));
$this->assign('table_title', 'Table Title');
$this->assign('table_description', 'Table Description');
$this->Breadcrumbs->add(!empty($title) ? $title : __('List <%= $singularHumanName %>'));
?>

<?php $this->append('actions');?>
<%= $this->element('index_actions')%>
<?php $this->end();?>

<?php $this->append('table');?>
<table class="table datatable index-datatable">
    <thead>
        <tr>
            <th>#</th>
<% foreach ($fields as $field): %>
            <th><?= $this->Paginator->sort('<%= $field %>') ?></th>
<% endforeach; %>
            <th><?= __('Actions') ?></th>
        </tr>
    </thead>
    <tbody>
    <?php
    $row = 1;
    foreach ($<%= $pluralVar %> as $<%= $singularVar %>):
    ?>
        <tr>
            <td><?=$row++?></td>
<%
foreach ($fields as $field) {
    $isKey = false;
    if (!empty($associations['BelongsTo'])) {
    foreach ($associations['BelongsTo'] as $alias => $details) {
        if ($field === $details['foreignKey']) {
            $isKey = true;
%>
            <td><?= $<%= $singularVar %>->has('<%= $details['property'] %>') ? $this->Html->link($<%= $singularVar %>-><%= $details['property'] %>-><%= $details['displayField'] %>, ['controller' => '<%= $details['controller'] %>', 'action' => 'view', $<%= $singularVar %>-><%= $details['property'] %>-><%= $details['primaryKey'][0] %>]) : '' ?></td>
<%
                break;
            }
        }
    }
    if ($isKey !== true) {
        if (!in_array($schema->columnType($field), ['integer', 'biginteger', 'decimal', 'float'])) {
%>
            <td><?= h($<%= $singularVar %>-><%= $field %>) ?></td>
<%
        } else {
%>
            <td><?= $this->Number->format($<%= $singularVar %>-><%= $field %>) ?></td>
<%
        }
    }
}

$pk = '$' . $singularVar . '->' . $primaryKey[0];
%>
            <td>
                <ul class="icons-list">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-bars"></i></a>
                        <ul class="dropdown-menu dropdown-menu-right">
                            <li><?= $this->Html->link('<i class="fa fa-eye"></i> ' . __('View'), ['action' => 'view', <%= $pk %>], ['escape' => false]) ?></li>
                            <li><?= $this->Html->link('<i class="fa fa-edit"></i> ' . __('Edit'), ['action' => 'edit', <%= $pk %>], ['escape' => false]) ?></li>
                            <li><?= $this->Form->postLink('<i class="fa fa-trash"></i> ' . __('Delete'), ['action' => 'delete', <%= $pk %>], ['escape' => false, 'confirm' => __('Are you sure you want to delete # {0}?', <%= $pk %>)]) ?></li>
                        </ul>
                    </li>
                </ul>
            </td>
        </tr>
    <?php endforeach; ?>
    </tbody>
</table>
<?php $this->end();?>
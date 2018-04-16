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
        return $schema->columnType($field) !== 'binary';
    });

if (isset($modelObject) && $modelObject->behaviors()->has('Tree')) {
    $fields = $fields->reject(function ($field) {
        return $field === 'lft' || $field === 'rght';
    });
}
%>
<?php
$this->extend('/Common/content_form');

$this->assign('content_title', !empty($title) ? $title : __('<%= Inflector::humanize($action) %> <%= $singularHumanName %>'));
$this->Html->addCrumb(__('List <%= $pluralHumanName %>'), ['action' => 'index']);
$this->Html->addCrumb(!empty($title) ? $title : __('<%= Inflector::humanize($action) %> <%= $singularHumanName %>'));
$this->set('form', $this->Form->create($<%= $singularVar %>, ['class' => 'form-horizontal']));
?>

<% if (strpos($action, 'add') === false): %>
<?php $this->append('actions')?>
<?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $<%= $singularVar %>-><%= $primaryKey[0] %>], [
        'confirm' => __('Are you sure you want to delete # {0}?', $<%= $singularVar %>-><%= $primaryKey[0] %>),
        'class' => 'btn btn-danger btn-sm'
    ]). ' ';
?>
<?php $this->end()?>
<% endif; %>

<?php $this->append('form');?>
<div class="panel-heading">
    <h4 class="panel-title"><?= __('<%= Inflector::humanize($action) %> <%= $singularHumanName %>') ?></h4>
</div>
<div class="panel-body no-padding-bottom">
<%
foreach ($fields as $field) {
    if (in_array($field, $primaryKey)) {
        continue;
    }
    if (isset($keyFields[$field])) {
        $fieldData = $schema->column($field);
        if (!empty($fieldData['null'])) {
%>
    <div class="form-group">
        <label class="control-label col-lg-3"><?= __('<%= $field %>')?></label>
        <div class="col-lg-9">
        <?= $this->Form->control('<%= $field %>', ['options' => $<%= $keyFields[$field] %>, 'empty' => true, 'class' => 'form-control', 'label' => false]);?>
        </div>
    </div>

<%
        } else {
%>
    <div class="form-group">
        <label class="control-label col-lg-3"><?= __('<%= $field %>')?></label>
        <div class="col-lg-9">
        <?= $this->Form->control('<%= $field %>', ['options' => $<%= $keyFields[$field] %>, 'class' => 'form-control', 'label' => false]);?>
        </div>
    </div>
<%
        }
        continue;
    }
    if (!in_array($field, ['created', 'modified', 'updated'])) {
        $fieldData = $schema->column($field);
        if (in_array($fieldData['type'], ['date', 'datetime', 'time']) && (!empty($fieldData['null']))) {
%>
    <div class="form-group">
        <label class="control-label col-lg-3"><?= __('<%= $field %>')?></label>
        <div class="col-lg-9">
        <?= $this->Form->control('<%= $field %>', ['empty' => true, 'class' => 'form-control', 'label' => false]);?>
        </div>
    </div>
<%
        } else {
%>
    <div class="form-group">
        <label class="control-label col-lg-3"><?= __('<%= $field %>')?></label>
        <div class="col-lg-9">
        <?= $this->Form->control('<%= $field %>', ['class' => 'form-control', 'label' => false]);?>
        </div>
    </div>
<%
        }
    }
}
if (!empty($associations['BelongsToMany'])) {
    foreach ($associations['BelongsToMany'] as $assocName => $assocData) {
%>
    <div class="form-group">
        <label class="control-label col-lg-3"><?= __('<%= $field %>')?></label>
        <div class="col-lg-9">
        <?= $this->Form->control('<%= $assocData['property'] %>._ids', ['options' => $<%= $assocData['variable'] %>, 'class' => 'form-control', 'label' => false]);?>
        </div>
    </div>
<%
    }
}
%>
</div>
<?php $this->end();?>
<?= $this->Html->link('<i class="fa fa-plus positio-left"></i> ' . __('New <%= $singularHumanName %>'), ['action' => 'add'], ['class' => 'btn btn-success btn-sm', 'escape' => false]);?>
<%
$done = [];
foreach ($associations as $type => $data):
    foreach ($data as $alias => $details):
        if (!empty($details['navLink']) && $details['controller'] !== $this->name && !in_array($details['controller'], $done)):
%>
<?= $this->Html->link('<i class="fa fa-list positio-left"></i> ' . __('List <%= $this->_pluralHumanName($alias) %>'), ['controller' => '<%= $details['controller'] %>', 'action' => 'index'], ['class' => 'btn btn-info btn-sm', 'escape' => false]);?>
<?= $this->Html->link('<i class="fa fa-plus positio-left"></i> ' . __('New <%= $this->_singularHumanName($alias) %>'), ['controller' => '<%= $details['controller'] %>', 'action' => 'add'], ['class' => 'btn btn-success btn-sm', 'escape' => false]);?>
<%
            $done[] = $details['controller'];
        endif;
    endforeach;
endforeach;
%>
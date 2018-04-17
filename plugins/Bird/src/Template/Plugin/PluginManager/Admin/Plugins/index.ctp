<?php
$this->getEventManager()->dispatch(new \Cake\Event\Event('Template.Element.before.admin.structure', $this));
$isTheme = false;
if(in_array('theme', $this->request->getParam('pass'))){
    echo $this->element('theme');
}else{
    echo $this->element('plugins');
}

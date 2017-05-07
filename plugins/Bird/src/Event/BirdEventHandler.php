<?php
namespace Bird\Event;

use B2b\Lib\Utilities;
use Cake\Core\Configure;
use Cake\Event\Event;
use Cake\Event\EventListenerInterface;
use Cake\ORM\TableRegistry;
use Cake\Utility\Hash;
use Spider\Lib\Spider;

class BirdEventHandler implements EventListenerInterface
{

    public function implementedEvents()
    {
        return [
            'Spider.SpiderAppView.initialize' => 'onSpiderViewInitialize',
        ];
    }

    public function onSpiderViewInitialize(Event $event)
    {
        $View = $event->subject();
        if($View->Form){
            $View->Form->templates(Configure::read('FormTemplates.Bird'));
        }
    }
}
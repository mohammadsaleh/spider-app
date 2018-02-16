<?php
use Cake\Routing\Router;

Router::plugin('Calculator', function ($routes) {
    $routes->fallbacks('InflectedRoute');
});

Router::scope('/', ['plugin' => 'Calculator', 'controller' => 'Cals'], function($routes){
    $routes->connect('/calc', ['action' => 'index']);
});

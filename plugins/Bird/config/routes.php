<?php
use Cake\Routing\RouteBuilder;
use Cake\Routing\Router;

Router::plugin(
    'Bird',
    ['path' => '/bird'],
    function (RouteBuilder $routes) {
        $routes->fallbacks('DashedRoute');
    }
);

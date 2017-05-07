<?php
/**
 * Created by PhpStorm.
 * User: Sayari
 * Date: 7/21/2016
 * Time: 12:18 PM
 */
//\Spider\Lib\Hook::adminActions('*', 'Bird.Actions/google');
//\Spider\Lib\Hook::adminActions('Users/Users/index', 'Bird.Actions/google');
//\Spider\Lib\Hook::adminActions('Users/index', 'Bird.Actions/google');
//\Spider\Lib\Hook::adminActions('index', 'Bird.Actions/google');
//\Spider\Lib\Hook::adminActions('Settings/Settings/add', 'Bird.Actions/google', true);
//\Spider\Lib\Hook::adminActions('Users/Users/edit', 'Bird.Actions/google', true);
//\Spider\Lib\Hook::adminBox('Users/Users/edit', 'Bird.Box/tags');
\Spider\Lib\Hook::helper('*', ['DataTables' => ['className' => 'DataTables.DataTables']]);
\Spider\Lib\Hook::component('*', 'DataTables.DataTables');
\Spider\Lib\Hook::configFile('Bird', 'form_templates');
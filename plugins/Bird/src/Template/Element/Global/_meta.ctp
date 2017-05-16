<meta charset="utf-8">
<base href="<?= \Cake\Routing\Router::url('/', true)?>" >
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title><?= $title;?></title>
<?php
echo $this->Html->meta([
    'link' => '/assets/images/favicon.ico',
    'rel' => "apple-touch-icon",
    'type' => 'image/png',
    'sizes' => "144x144",
]);
echo $this->Html->meta([
    'link' => '/assets/images/favicon.ico',
    'rel' => "apple-touch-icon",
    'type' => 'image/png',
    'sizes' => "72x72",
]);
echo $this->Html->meta([
    'link' => '/assets/images/favicon.ico',
    'rel' => "apple-touch-icon",
    'type' => 'image/png',
]);
echo $this->Html->meta([
    'link' => '/assets/images/favicon.ico',
    'rel' => "icon",
    'type' => 'image/png',
]);
echo $this->Html->meta([
    'link' => '/assets/images/favicon.ico',
    'rel' => "shortcut icon",
]);
echo $this->fetch('meta');
?>
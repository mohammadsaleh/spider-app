<!-- Main navbar -->
<div class="navbar navbar-fixed-top">
	<div class="navbar-header">
		<a class="sidebar-mobile-toggle visible-xs"><i class="fa fa-ellipsis-v"></i></a>
		<a class="navbar-brand" href="index.htm"></a>
		<a class="sidebar-control sidebar-toggle hidden-xs pull-right"><i class="fa fa-bars"></i></a>
	</div>
	<ul class="navbar-right">
		<li class="dropdown clearfix">
			<a class="dropdown-toggle" id="settings" data-toggle="dropdown" aria-expanded="false"> <i class="fa fa-cog"></i></a>
			<ul class="dropdown-menu dropdown-menu-themes" aria-labelledby="settings">
				<li class="dropdown-header">Styles</li>
				<ul class="clearfix">
					<li class="color-option style dark" data-popup="tooltip" title="Dark Theme" theme="dark"></li>
					<li class="color-option style light" data-popup="tooltip" title="Light Theme" theme="light"></li>
					<li class="color-option style default" data-popup="tooltip" title="Default Theme" theme=""></li>
				</ul>
				<li role="separator" class="divider"></li>
				<li class="dropdown-header">Themes</li>
				<ul class="clearfix">
					<li class="color-option theme pink" data-popup="tooltip" title="Pink" theme="pink"></li>
					<li class="color-option theme purple" data-popup="tooltip" title="Purple" theme="purple"></li>
					<li class="color-option theme indigo" data-popup="tooltip" title="Indigo" theme="indigo"></li>
					<li class="color-option theme blue" data-popup="tooltip" title="Blue" theme="blue"></li>
					<li class="color-option theme teal" data-popup="tooltip" title="Teal" theme="teal"></li>
					<li class="color-option theme lime" data-popup="tooltip" title="Lime" theme="lime"></li>
					<li class="color-option theme amber" data-popup="tooltip" title="Amber" theme="amber"></li>
					<li class="color-option theme brown" data-popup="tooltip" title="Brown" theme="brown"></li>
					<li class="color-option theme slate" data-popup="tooltip" title="Slate" theme="slate"></li>
					<li class="color-option theme grey" data-popup="tooltip" title="Grey" theme="grey"></li>
					<li class="color-option theme default" data-popup="tooltip" title="Default" theme=""></li>
				</ul>
			</ul>
		</li>
        <?php echo $this->fetch('navbar');?>
		<?= $this->Spider->adminMenus(\Spider\Lib\SpiderNav::items('navbar'), [
			'arrow' => false,
//			'li-*' => ['class' => 'dropdown'],
			'a-0' => ['data-toggle' => 'dropdown',],
			'child_ul' => [
				'class' => 'dropdown-menu',
			]
		]);?>
	</ul>
</div>
<!-- /main navbar -->
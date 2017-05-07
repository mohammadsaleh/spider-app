<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<title>Bird (v1) - Responsive admin dashboard theme by Followtechnique</title>
	<link href="assets/images/favicon.ico" rel="apple-touch-icon" type="image/png" sizes="144x144">
	<link href="assets/images/favicon.ico" rel="apple-touch-icon" type="image/png" sizes="114x114">
	<link href="assets/images/favicon.ico" rel="apple-touch-icon" type="image/png" sizes="72x72">
	<link href="assets/images/favicon.ico" rel="apple-touch-icon" type="image/png">
	<link href="assets/images/favicon.ico" rel="icon" type="image/png">
	<link href="assets/images/favicon.ico" rel="shortcut icon">

	<!-- Global stylesheets -->
	<link href="fonts/fonts.css" rel="stylesheet" type="text/css">
    <link href="assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
	<link href="css/animate.min.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap.css" rel="stylesheet" type="text/css">
	<link href="css/main.css" rel="stylesheet" type="text/css">
	<link href="css/bootstrap-extended.css" rel="stylesheet" type="text/css">
	<link href="css/plugins.css" rel="stylesheet" type="text/css">
	<link href="css/color-system.css" rel="stylesheet" type="text/css">
	<link href="css/media.css" rel="stylesheet" type="text/css">
	<link type="text/css" rel="stylesheet" href="form_basic.htm" id="style">
	<link type="text/css" rel="stylesheet" href="form_basic.htm" id="theme">
	<!-- /global stylesheets -->

	<!-- Core JS files -->
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/fancybox.min.js"></script>
	<script src="js/app.js"></script><script src="js/forms/uniform.min.js"></script>
</head>
<body>
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
		<li class="dropdown notifications">
			<a class="dropdown-toggle" data-toggle="dropdown">
				<i class="fa fa-bell"></i>
				<span class="badge badge-info">5</span>
			</a>
			<div class="dropdown-menu">
				<ul class="media-list media-list-linked">
					<li class="media">
						<div class="media-left">
							<img src="assets/images/users/user1.png" class="img-circle img-sm" alt="">
						</div>
						<div class="media-body">
							<a href="form_basic.htm#" class="media-heading clearfix">
								Jane Elliott
								<span class="media-annotation pull-right">04:58</span>
							</a>
							<span>Suspendisse vel dolor dui. Cras bibendum elit ac...</span>
						</div>
					</li>
					<li class="media">
						<div class="media-left">
							<img src="assets/images/users/user2.png" class="img-circle img-sm" alt="">
						</div>
						<div class="media-body">
							<a href="form_basic.htm#" class="media-heading clearfix">
								Florence Douglas
								<span class="media-annotation pull-right">12:16</span>
							</a>

							<span>Aenean aliquam tempor odio nec tincidunt...</span>
						</div>
					</li>
					<li class="media">
						<div class="media-left">
							<img src="assets/images/users/user3.png" class="img-circle img-sm" alt=""></div>
						<div class="media-body">
							<a href="form_basic.htm#" class="media-heading clearfix">
								Eugine Turner
								<span class="media-annotation pull-right">22:48</span>
							</a>

							<span>Aliquam erat volutpat. Integer ut molestie elit...</span>
						</div>
					</li>
					<li class="media">
						<div class="media-left"><img src="assets/images/users/user4.png" class="img-circle img-sm" alt=""></div>
						<div class="media-body">
							<a href="form_basic.htm#" class="media-heading clearfix">
								Ann Porter
								<span class="media-annotation pull-right">Tue</span>
							</a>

							<span>Maecenas varius bibendum sagittis. Donec porttitor...</span>
						</div>
					</li>
					<li class="media">
						<div class="media-left"><img src="assets/images/users/user5.png" class="img-circle img-sm" alt=""></div>
						<div class="media-body">
							<a href="form_basic.htm#" class="media-heading clearfix">
								Jacqueline Howell
								<span class="media-annotation pull-right">Mon</span>
							</a>

							<span>Cras eleifend gravida ullamcorper. Mauris id congue nunc...</span>
						</div>
					</li>
				</ul>
				<div class="dropdown-content-footer">
					<a href="form_basic.htm#" data-popup="tooltip" title="All messages"><i class="fa fa-comments position-left"></i> Read all notifications</a>
				</div>
			</div>
		</li>
	</ul>
</div>
<!-- /main navbar -->

<!-- Page container -->
<div class="page-container" style="min-height:700px">

	<!-- Page content -->
	<div class="page-content"><!-- Main sidebar -->
<div class="sidebar sidebar-main hidden-xs">
	<div class="sidebar-content">

		<!-- User menu -->
		<div class="sidebar-user">
			<div class="category-content">
				<div class="media">
					<a href="form_basic.htm#" class="media-left"><img src="assets/images/users/user6.png" class="img-circle img-sm" alt=""></a>
					<div class="media-body">
						<span class="media-heading text-semibold">Andrew Brewer</span>
						<div class="text-size-mini text-muted">
							Network engineer
						</div>
					</div>

					<div class="media-right media-middle">
						<ul class="icons-list">
							<li>
								<a href="login_simple.htm"><i class="fa fa-sign-out"></i></a>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /user menu -->

		<!-- Main navigation -->
		<div class="sidebar-category sidebar-category-visible">
			<div class="category-content no-padding">
				<ul class="navigation navigation-main navigation-accordion">

					<!-- Main -->
					<li>
						<a href="index.htm"><i class="fa fa-desktop"></i> <span>Dashboard</span></a>
					</li>
					<!-- /Main -->

					<!-- Content -->
					<li class="navigation-header"><span>Content</span> <i class="fa fa-bars" title="Content"></i></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-th"></i> <span>Bootstrap Components</span></a>
						<ul>
							<li><a href="bootstrap_modals.htm">Modals</a></li>
							<li><a href="bootstrap_dropdowns.htm">Dropdown menus</a></li>
							<li><a href="bootstrap_tabs.htm">Tabs component</a></li>
							<li><a href="bootstrap_accordions.htm">Accordions</a></li>
							<li><a href="bootstrap_buttons.htm">Buttons</a></li>
							<li><a href="bootstrap_popups.htm">Tooltips and popovers</a></li>
							<li><a href="bootstrap_alerts.htm">Alerts</a></li>
							<li><a href="bootstrap_pagination.htm">Pagination</a></li>
							<li><a href="bootstrap_labels.htm">Labels and badges</a></li>
							<li><a href="bootstrap_loaders.htm">Loaders and bars</a></li>
							<li><a href="bootstrap_media.htm">Media objects</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-paper-plane"></i> <span>Appearance</span></a>
						<ul>
							<li><a href="appearance_content_panels.htm">Content panels</a></li>
							<li><a href="appearance_draggable_panels.htm">Draggable panels</a></li>
							<li><a href="appearance_typography.htm">Typography</a></li>
							<li><a href="appearance_helper_classes.htm">Helper classes</a></li>

						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-star"></i> <span>Icons</span></a>
						<ul>
							<li><a href="icons_glyphicons.htm">Glyphicons</a></li>
							<li><a href="icons_fontawesome.htm">Font awesome</a></li>
							<li><a href="icons_icomoon.htm">Icomoon</a></li>
						</ul>
					</li>
					<li><a href="animations.htm"><i class="fa fa-spinner fa-pulse"></i> <span>CSS3 Animations</span></a></li>
					<li><a href="color_system.htm"><i class="fa fa-eyedropper"></i> <span>Color system</span></a></li>
					<li><a href="grid_system.htm"><i class="fa fa-th-large"></i> <span>Grid system</span></a></li>
					<!-- /Content -->

					<!-- Forms -->
					<li class="navigation-header"><span>Forms</span> <i class="fa fa-check-square-o" title="Forms"></i></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-pencil"></i> <span>Form components</span></a>
						<ul>
							<li class="active"><a href="form_basic.htm">Basic inputs</a></li>
							<li><a href="form_groups.htm">Input groups</a></li>
							<li><a href="form_checkboxes_radios.htm">Checkboxes &amp; radios</a></li>
							<li><a href="form_select2.htm">Select2 selects</a></li>
							<li><a href="form_tag_inputs.htm">Tag inputs</a></li>
							<li><a href="form_sliders_noui.htm">NoUI sliders</a></li>
							<li><a href="form_wizard.htm">Form Wizard</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-text-height"></i> <span>Text Editors</span></a>
						<ul>
							<li><a href="editor_ckeditor.htm">CKEditor</a></li>
							<li><a href="editor_tinymce.htm">TinyMCE editor</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-eyedropper"></i> <span>Pickers</span></a>
						<ul>
							<li><a href="pickers_date.htm">Date & Time pickers</a></li>
							<li><a href="pickers_colors.htm">Color pickers</a></li>
						</ul>
					</li>
					<!-- /forms -->

					<!-- Data & charts -->
					<li class="navigation-header"><span>Charts &amp; Graphs</span> <i class="fa fa-area-chart" title="Charts &amp; Graphs"></i></li>
					<li><a href="form_basic.htm#"><i class="fa fa-pie-chart"></i> <span>C3 library</span></a>
						<ul>
							<li><a href="charts_c3_lines_areas.htm">Lines &amp; areas</a></li>
							<li><a href="charts_c3_bars_pies.htm">Bars &amp; pies</a></li>
							<li><a href="charts_c3_advanced.htm">Advanced examples</a></li>
							<li><a href="charts_c3_chart_axis.htm">Chart axis</a></li>
							<li><a href="charts_c3_grid_options.htm">Grid options</a></li>
						</ul>
					</li>
					<li><a href="form_basic.htm#"><i class="fa fa-line-chart"></i> <span>Google charts</span></a>
						<ul>
							<li><a href="charts_google_lines.htm">Line charts</a></li>
							<li><a href="charts_google_bars.htm">Bar charts</a></li>
							<li><a href="charts_google_pies.htm">Pie charts</a></li>
							<li><a href="charts_google_bubbles.htm">Bubble &amp; scatter charts</a></li>
						</ul>
					</li>
					<!-- /data & charts -->

					<!-- Extensions -->
					<li class="navigation-header"><span>Extensions</span> <i class="fa fa-puzzle-piece" title="Extensions"></i></li>
					<li><a href="extensions_pnotify.htm"><i class="fa fa-warning"></i> <span>PNotify notifications</span></a></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-cloud-upload"></i> <span>File uploaders</span></a>
						<ul>
							<li><a href="extensions_bootstrap.htm">Bootstrap file uploader</a></li>
							<li><a href="extensions_dropzone.htm">Dropzone</a></li>
						</ul>
					</li>
					<li><a href="extension_calendar.htm"><i class="fa fa-calendar"></i> <span>Event calendars</span></a></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-map"></i> <span>Maps integration</span></a>
						<ul>
							<li><a href="maps_vector.htm">Vector maps</a></li>
							<li>
								<a href="form_basic.htm#">Google maps</a>
								<ul>
									<li><a href="maps_google_basic.htm">Basics</a></li>
									<li><a href="maps_google_markers.htm">Markers</a></li>
									<li><a href="maps_google_layers.htm">Layers</a></li>
								</ul>
							</li>
						</ul>
					</li>
					<!-- /extensions -->

					<!-- Tables -->
					<li class="navigation-header"><span>Tables</span> <i class="fa fa-table" title="Tables"></i></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-table"></i> <span>Basic tables</span></a>
						<ul>
							<li><a href="table_basic.htm">Basic examples</a></li>
							<li><a href="table_borders.htm">Table borders</a></li>
							<li><a href="table_sizing.htm">Table sizing</a></li>
							<li><a href="table_styling.htm">Table styling</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-th-large"></i> <span>Data tables</span></a>
						<ul>
							<li><a href="datatable_basic.htm">Basic datatable</a></li>
							<li><a href="datatable_advanced.htm">Advanced datatables</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-plug"></i> <span>Data tables extensions</span></a>
						<ul>
							<li><a href="datatable_extension_row_reorder.htm">Row reorder</a></li>
							<li><a href="datatable_extension_column_reorder.htm">Columns reorder</a></li>
							<li><a href="datatable_extension_state_saving.htm">State Saving</a></li>
							<li><a href="datatable_extension_fixed_columns.htm">Fixed columns</a></li>
							<li><a href="datatable_extension_fixed_header.htm">Fixed header</a></li>
							<li><a href="datatable_extension_autofill.htm">Auto fill</a></li>
							<li><a href="datatable_extension_key_table.htm">Key table</a></li>
							<li><a href="datatable_extension_export_options.htm">Export options</a></li>
							<li><a href="datatable_extension_columns_selection.htm">Columns selection</a></li>
						</ul>
					</li>
					<li><a href="datatable_responsive.htm"><i class="fa fa-arrows-alt"></i> <span>Responsive tables</span></a></li>
					<!-- /tables -->

					<!-- Pages -->
					<li class="navigation-header"><span>Pages</span> <i class="fa fa-file-o" title="Pages"></i></li>
					<li><a href="page_email.htm"><i class="fa fa-envelope"></i> <span>Email</span></a></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-money"></i> <span>Invoice</span></a>
						<ul>
							<li><a href="invoice_list.htm">Invoice list</a></li>
							<li><a href="invoice_template.htm">Invoice template</a></li>
						</ul>
					</li>
					<li><a href="timeline.htm"><i class="fa fa-file-text-o"></i> <span>Timeline</span></a></li>
					<li><a href="page_tasks.htm"><i class="fa fa-tasks"></i> <span>Tasks</span></a></li>
					<li><a href="gallery.htm"><i class="fa fa-file-image-o"></i> <span>Media Gallery</span></a></li>
					<li><a href="search.htm"><i class="fa fa-search"></i> <span>Search</span></a></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-users"></i> <span>User pages</span></a>
						<ul>
							<li><a href="user_cards.htm">Users cards</a></li>
							<li><a href="user_list.htm">Users list</a></li>
							<li><a href="user_profile.htm">Simple user profile</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-user-plus"></i> <span>Login &amp; registration</span></a>
						<ul>
							<li><a href="login_simple.htm">User login</a></li>
							<li><a href="login_registration.htm">Simple registration</a></li>
							<li><a href="login_registration_advanced.htm">Detailed registration</a></li>
							<li><a href="login_unlock.htm">Unlock user</a></li>
							<li><a href="login_recover.htm">Reset password</a></li>
							<li><a href="login_tabbed.htm">Tabbed form</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-info-circle"></i> <span>Support</span></a>
						<ul>
							<li><a href="support_faq.htm">FAQ page</a></li>
							<li><a href="support_knowledgebase.htm">Knowledgebase</a></li>
							<li><a href="support_center.htm">Support Center</a></li>
						</ul>
					</li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-warning"></i> <span>Error pages</span></a>
						<ul>
							<li><a href="error_403.htm">Error 403</a></li>
							<li><a href="error_404.htm">Error 404</a></li>
							<li><a href="error_405.htm">Error 405</a></li>
							<li><a href="error_500.htm">Error 500</a></li>
							<li><a href="error_503.htm">Error 503</a></li>
							<li><a href="error_offline.htm">Offline page</a></li>
						</ul>
					</li>
					<li><a href="contact.htm"><i class="fa fa-phone"></i> <span>Contact Page</span></a></li>
					<!-- /pages -->

					<!-- Others -->
					<li class="navigation-header"><span>Extras</span> <i class="fa fa-folder-o" title="Extras"></i></li>
					<li><a href="page_starter.htm"><i class="fa fa-file-o"></i> <span>Starter Page</span></a></li>
					<li>
						<a href="form_basic.htm#"><i class="fa fa-sitemap"></i> <span>Menu levels</span></a>
						<ul>
							<li><a href="form_basic.htm#">Second level</a></li>
							<li>
								<a href="form_basic.htm#">Second level with child</a>
								<ul>
									<li><a href="form_basic.htm#">Third level</a></li>
									<li>
										<a href="form_basic.htm#">Third level with child</a>
										<ul>
											<li><a href="form_basic.htm#">Fourth level</a></li>
											<li><a href="form_basic.htm#">Fourth level</a></li>
										</ul>
									</li>
									<li><a href="form_basic.htm#">Third level</a></li>
								</ul>
							</li>
							<li><a href="form_basic.htm#">Second level</a></li>
						</ul>
					</li>
					<!-- /Others -->

				</ul>
			</div>
		</div>
		<!-- /main navigation -->

	</div>
</div>
		<!-- /main sidebar -->
		<!-- Main content -->
<div class="content-wrapper">

	<!-- Page header -->
	<div class="page-header">
		<div class="page-header-content">
			<div class="page-title">
				<h4><i class="fa fa-pencil position-left"></i> Basic inputs</h4>
			</div>
			<ul class="breadcrumb">
				<li><a href="index.htm"><i class="fa fa-home"></i>Home</a></li>
				<li>Form components</li>
				<li class="active">Basic inputs</li>
			</ul>
		</div>
	</div>
	<!-- /page header -->

	<!-- Content area -->
	<div class="content">

		<div class="row">
			<div class="col-md-6">
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">
						Basic inputs
						</h4>
					</div>
					<div class="panel-body no-padding-bottom">
						<form class="form-horizontal" action="form_basic.htm#">
							<div class="form-group">
								<label class="control-label col-lg-4">Default text input</label>
								<div class="col-lg-8">
									<input type="text" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Password</label>
								<div class="col-lg-8">
									<input type="password" class="form-control">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Input with placeholder</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" placeholder="Enter your username...">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Read only field</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" readonly="readonly" value="read only">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Disabled field</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" disabled="disabled" value="disabled">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">PBirdd value</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" value="http://">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Default select</label>
								<div class="col-lg-8">
									<select name="select" class="form-control">
										<option value="opt1">Usual select box</option>
										<option value="opt2">Option 2</option>
										<option value="opt3">Option 3</option>
										<option value="opt4">Option 4</option>
										<option value="opt5">Option 5</option>
										<option value="opt6">Option 6</option>
										<option value="opt7">Option 7</option>
										<option value="opt8">Option 8</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Disabled autocomplete</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" placeholder="Autocomplete is off" autocomplete="off">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Maximum value</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" maxlength="4" placeholder="Maximum 4 characters">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4 cursor-pointer" for="clickable-label">Focus on label click</label>
								<div class="col-lg-8">
									<input type="text" class="form-control" id="clickable-label" placeholder="Field focus on label click">
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Textarea</label>
								<div class="col-lg-8">
									<textarea rows="5" cols="5" class="form-control" placeholder="Default textarea"></textarea>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<div class="col-md-6">
				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">
						Basic selects
						</h4>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="form_basic.htm#">
							<div class="form-group">
								<label class="control-label col-lg-4">Single select</label>
								<div class="col-lg-8">
									<select name="select" class="form-control">
										<option value="opt1">Default select height</option>
										<option value="opt2">Option 2</option>
										<option value="opt3">Option 3</option>
										<option value="opt4">Option 4</option>
										<option value="opt5">Option 5</option>
										<option value="opt6">Option 6</option>
										<option value="opt7">Option 7</option>
										<option value="opt8">Option 8</option>
									</select>
								</div>
							</div>

							<div class="form-group">
								<label class="control-label col-lg-4">Multiple select</label>
								<div class="col-lg-8">
									<select multiple="multiple" class="form-control">
										<option selected="selected">Amsterdam</option>
										<option selected="selected">Atlanta</option>
										<option>Baltimore</option>
										<option>Boston</option>
										<option>Buenos Aires</option>
										<option>Calgary</option>
										<option selected="selected">Chicago</option>
										<option>Denver</option>
										<option>Dubai</option>
										<option>Frankfurt</option>
										<option>Hong Kong</option>
										<option>Honolulu</option>
										<option>Houston</option>
										<option>Kuala Lumpur</option>
										<option>London</option>
										<option>Los Angeles</option>
										<option>Melbourne</option>
										<option>Mexico City</option>
										<option>Miami</option>
										<option>Minneapolis</option>
									</select>
								</div>
							</div>
						</form>
					</div>
				</div>

				<div class="panel panel-flat">
					<div class="panel-heading">
						<h4 class="panel-title">
						Basic file inputs
						</h4>
					</div>
					<div class="panel-body">
						<form class="form-horizontal" action="form_basic.htm#">
							<div class="form-group">
								<label class="control-label col-lg-4">Default file input</label>
								<div class="col-lg-8">
									<input type="file" class="form-control">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-4">Styled file input</label>
								<div class="col-lg-8">
									<input type="file" class="file-styled">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-4">Styled file icon</label>
								<div class="col-lg-8">
									<input type="file" class="file-styled-icon">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-4">File input color</label>
								<div class="col-lg-8">
									<input type="file" class="file-styled-primary">
								</div>
							</div>
							<div class="form-group">
								<label class="control-label col-lg-4">File input icon</label>
								<div class="col-lg-8">
									<input type="file" class="file-styled-primary-icon">
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>


		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Input icons</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="form_basic.htm#">
					<fieldset>
						<div class="form-group">
							<label class="control-label col-lg-2">Input with icons</label>
							<div class="col-lg-10">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group has-feedback has-feedback-left">
											<input type="text" class="form-control input-lg" placeholder="Left icon, input large">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>

										<div class="form-group has-feedback has-feedback-left">
											<input type="text" class="form-control" placeholder="Left icon, input default">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>

										<div class="form-group has-feedback has-feedback-left">
											<input type="text" class="form-control input-sm" placeholder="Left icon, input small">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>

										<div class="form-group has-feedback has-feedback-left">
											<input type="text" class="form-control input-xs" placeholder="Left icon, input mini">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group has-feedback">
											<input type="text" class="form-control input-lg" placeholder="Right icon, input large">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>

										<div class="form-group has-feedback">
											<input type="text" class="form-control" placeholder="Right icon, input default">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>

										<div class="form-group has-feedback">
											<input type="text" class="form-control input-sm" placeholder="Right icon, input small">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>

										<div class="form-group has-feedback">
											<input type="text" class="form-control input-xs" placeholder="Left icon, input mini">
											<div class="form-control-feedback">
												<i class="fa fa-group"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Input with spinners</label>
							<div class="col-lg-10">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group has-feedback has-feedback-left">
											<input type="text" class="form-control" placeholder="Left spinner">
											<div class="form-control-feedback">
												<i class="fa fa-spinner spinner"></i>
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group has-feedback">
											<input type="text" class="form-control" placeholder="Right spinner">
											<div class="form-control-feedback">
												<i class="fa fa-spinner spinner"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Input with smaller icons</label>
							<div class="col-lg-10">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group has-feedback has-feedback-left">
											<input type="text" class="form-control" placeholder="Left smaller icon">
											<div class="form-control-feedback">
												<i class="fa fa-search text-size-base"></i>
											</div>
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group has-feedback">
											<input type="text" class="form-control" placeholder="Right smaller icon">
											<div class="form-control-feedback">
												<i class="fa fa-search text-size-base"></i>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Validation states</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="form_basic.htm#">
					<fieldset>
						<div class="form-group has-warning has-feedback">
							<label class="control-label col-lg-2">Warning with icon</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".has-warning">
								<div class="form-control-feedback">
									<i class="fa fa-warning"></i>
								</div>
								<span class="help-block">Warning input helper</span>
							</div>
						</div>

						<div class="form-group has-success has-feedback">
							<label class="control-label col-lg-2">Success with icon</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".has-success">
								<div class="form-control-feedback">
									<i class="fa fa-check-circle"></i>
								</div>
								<span class="help-block">Success input helper</span>
							</div>
						</div>

						<div class="form-group has-error has-feedback">
							<label class="control-label col-lg-2">Error with icon</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".has-error">
								<div class="form-control-feedback">
									<i class="fa fa-close"></i>
								</div>
								<span class="help-block">Error input helper</span>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Field options</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="form_basic.htm#">
					<fieldset>
						<div class="form-group">
							<label class="control-label col-lg-2">Tooltip on focus</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" data-popup="tooltip" data-trigger="focus" title="Tooltip on focus" placeholder="Click on input">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Tooltip on hover</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" data-popup="tooltip" title="Tooltip on hover" placeholder="Hover on input">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Rounded input</label>
							<div class="col-md-10">
								<input type="text" class="form-control input-rounded" placeholder="Rounded input">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Roundless input</label>
							<div class="col-md-10">
								<input type="text" class="form-control input-roundless" placeholder="Roundless input">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Fixed input sizing</label>
							<div class="col-lg-10">
								<div class="row">
									<div class="col-xs-3">
										<input type="text" class="form-control" placeholder=".col-xs-3">
									</div>

									<div class="col-xs-4">
										<input type="text" class="form-control" placeholder=".col-xs-4">
									</div>

									<div class="col-xs-5">
										<input type="text" class="form-control" placeholder=".col-xs-5">
									</div>
								</div>
								<span class="help-block">Available in 12 columns sizes since it's based on 12 columns grid</span>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Sizing options</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="form_basic.htm#">
					<fieldset>
						<div class="form-group form-group-xlg">
							<label class="control-label col-lg-2">XLarge form group</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".form-group-xlg">
							</div>
						</div>

						<div class="form-group form-group-lg">
							<label class="control-label col-lg-2">Large form group</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".form-group-lg">
							</div>
						</div>

						<div class="form-group form-group-sm">
							<label class="control-label col-lg-2">Small form group</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".form-group-sm">
							</div>
						</div>

						<div class="form-group form-group-xs">
							<label class="control-label col-lg-2">Mini form group</label>
							<div class="col-lg-10">
								<input type="text" class="form-control" placeholder=".form-group-xs">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Inputs only</label>
							<div class="col-lg-10">
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control input-xlg" type="text" placeholder="XLarge input height">
										</div>

										<div class="form-group">
											<input class="form-control input-lg" type="text" placeholder="Large input height">
										</div>

										<div class="form-group">
											<input class="form-control" type="text" placeholder="Default input height">
										</div>

										<div class="form-group">
											<input class="form-control input-sm" type="text" placeholder="Small input height">
										</div>

										<div class="form-group">
											<input class="form-control input-xs" type="text" placeholder="Mini input height">
										</div>
									</div>

									<div class="col-md-6">
										<div class="form-group">
											<select name="select" class="form-control input-xlg">
												<option value="opt1">XLarge select height</option>
												<option value="opt2">Option 2</option>
												<option value="opt3">Option 3</option>
												<option value="opt4">Option 4</option>
												<option value="opt5">Option 5</option>
												<option value="opt6">Option 6</option>
												<option value="opt7">Option 7</option>
												<option value="opt8">Option 8</option>
											</select>
										</div>

										<div class="form-group">
											<select name="select" class="form-control input-lg">
												<option value="opt1">Large select height</option>
												<option value="opt2">Option 2</option>
												<option value="opt3">Option 3</option>
												<option value="opt4">Option 4</option>
												<option value="opt5">Option 5</option>
												<option value="opt6">Option 6</option>
												<option value="opt7">Option 7</option>
												<option value="opt8">Option 8</option>
											</select>
										</div>

										<div class="form-group">
											<select name="select" class="form-control">
												<option value="opt1">Default select height</option>
												<option value="opt2">Option 2</option>
												<option value="opt3">Option 3</option>
												<option value="opt4">Option 4</option>
												<option value="opt5">Option 5</option>
												<option value="opt6">Option 6</option>
												<option value="opt7">Option 7</option>
												<option value="opt8">Option 8</option>
											</select>
										</div>

										<div class="form-group">
											<select name="select" class="form-control input-sm">
												<option value="opt1">Small select height</option>
												<option value="opt2">Option 2</option>
												<option value="opt3">Option 3</option>
												<option value="opt4">Option 4</option>
												<option value="opt5">Option 5</option>
												<option value="opt6">Option 6</option>
												<option value="opt7">Option 7</option>
												<option value="opt8">Option 8</option>
											</select>
										</div>

										<div class="form-group">
											<select name="select" class="form-control input-xs">
												<option value="opt1">Mini select height</option>
												<option value="opt2">Option 2</option>
												<option value="opt3">Option 3</option>
												<option value="opt4">Option 4</option>
												<option value="opt5">Option 5</option>
												<option value="opt6">Option 6</option>
												<option value="opt7">Option 7</option>
												<option value="opt8">Option 8</option>
											</select>
										</div>
									</div>
								</div>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Color options</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="form_basic.htm#">
					<fieldset>
						<div class="form-group">
							<label class="control-label col-lg-2">Text color</label>
							<div class="col-lg-10">
								<input type="text" class="form-control text-danger" value="Red text color">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Border color</label>
							<div class="col-lg-10">
								<input type="text" class="form-control border-primary border-lg text-teal" placeholder="Primary border color">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Background color</label>
							<div class="col-lg-10">
								<input type="text" class="form-control bg-danger" placeholder="Danger background color">
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-lg-2">Select color</label>
							<div class="col-lg-10">
								<select name="select" class="form-control bg-teal-400">
									<option value="opt1">Select color</option>
									<option value="opt2">Option 2</option>
									<option value="opt3">Option 3</option>
									<option value="opt4">Option 4</option>
									<option value="opt5">Option 5</option>
									<option value="opt6">Option 6</option>
									<option value="opt7">Option 7</option>
									<option value="opt8">Option 8</option>
								</select>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>

		<div class="panel panel-flat">
			<div class="panel-heading">
				<h4 class="panel-title">Type options</h4>
			</div>
			<div class="panel-body">
				<form class="form-horizontal" action="form_basic.htm#">
					<fieldset>
						<div class="form-group">
							<label class="control-label col-md-2">Datetime</label>
							<div class="col-md-10">
								<input class="form-control" type="datetime" name="datetime">
								<span class="help-block">Using <code>input type="datetime"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Date</label>
							<div class="col-md-10">
								<input class="form-control" type="date" name="date">
								<span class="help-block">Using <code>input type="date"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Month</label>
							<div class="col-md-10">
								<input class="form-control" type="month" name="month">
								<span class="help-block">Using <code>input type="month"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Time</label>
							<div class="col-md-10">
								<input class="form-control" type="time" name="time">
								<span class="help-block">Using <code>input type="time"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Week</label>
							<div class="col-md-10">
								<input class="form-control" type="week" name="week">
								<span class="help-block">Using <code>input type="week"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Number</label>
							<div class="col-md-10">
								<input class="form-control" type="number" name="number">
								<span class="help-block">Using <code>input type="number"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Email</label>
							<div class="col-md-10">
								<input class="form-control" type="email" name="email">
								<span class="help-block">Using <code>input type="email"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">URL</label>
							<div class="col-md-10">
								<input class="form-control" type="url" name="url">
								<span class="help-block">Using <code>input type="url"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Search</label>
							<div class="col-md-10">
								<input class="form-control" type="search" name="search">
								<span class="help-block">Using <code>input type="search"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Tel</label>
							<div class="col-md-10">
								<input class="form-control" type="tel" name="tel">
								<span class="help-block">Using <code>input type="tel"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Color</label>
							<div class="col-md-10">
								<input class="form-control" type="color" name="color">
								<span class="help-block">Using <code>input type="color"</code></span>
							</div>
						</div>

						<div class="form-group">
							<label class="control-label col-md-2">Range</label>
							<div class="col-md-10">
								<input class="form-control" type="range" name="range" min="0" max="10">
								<span class="help-block">Using <code>input type="range"</code></span>
							</div>
						</div>
					</fieldset>
				</form>
			</div>
		</div>
		<!-- /form horizontal -->
		<!-- Content area -->

<script type='text/javascript'>
	$(document).ready(function() {
		$(function() {
			// Default file input style
			$(".file-styled").uniform({
				fileButtonHtml: 'Browse'
			});

			// Default file input style with icon
			$(".file-styled-icon").uniform({
				fileButtonHtml: '<i class="fa fa-plus"></i>'
			});

			// Primary file input
			$(".file-styled-primary").uniform({
				wrapperClass: 'bg-primary',
				fileButtonHtml: 'Browse'
			});

			// Primary file input
			$(".file-styled-primary-icon").uniform({
				wrapperClass: 'bg-primary',
				fileButtonHtml: '<i class="fa fa-plus"></i>'
			});
		});
	});
</script>
		<!-- Footer -->
					<div class="footer pt-20">
						&copy; 2016 Bird - Admin theme by <a href="../../../followtechnique_default.html" target="_blank">FollowTechnique</a>&nbsp;&nbsp;&nbsp;&bull;&nbsp;&nbsp;&nbsp;Version - 1.0.0
					</div>
		<!-- /footer -->

				</div>
	<!-- /content area -->

			</div>
		<!-- /main content -->

		</div>
	<!-- /page content -->

	</div>
<!-- /page container -->
</body>
</html>
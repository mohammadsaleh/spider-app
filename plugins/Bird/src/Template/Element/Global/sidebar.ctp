<!-- Main sidebar -->
<div class="sidebar sidebar-main hidden-xs">
	<div class="sidebar-content">

		<!-- User menu -->
		<div class="sidebar-user">
			<div class="category-content">
				<div class="media">
					<a href="<?=\Cake\Routing\Router::url(\Spider\Lib\SpiderNav::getAdminScope() . '/profile');?>" class="media-left">
						<?= $this->Users->showAvatar('Auth.User.avatar', '/assets/images/users/user6.png', ['class' => 'img-circle img-sm'])?>
					</a>
					<div class="media-body">
						<span class="media-heading text-semibold">
                            <a href="<?=\Cake\Routing\Router::url(\Spider\Lib\SpiderNav::getAdminScope() . '/profile');?>" class="text-white">
                                <?= $this->Users->getFullName()?>
                            </a>
                        </span>
						<div class="text-size-mini text-muted">
							<?php
							//todo:: if user has multi roles so what role title should be shown.
							echo \Users\Lib\UserLib::getAuth()->user('roles.0.title')
							?>
						</div>
					</div>

					<div class="media-right media-middle">
						<ul class="icons-list">
							<li>
								<a href="<?= \Cake\Routing\Router::url(\Spider\Lib\SpiderNav::getAdminScope() . '/logout')?>"><i class="fa fa-sign-out"></i></a>
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
					<?= $this->Spider->adminMenus(\Spider\Lib\SpiderNav::items('sidebar'), ['arrow' => false]);?>
				</ul>
			</div>
		</div>
        <!-- /main navigation -->

	</div>
</div>
<!-- /main sidebar -->
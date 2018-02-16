<li class="dropdown notifications">
    <a class="dropdown-toggle" data-toggle="dropdown">
        <i class="fa fa-bell"></i>
        <?= $this->cell('Notifications.Inbox::unreadCount')?>
    </a>
    <div class="dropdown-menu">
        <ul class="media-list media-list-linked">
            <?php
            foreach($myNotifications as $notification){
            $notification['other_options'] = json_decode($notification['other_options'], JSON_UNESCAPED_UNICODE);
            $isFromAdmin = ($notification['from_user_id'] == 1);
            ?>
            <li class="media">
                <div class="media-left">
                    <?php
                    $avatar = '/assets/images/users/user4.png';
                    if(!empty($notification['from_user']['avatar'])){
                        $avatar = $notification['from_user']['avatar'];
                    }
                    echo $this->Html->image($avatar, ['class' => 'img-circle img-sm']);
                    ?>
                </div>
                <a href="<?= \Cake\Routing\Router::url('/view-notification/' . $notification['id']);?>" class="media-body">
                    <div class="media-heading clearfix">
                        <?= $notification['title']?>
                        <span class="media-annotation pull-right"><?= \Spider\Lib\Date\Persian::date('Y-m-d H:i', $notification['created']);?></span>
                    </div>
                    <span>
                        <?php
                        if(isset($notification['other_options']['excerpt'])){
                            echo $notification['other_options']['excerpt'];
                        }elseif(!empty($notification['body'])){
                            echo \Spider\Lib\Spider::getWords($notification['body'], 10) . ' ...';
                        }
                        ?>
                    </span>
                </a>
            </li>
            <?php }?>
        </ul>
        <?php if(!empty($myNotifications)){?>
        <div class="dropdown-content-footer">
            <a href="index.htm#" data-popup="tooltip" title="All messages"><i class="fa fa-comments position-left"></i> Read all notifications</a>
        </div>
        <?php }?>
    </div>
</li>

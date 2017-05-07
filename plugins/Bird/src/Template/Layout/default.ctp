<!DOCTYPE html>
<html lang="en">
    <head>
        <?= $this->element('Global/head');?>
    </head>
    <body>
        <?= $this->element('Global/navbar')?>
        <div class="page-container" style="min-height:700px">
            <div class="page-content">
                <?= $this->element('Global/sidebar');?>
                <div class="content-wrapper">
                    <?= $this->fetch('content');?>
                </div>
            </div>
        </div>
        <?= $this->element('Global/foot');?>
    </body>
</html>
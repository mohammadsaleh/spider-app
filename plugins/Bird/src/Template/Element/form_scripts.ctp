<?php $this->Html->script('forms/uniform.min.js', ['block' => true])?>
<?= $this->append('script');?>
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

            $(".styled, .multiselect-container input").uniform({
                radioClass: 'choice'
            });
            //
            // Contextual colors
            // Primary
            $(".control-primary").uniform({
                radioClass: 'choice',
                wrapperClass: 'border-primary-600 text-primary-800'
            });

            // Danger
            $(".control-danger").uniform({
                radioClass: 'choice',
                wrapperClass: 'border-danger-600 text-danger-800'
            });

            // Success
            $(".control-success").uniform({
                radioClass: 'choice',
                wrapperClass: 'border-success-600 text-success-800'
            });

            // Warning
            $(".control-warning").uniform({
                radioClass: 'choice',
                wrapperClass: 'border-warning-600 text-warning-800'
            });

            // Info
            $(".control-info").uniform({
                radioClass: 'choice',
                wrapperClass: 'border-info-600 text-info-800'
            });

            // Custom color
            $(".control-custom").uniform({
                radioClass: 'choice',
                wrapperClass: 'border-indigo-600 text-indigo-800'
            });

        });
    });
</script>
<?= $this->end()?>

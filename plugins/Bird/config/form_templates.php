<?php
return [
    'FormTemplates.Bird' => [
        'error' => '<div class="help-block">{{content}}</div>',
        'inputContainerError' => '<div class="input {{type}}{{required}} has-error">
            {{content}}
            <div class="form-control-feedback">
                <i class="fa fa-warning"></i>
            </div>
            {{error}}
        </div>',
    ]
];
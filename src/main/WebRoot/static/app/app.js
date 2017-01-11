'use strict';

/* App Module */
//创建一个模块springChat，做个模块以来springChat.controllers等模块
var springChat = angular.module('springChat', ['springChat.controllers',
                                               'springChat.services',
                                               'springChat.directives']);
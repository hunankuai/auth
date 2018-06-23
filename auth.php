<?php
// +----------------------------------------------------------------------
// | ThinkPHP [ WE CAN DO IT JUST THINK ]
// +----------------------------------------------------------------------
// | Copyright (c) 2006-2016 http://thinkphp.cn All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: yunwuxin <448901948@qq.com>
// +----------------------------------------------------------------------

return [
        'auth_on'           =>  true,                // 认证开关
        'auth_type'         =>  1,                   // 认证方式，1为实时认证；2为登录认证。
        'auth_group'        =>  'auth_group',        // 用户组数据表名
        'auth_group_access' =>  'auth_group_access', // 用户-用户组关系表
        'auth_rule'         =>  'auth_rule',         // 权限规则表
        'auth_user'         =>  'auth_user',            // 用户信息表
        'auth_user_id_field'=>  'id',                // 用户表ID字段名
];

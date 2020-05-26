<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>个人资料</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <meta name="format-detection" content="telephone=no">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
    <style>
        form input.layui-input[disabled] {
            background: #f2f2f2;
            color: #595963 !important;
        }

        .user_left {
            width: 100%;
            margin: 20px 0 0 20px;
        }

        .userAddress.layui-form-item .layui-input-inline {
            width: 23%;
        }

        .userAddress.layui-form-item .layui-input-inline:last-child {
            margin-right: 0;
        }

        .mustnode {
            display: block;
            margin-top: 6px;
            color: red;
            margin-left: 5px;
        }

        .layui-form-pane .layui-form-label {
            width: 150px;
        }

        .notice {
            color: #ff0000;
        }

        form input.layui-input {
            width: 195px;
        }

        /*适配*/
        @media screen and (max-width: 1050px) {
            /*用户信息*/
            .user_left {
                width: 100%;
                float: none;
                margin-left: 0;
            }

        }

        @media screen and (max-width: 450px) {
            .userAddress.layui-form-item .layui-input-inline {
                width: auto;
            }
        }
    </style>
</head>
<body class="childrenBody">
<div class="layui-fuild">

    <div class="layui-card">
        <div class="layui-card-header">個人信息</div>
        <div class="layui-card-body">
            <form class="layui-form layui-form-pane" action="">
                <blockquote class="layui-elem-quote layui-text notice">為了您的賬戶安全 , 請壹定正確填寫資料！找回賬戶等重要操作時平臺會核驗！
                </blockquote>
                <div class="user_left">
                    <div class="layui-form-item">
                        <label class="layui-form-label">用戶昵稱</label>
                        <div class="layui-input-inline">
                            <input type="text" value="{{ $user->name }}" name="username" id="username" disabled
                                   class="layui-input"
                                   lay-verify="required|username">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">帳戶余額</label>
                        <div class="layui-input-inline">
                            <input type="text" value="{{$user->money}}" disabled class="layui-input">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">郵箱</label>
                        <div class="layui-input-inline">
                            <input type="text" id="alipay" name="alipay" value="{{ $user->email }}" disabled
                                   class="layui-input">
                        </div>
                    </div>
                    <div class="layui-form-item">
                        <label class="layui-form-label">手機號碼</label>
                        <div class="layui-input-inline">
                            <input type="text" id="phone" name="phone" autocomplete="off" value="{{ $user->phone }}"
                                   disabled
                                   class="layui-input" lay-verify="required|phone">
                        </div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">新密碼</label>
                        <div class="layui-input-inline">
                            <input type="password" id="password" name="password" autocomplete="off" value=""
                                   class="layui-input" lay-verify="required">
                        </div>
                        <div class="layui-input-inline"><font class="mustnode">*必填</font></div>
                    </div>

                    <div class="layui-form-item">
                        <label class="layui-form-label">重復輸入新密碼</label>
                        <div class="layui-input-inline">
                            <input type="password" id="rpassword" name="rpassword" autocomplete="off" value=""
                                   class="layui-input" lay-verify="required">
                        </div>
                        <div class="layui-input-inline"><font class="mustnode">*必填</font></div>
                    </div>
                    {{ csrf_field() }}


                    <div class="layui-form-item">
                        <div class="layui-input-inline">
                            <button class="layui-btn layui-btn-normal submit" lay-submit="" lay-filter="add">保存信息
                            </button>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>

</div>
<script type="text/javascript" src="/layui/layui.js"></script>
<script type="text/javascript">
    layui.config({
        base: "/"
    }).use(['form', 'layer'], function () {
        $ = layui.jquery;
        var form = layui.form;

        form.on('submit(add)', function (obj) {
            console.log(obj);

            if (obj.field.password != obj.field.rpassword) {
                layer.msg('兩次輸入的密碼不壹致');
                return false;
            }


            $.ajax({
                type: 'post',
                url: '/user/update',
                data: obj.field,
                dataType: 'json',
                success: function (res) {
                    if (res.code == 0) {
                        layer.msg('更新成功', {icon: 6, time: 1000}, function () {
                        });
                    }
                },
                error: function () {
                    layer.msg(res.msg, {icon: 5, time: 3000, shade: 0.8});
                }
            });

            return false;
        });

    });
</script>

</body>
</html>

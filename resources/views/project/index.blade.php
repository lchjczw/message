<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>项目列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <style type="text/css">
        @media screen and (max-width: 720px) {
            body {
                width: 850px;
            }
        }

        .demoTable {
            padding: 5px;
        }

        .layui-input {
            width: 300px;
        }
    </style>
</head>
<body>
<div class="layui-fuild">
    <div class="layui-card">
        <div class="layui-card-header">项目列表</div>
        <div class="layui-card-body">
            <div class="demoTable">
                <div class="layui-inline">
                    <input class="layui-input" name="protitle" id="proReload" autocomplete="off"
                           placeholder="请输入项目ID或关键词">
                </div>
                <button class="layui-btn layui-btn-normal" data-type="reload">搜索</button>
            </div>
            <table class="layui-hide" id="prolist" lay-filter="list"></table>

        </div>
    </div>

</div>
<script type="text/html" id="imgnode">

    <img width="25" src="/uploads/@{{ d.icon}}">

</script>
<script type="text/javascript" src="/layui/layui.js"></script>
<script type="text/javascript">
    layui.use('table', function () {
        var table = layui.table;
        var $ = layui.$;
        table.render({
            elem: '#prolist'
            , method: 'get'
            , url: '/project/getProjectList/'
            , headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            }
            , limit: 10
            , skin: 'row'
            , even: true
            , cols: [[
                {field: 'icon', title: '图标', templet: '#imgnode'}
                , {field: 'id', title: '项目ID'}
                , {field: 'name', title: '中文名称'}
                , {field: 'number', title: '编码'}
                , {field: 'price', title: '单价(¥)'}
            ]]
            , page: true
            , id: 'proReload'
        });

        active = {
            reload: function () {
                var proReload = $('#proReload');

                //执行重载
                table.reload('proReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        keyword: proReload.val(),
                        type: 'all'
                    }
                });
            },
            myreload: function () {
                table.reload('proReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        type: 'mycollect'
                    }
                });
            }
        };

        $(document).keydown(function (e) {
            if (e.keyCode === 13) {
                var proReload = $('#proReload');

                //执行重载
                table.reload('proReload', {
                    page: {
                        curr: 1 //重新从第 1 页开始
                    }
                    , where: {
                        keyword: proReload.val()
                    }
                });
            }
        });

        $('.demoTable .layui-btn').on('click', function () {
            var type = $(this).data('type');
            active[type] ? active[type].call(this) : '';
        });

        //监听
        table.on('radio(list)', function (obj) {
            //当前是否选中状态
            if (obj.checked) {

                $(window.parent.document).find('#proname').attr("value", '¥' + obj.data.price + ' / ' + obj.data.number + ' - ' + obj.data.name);
                $(window.parent.document).find('#proid').attr("value", obj.data.procode);

                if (obj.data.selectC == 'no') {

                    $(window.parent.document).find('#country').attr("value", 'NOT / 项目默认国家 /');
                    $(window.parent.document).find('#domain').attr("value", 'NOT');

                    $(window.parent.document).find('#operator').attr("value", '可选项');
                    $(window.parent.document).find('#operatorid').attr("value", '');

                    $(window.parent.document).find('.attach').css('display', 'none');

                } else {

                    $(window.parent.document).find('#country').attr("value", '必选项');
                    $(window.parent.document).find('#domain').attr("value", '');

                    $(window.parent.document).find('#operator').attr("value", '可选项');
                    $(window.parent.document).find('#operatorid').attr("value", '');

                    $(window.parent.document).find('.attach').css('display', 'inline-block');
                }

                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);

            }

        });
    });
</script>
</html>

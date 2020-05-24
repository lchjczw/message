<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>国家列表</title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all"/>
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
<div class="demoTable">
    搜索国家：
    <div class="layui-inline">
        <input class="layui-input" name="protitle" id="proReload" autocomplete="off" placeholder="请输入国家简称或关键词">
    </div>
    <button class="layui-btn layui-btn-normal" data-type="reload">搜索</button>
</div>
<table class="layui-hide" id="countrylist" lay-filter="list"></table>
<script type="text/javascript" src="/layui/layui.js"></script>
<script type="text/html" id="imgnode">

    <img width="25" src="/uploads/@{{ d.icon}}">

</script>
<script type="text/javascript">
    layui.use('table', function () {
        var table = layui.table;
        table.render({
            elem: '#countrylist'
            , method: 'get'
            , url: '/selectCountry/'
            , limit: 10
            , skin: 'row'
            , even: true
            , cols: [[
                {type: 'radio', title: '选择'}
                , {field: 'icon', title: '图标', templet: '#imgnode'}
                , {field: 'name', title: '中文名称'}
            ]]
            , page: true
            , id: 'proReload'
        });

        var $ = layui.$, active = {
            reload: function () {
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

                $(window.parent.document).find('#country').attr("value", obj.data.name + ' / ' + obj.data.number);
                $(window.parent.document).find('#domain').attr("value", obj.data.id);

                var index = parent.layer.getFrameIndex(window.name);
                parent.layer.close(index);

            }

        });

    });
</script>
</html>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<base href="<%=basePath %>" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="back/lib/layui-v2.5.5/css/layui.css" media="all">
    <link rel="stylesheet" href="back/lib/font-awesome-4.7.0/css/font-awesome.min.css" media="all">
    <link rel="stylesheet" href="back/css/public.css" media="all">
    <style>
        .top-panel {
            border: 1px solid #eceff9;
            border-radius: 5px;
            text-align: center;
        }
        .top-panel > .layui-card-body{
            height: 60px;
        }
        .top-panel-number{
            line-height:60px;
            font-size: 30px;
            border-right:1px solid #eceff9;
        }
        .top-panel-tips{
            line-height:30px;
            font-size: 12px
        }
    </style>
</head>
<body>
<div class="layuimini-main">

    <div class="layui-row layui-col-space15">
        <div class="layui-col-xs12 layui-col-md3">

            <div class="layui-card top-panel">
                <div class="layui-card-header">求职者用户浏览量</div>
                <div class="layui-card-body">
                    <div class="layui-row layui-col-space5">
                        <div class="layui-col-xs9 layui-col-md9 top-panel-number">
                            ${cpNum*83 }
                        </div>
                        <div class="layui-col-xs3 layui-col-md3 top-panel-tips">
                            比昨天 <a style="color: #1aa094">▲0.12</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="layui-col-xs12 layui-col-md3">

            <div class="layui-card top-panel">
                <div class="layui-card-header">企业用户浏览量</div>
                <div class="layui-card-body">
                    <div class="layui-row layui-col-space5">
                        <div class="layui-col-xs9 layui-col-md9 top-panel-number">
                            ${cdNum*98 }
                        </div>
                        <div class="layui-col-xs3 layui-col-md3 top-panel-tips">
                            比昨天 <a style="color: #1aa094">▲0.12</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="layui-col-xs12 layui-col-md3">

            <div class="layui-card top-panel">
                <div class="layui-card-header">游客游览量</div>
                <div class="layui-card-body">
                    <div class="layui-row layui-col-space5">
                        <div class="layui-col-xs9 layui-col-md9 top-panel-number">
                            ${iNum*135 }
                        </div>
                        <div class="layui-col-xs3 layui-col-md3 top-panel-tips">
                            比昨天 <a style="color: #1aa094">▲0.12</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
        <div class="layui-col-xs12 layui-col-md3">

            <div class="layui-card top-panel">
                <div class="layui-card-header">简历点击量</div>
                <div class="layui-card-body">
                    <div class="layui-row layui-col-space5">
                        <div class="layui-col-xs9 layui-col-md9 top-panel-number">
                            ${rNum*96 }
                        </div>
                        <div class="layui-col-xs3 layui-col-md3 top-panel-tips">
                            比昨天 <a style="color: #1aa094">▲0.12</a>
                        </div>
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="layui-row layui-col-space15">
        <div class="layui-col-xs12 layui-col-md9">
            <div id="echarts-records" style="background-color:#ffffff;min-height:400px;padding: 10px"></div>
        </div>
        <div class="layui-col-xs12 layui-col-md3">
            <div id="echarts-pies" style="background-color:#ffffff;min-height:400px;padding: 10px"></div>
        </div>
    </div>


    


</div>
<script src="back/lib/layui-v2.5.5/layui.js" charset="utf-8"></script>
<script src="back/js/lay-config.js?v=1.0.4" charset="utf-8"></script>
<script>
    layui.use(['layer', 'echarts'], function () {
        var $ = layui.jquery,
            layer = layui.layer,
            echarts = layui.echarts;

        /**
         * 报表功能
         */
        var echartsRecords = echarts.init(document.getElementById('echarts-records'), 'walden');
        var cdNum='<%=request.getAttribute("cdNum")%>';
        var cpNum='<%=request.getAttribute("cpNum")%>';
        var iNum='<%=request.getAttribute("iNum")%>';
        var rNum='<%=request.getAttribute("rNum")%>';
        var date = new Date;
        var mon = (date.getMonth()+1)+'月';
        var optionRecords = {
            title: {
                text: '浏览量'
            },
            tooltip: {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    label: {
                        backgroundColor: '#6a7985'
                    }
                }
            },
            legend: {
                data: ['求职者', '企业用户', '游客', '简历点击']
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            grid: {
                left: '3%',
                right: '4%',
                bottom: '3%',
                containLabel: true
            },
            xAxis: [
                {
                    type: 'category',
                    boundaryGap: false,
                    data: [mon+(date.getDate()-6)+'日', mon+(date.getDate()-5)+'日', mon+(date.getDate()-4)+'日',mon+(date.getDate()-3)+'日', mon+(date.getDate()-2)+'日', mon+(date.getDate()-1)+'日',mon+date.getDate()+'日']
                }
            ],
            yAxis: [
                {
                    type: 'value'
                }
            ],
            series: [
                {
                    name: '求职者',
                    type: 'line',
                    stack: '总量',
                    areaStyle: {},
                    data: [120, 132, 101, 134, 90, 230, 210]
                },
                {
                    name: '企业用户',
                    type: 'line',
                    areaStyle: {},
                    data: [220, 182, 191, 234, 290, 330, 310]
                },
                {
                    name: '游客',
                    type: 'line',
                    stack: '总量',
                    areaStyle: {},
                    data: [150, 232, 201, 154, 190, 330, 410]
                },
                {
                    name: '简历点击',
                    type: 'line',
                    stack: '总量',
                    areaStyle: {},
                    data: [320, 332, 301, 334, 390, 330, 320]
                }
            ]
        };
        echartsRecords.setOption(optionRecords);


        /**
         * 玫瑰图表
         */
        var echartsPies = echarts.init(document.getElementById('echarts-pies'), 'walden');
        var optionPies = {
            title: {
                text: '数据量',
                left: 'center'
            },
            tooltip: {
                trigger: 'item',
                formatter: '{a} <br/>{b} : {c} ({d}%)'
            },
            legend: {
                orient: 'vertical',
                left: 'left',
                data: ['求职者', '企业用户', '行业类别', '简历']
            },
            series: [
                {
                    name: '访问来源',
                    type: 'pie',
                    radius: '55%',
                    center: ['50%', '60%'],
                    roseType: 'radius',
                    data: [
                        {value: cdNum, name: '求职者'},
                        {value: cpNum, name: '企业用户'},
                        {value: iNum, name: '行业类别'},
                        {value: rNum, name: '简历'}
                    ],
                    emphasis: {
                        itemStyle: {
                            shadowBlur: 10,
                            shadowOffsetX: 0,
                            shadowColor: 'rgba(0, 0, 0, 0.5)'
                        }
                    }
                }
            ]
        };
        echartsPies.setOption(optionPies);

		

        echartsMap.setOption(optionMap);


        // echarts 窗口缩放自适应
        window.onresize = function () {
            echartsRecords.resize();
        }

    });
</script>
</body>
</html>
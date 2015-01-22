<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: vincent
  Date: 2015/1/4 0004
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="ctx" value="${pageContext.request.contextPath}"/>
<html>
<head>
    <title>汽轮机主齿轮 (1100002047)</title>
</head>
<body>

<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>历史成本图</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <div class="row-fluid">
                    <div class="span8">
                        <div id="container1" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                    </div>
                    <div class="span4">
                        <div id="barchart" style="min-width: 310px; height: 333px; margin: 0 auto;"></div>

                    </div>
                </div>



                <script type="text/javascript">
                    $(function () {
                        var datas1 = new Array();
                        for (var i = 120; i >= 1; i--) {
                            datas1.push(Math.round(Math.random()*100));
                        }
                        var barchart = new Highcharts.Chart({
                            chart: {
                                type: 'bar',
                                renderTo:'barchart'
                            },
                            title: {
                                text: false
                            },
                            xAxis: {
                                //
                                categories:${returnDataCategories},
                                tickInterval: 6,
                                reversed: false,
                                labels: {
                                    style:{ "color": "#6D869F","fontWeight":"bold", "fontSize": "3px" }
                                }
                            },
                            yAxis: {
                                title: {
                                    text: ''
                                },
                                labels: {
                                    enabled: false
                                }
                            },
                            legend: {
                                enabled: false
                            },
                            series: [{
                                name: 'Population',
                                data: ${returnDataValue}
                            }]
                        });
                        $('#container1').highcharts({
                                    chart: {
                                        zoomType: 'xy'
                                    },
                                    title: {
                                        text: false
                                    },
                                    xAxis: [{

                                    }],
                                    yAxis: [{ // Primary yAxis
                                        labels: {
                                            format: '{value}%',
                                            style: {
                                                color: Highcharts.getOptions().colors[1]
                                            }
                                        },
                                        title: '',
                                        min: 0,
                                        max:120
                                    }, { // Secondary yAxis
                                        title: '',
                                        labels: {
                                            enabled: false,
                                            step: 1,
                                            maxStaggerLines:2,
                                            format: '{value}',
                                            style: {
                                                color: Highcharts.getOptions().colors[0]
                                            }
                                        },
                                        min: 0,
                                        plotLines: [{   //一条延伸到整个绘图区的线，标志着轴中一个特定值。
                                            color: 'rgb(224,34,34)',
                                            dashStyle: 'Dash', //Dash,Dot,Solid,默认Solid
                                            label:{
                                                text:'上限'
                                            },
                                            width: 1.5,
                                            value: 204,  //y轴显示位置
                                            zIndex: 5
                                        },{   //一条延伸到整个绘图区的线，标志着轴中一个特定值。
                                            color: 'rgb(224,34,34)',
                                            dashStyle: 'Dash', //Dash,Dot,Solid,默认Solid
                                            label:{
                                                text:'下限'
                                            },
                                            width: 1.5,
                                            value: 49,  //y轴显示位置
                                            zIndex: 5
                                        }],
                                        opposite: true
                                    }],
                                    tooltip: {
                                        crosshairs: true,
                                        shared: true
                                    },
                                    plotOptions: {
                                        spline: {
                                            point: {
                                                events: {
                                                    click: function (event) {
//                                                        var datas = new Array();
//                                                        for (var i = 120; i >= 1; i--) {
//                                                            datas.push(Math.round(Math.random()*100));
//                                                        }
                                                        $.ajax({
                                                            url:'${ctx}/securitylevel/sheet2/1/' + this.category,
                                                            success:function(data){
                                                                var datas = new Array();
                                                                var arr = data.split(',');
                                                                for(i in arr){
                                                                    datas.push(parseInt(arr[i]));
                                                                }
                                                                barchart.series[0].setData(datas);
                                                            }
                                                        });


                                                    }
                                                }
                                            }
                                        }
                                    },
                                    series: [{
                                        name: '库存量',
                                        type: 'area',
                                        yAxis: 1,
                                        data: [
                                            <c:forEach items="${sheet1List}" var="sheet1" varStatus="i">
                                            [${sheet1.id},${sheet1.c}]
                                            <c:if test="${!i.last}">
                                            ,
                                            </c:if>
                                            </c:forEach>
                                        ]

                                    }, {
                                        name: '保障水平',
                                        type: 'spline',
                                        data: [
                                            <c:forEach items="${sheet1List}" var="sheet1" varStatus="i">
                                            [${sheet1.id},${sheet1.e}]
                                            <c:if test="${!i.last}">
                                            ,
                                            </c:if>
                                            </c:forEach>
                                        ]
                                    }]
                                }
                        );
                    });
                </script>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>历史保障水平图</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="container2" style="min-width: 310px; height: 400px; margin: 0 auto"></div>

                <script type="text/javascript">
                    $(function () {

                        var ranges = [
                                    <c:forEach items="${sheet1List}" var="sheet1" varStatus="i">
                                        [${sheet1.id}, ${sheet1.b}, ${sheet1.d}]
                                        <c:if test="${!i.last}">
                                        ,
                                        </c:if>
                                    </c:forEach>
                                ],
                                averages = [
                                    <c:forEach items="${sheet1List}" var="sheet1" varStatus="i">
                                        [${sheet1.id}, ${sheet1.c}]
                                        <c:if test="${!i.last}">
                                        ,
                                        </c:if>
                                    </c:forEach>
                                ],
                                averages1 = [
                                    <c:forEach items="${sheet1List}" var="sheet1" varStatus="i">
                                    [${sheet1.id}, ${sheet1.e}]
                                    <c:if test="${!i.last}">
                                    ,
                                    </c:if>
                                    </c:forEach>
                                ];


                        $('#container2').highcharts({

                            title: {
                                text: 'July temperatures'
                            },

                            xAxis: {
                                //type: 'datetime'
                            },

                            yAxis: [{ // Primary yAxis
                                labels: {
                                    format: '{value}%',
                                    style: {
                                        color: Highcharts.getOptions().colors[1]
                                    }
                                },
                                title: '',
                                min: 0,
                                opposite: true
                            },{
                                title: {
                                    text: null
                                }
                            }],

                            tooltip: {
                                crosshairs: true,
                                shared: true
                            },

                            legend: {
                            },

                            series: [{
                                name: '库存量',
                                data: averages,
                                zIndex: 1,
                                yAxis: 1,
                                marker: {
                                    fillColor: 'white',
                                    lineWidth: 2,
                                    lineColor: Highcharts.getOptions().colors[0]
                                }
                            }, {
                                name: '平均库存',
                                data: ranges,
                                type: 'arearange',
                                lineWidth: 0,
                                yAxis: 1,
                                linkedTo: ':previous',
                                color: Highcharts.getOptions().colors[0],
                                fillOpacity: 0.3,
                                zIndex: 0
                            },{
                                name: '保障水平',
                                data: averages1,
                                zIndex: 1,
                                marker: {
                                    fillColor: 'white',
                                    lineWidth: 2,
                                    lineColor: Highcharts.getOptions().colors[0]
                                }
                            }]
                        });
                    });
                </script>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>

<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box blue">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>预估成本图</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="container3" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                <script type="text/javascript">
                    $(function () {
                        $('#container3').highcharts({
                            chart: {
                                type: 'scatter',
                                zoomType: 'xy'
                            },
                            title: {
                                text: '保障程度报告'
                            },
                            xAxis: {
                                title: {
                                    enabled: true,
                                    text: '库存量（个)'
                                },
                                min: 0,
                                plotLines: [{   //一条延伸到整个绘图区的线，标志着轴中一个特定值。
                                    color: 'rgb(224,34,34)',
                                    dashStyle: 'Dash', //Dash,Dot,Solid,默认Solid
                                    label:{
                                        text:'上限'
                                    },
                                    width: 1.5,
                                    value: 204,  //y轴显示位置
                                    zIndex: 5
                                },{   //一条延伸到整个绘图区的线，标志着轴中一个特定值。
                                    color: 'rgb(224,34,34)',
                                    dashStyle: 'Dash', //Dash,Dot,Solid,默认Solid
                                    label:{
                                        text:'下限'
                                    },
                                    width: 1.5,
                                    value: 49,  //y轴显示位置
                                    zIndex: 5
                                }],
                                startOnTick: true,
                                endOnTick: true,
                                showLastLabel: true
                            },
                            yAxis: {
                                title: {
                                    text: '保障水平 (%)'
                                },
                                labels: {
                                    format: '{value}%'
                                },
                                max: 100,
                                min: 0
                            },
                            legend: {
                                layout: 'vertical',
                                enabled: false,
                                align: 'left',
                                verticalAlign: 'top',
                                x: 100,
                                y: 70,
                                floating: true,
                                backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF',
                                borderWidth: 1
                            },
                            plotOptions: {
                                scatter: {
                                    marker: {
                                        radius: 5,
                                        states: {
                                            hover: {
                                                enabled: true,
                                                lineColor: 'rgb(100,100,100)'
                                            }
                                        }
                                    },
                                    states: {
                                        hover: {
                                            marker: {
                                                enabled: false
                                            }
                                        }
                                    },
                                    tooltip: {
                                        headerFormat: '{point.y}%,{point.x}个 ',
                                        pointFormat: ''
                                    }
                                }
                            },
                            series: [{
                                name: 'Male',
                                color: 'rgba(119, 152, 191, .5)',
                                data: [
                                    <c:forEach items="${sheet1List}" var="sheet1" varStatus="i">
                                    [${sheet1.c}, ${sheet1.e}]
                                    <c:if test="${!i.last}">
                                    ,
                                    </c:if>
                                    </c:forEach>
                                ]
                            }]
                        });
                    });
                </script>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>预估保障水平图</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <div id="container4" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
                <script type="text/javascript">
                    $(function () {
                        $('#container4').highcharts({
                            chart: {
                                type: 'scatter',
                                zoomType: 'xy'
                            },
                            title: {
                                text: '保障程度报告'
                            },
                            xAxis: {
                                title: {
                                    enabled: true,
                                    text: '库存量（个)'
                                },
                                plotLines: [{   //一条延伸到整个绘图区的线，标志着轴中一个特定值。
                                    color: 'rgb(224,34,34)',
                                    dashStyle: 'Dash', //Dash,Dot,Solid,默认Solid
                                    label:{
                                        text:'上限'
                                    },
                                    width: 1.5,
                                    value: 65,  //y轴显示位置
                                    zIndex: 5
                                },{   //一条延伸到整个绘图区的线，标志着轴中一个特定值。
                                    color: 'rgb(224,34,34)',
                                    dashStyle: 'Dash', //Dash,Dot,Solid,默认Solid
                                    label:{
                                        text:'下限'
                                    },
                                    width: 1.5,
                                    value: 30,  //y轴显示位置
                                    zIndex: 5
                                }],
                                startOnTick: true,
                                endOnTick: true,
                                showLastLabel: true
                            },
                            yAxis: {
                                title: {
                                    text: '保障水平 (%)'
                                },
                                labels: {
                                    format: '{value}%'
                                },
                                max: 100,
                                min: 0
                            },
                            legend: {
                                layout: 'vertical',
                                enabled: false,
                                align: 'left',
                                verticalAlign: 'top',
                                x: 100,
                                y: 70,
                                floating: true,
                                backgroundColor: (Highcharts.theme && Highcharts.theme.legendBackgroundColor) || '#FFFFFF',
                                borderWidth: 1
                            },
                            plotOptions: {
                                scatter: {
                                    marker: {
                                        radius: 5,
                                        states: {
                                            hover: {
                                                enabled: true,
                                                lineColor: 'rgb(100,100,100)'
                                            }
                                        }
                                    },
                                    states: {
                                        hover: {
                                            marker: {
                                                enabled: false
                                            }
                                        }
                                    },
                                    tooltip: {
                                        headerFormat: '{point.y}%,{point.x}个 ',
                                        pointFormat: ''
                                    }
                                }
                            },
                            series: [{
                                name: 'Male',
                                color: 'rgba(119, 152, 191, .5)',
                                data: [[29.00, 50],[33.00, 55],[36.00, 60],[39.00, 65],
                                    [42.00, 70],[45.00, 75],[48.00, 80],[50.00, 85],
                                    [52.00, 90],[62.00, 95],[77.03, 99]]
                            }]
                        });
                    });
                </script>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>

</body>
</html>

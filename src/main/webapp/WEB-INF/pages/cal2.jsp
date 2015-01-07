<%--
  Created by IntelliJ IDEA.
  User: vincent
  Date: 2014/12/22 0022
  Time: 15:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<body class="page-header-fixed">
<ul class="breadcrumb">
    <li>
        <i class="icon-home"></i>
        <a href="index.html">共享计算器</a>
    </li>
    <li class="pull-right no-text-shadow">
        <div id="dashboard-report-range" class="dashboard-date-range tooltips no-tooltip-on-touch-device responsive"
             data-tablet="" data-desktop="tooltips" data-placement="top"
             data-original-title="Change dashboard date range">
            <i class="icon-calendar"></i>
            <span></span>
            <i class="icon-angle-down"></i>
        </div>
    </li>
</ul>
<div class="row-fluid">
    <div class="portlet box blue">
        <div class="portlet-title">
            <div class="caption"><i class="icon-reorder"></i>输入</div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
            </div>
        </div>
        <div class="portlet-body form">
            <div class="row-fluid">
                <div class="span4">
                    <h3 class="form-section">入库分布</h3>
                    <div class="control-group">
                        <label class="control-label" for="purchasingFrequency">采购频率</label>
                        <div class="controls">
                            <input type="text" id="purchasingFrequency" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">n天一次（可变）</span>
                        </div>

                    </div>
                    <div class="control-group">
                        <label class="control-label" for="purchaseQuantity">采购批量</label>
                        <div class="controls">
                            <input type="text" id="purchaseQuantity" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">每次m个</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="purchasingCycle1">采购周期</label>
                        <div class="controls">
                            <input type="text" id="purchasingCycle1" class="m-wrap span6 text-right" placeholder="Chee Kin">
                            <input type="text" id="purchasingCycle2" class="m-wrap span6 text-right" placeholder="Chee Kin">
                            <span class="help-block">正态分布（μ，σ）</span>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <h3 class="form-section">出库分布</h3>
                    <div class="control-group">
                        <label class="control-label" for="frequency">频率</label>
                        <div class="controls">
                            <input type="text" id="frequency" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">k天一次（0-1分布）</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="number">数量</label>
                        <div class="controls">
                            <input type="text" id="number" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">泊松分布（λ）</span>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <h3 class="form-section">库存分布</h3>
                    <div class="control-group warning">
                        <label class="control-label" for="reorderPoint">再订货点（下限）</label>
                        <div class="controls">
                            <input type="text" id="reorderPoint" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">&nbsp;</span>
                        </div>
                    </div>
                    <div class="control-group">
                        <label class="control-label" for="maximumInventory">库存上限</label>
                        <div class="controls">
                            <input type="text" id="maximumInventory" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">&nbsp;</span>
                        </div>
                    </div>
                </div>
            </div>
            <div class="form-actions text-right">
                <button type="submit" class="btn green">&nbsp;&nbsp;&nbsp;&nbsp;计&nbsp;&nbsp;算&nbsp;&nbsp;&nbsp;&nbsp;</button>
            </div>
        </div>

    </div>
</div>
<div class="row-fluid">
    <div class="span6">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>保障水平</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>出库需求量</th>
                        <th>缺货量</th>
                        <th>缺货率</th>
                        <th>操作</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>50%</td>
                        <td>29.00</td>
                        <td>0.00</td>
                        <td>0.00%</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>90%</td>
                        <td>54.00</td>
                        <td>0.00</td>
                        <td>0.00%</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>95%</td>
                        <td>62.00</td>
                        <td>-0.08</td>
                        <td>-0.10%</td>
                        <td></td>
                    </tr>
                    <tr>
                        <td>99%</td>
                        <td>77.03</td>
                        <td>-3.27</td>
                        <td>-4.25%</td>
                        <td></td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
    <div class="span6">
        <!-- BEGIN BORDERED TABLE PORTLET-->
        <div class="portlet box yellow">
            <div class="portlet-title">
                <div class="caption"><i class="icon-coffee"></i>库存成本</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>单价</th>
                        <th>数量</th>
                        <th>价值</th>
                        <th>年度持有成本</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <td>购销</td>
                        <td>6,525</td>
                        <td>31</td>
                        <td>202,275</td>
                        <td>20,227.5</td>
                    </tr>
                    <tr>
                        <td>分享</td>
                        <td>5</td>
                        <td>31</td>
                        <td>155</td>
                        <td>56,575</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END BORDERED TABLE PORTLET-->
    </div>
</div>
<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box green">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>保障水平</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <script src="http://code.highcharts.com/highcharts.js"></script>
                <script src="http://code.highcharts.com/modules/exporting.js"></script>

                <div id="container" style="min-width: 310px; height: 400px; max-width: 800px; margin: 0 auto"></div>
                <script type="text/javascript">
                    $(function () {
                        $('#container').highcharts({
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
                                    text: '出库需求量 (个)'
                                },
                                startOnTick: true,
                                endOnTick: true,
                                showLastLabel: true
                            },
                            yAxis: {
                                title: {
                                    text: '保障水平 (%)'
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
    </div>
</div>

</body>
</html>

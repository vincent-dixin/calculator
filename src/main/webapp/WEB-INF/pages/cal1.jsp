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
            <div class="caption"><i class="icon-reorder"></i>计算参数</div>
            <div class="tools">
                <a href="javascript:;" class="collapse"></a>
            </div>
        </div>
        <div class="portlet-body form">
            <div class="row-fluid">
                <div class="span4">
                    <div class="control-group">
                        <label class="control-label">入库分布</label>
                        <div class="controls">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="input-append">
                                    <div class="uneditable-input">
                                        <i class="icon-file fileupload-exists"></i>
                                        <span class="fileupload-preview"></span>
                                    </div>
                                    <span class="btn btn-file">
                                    <span class="fileupload-new">选择文件</span>
                                    <span class="fileupload-exists">修改</span>
                                        <input type="file" class="default" />
                                    </span>
                                    <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>
                                    <span class="help-block">&nbsp;</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group warning">
                        <label class="control-label" for="reorderPoint">再订货点（下限）</label>
                        <div class="controls">
                            <input type="text" id="reorderPoint" class="m-wrap span12 text-right" placeholder="Chee Kin">
                            <span class="help-block">&nbsp;</span>
                        </div>
                    </div>
                </div>
                <div class="span4">
                    <div class="control-group">
                        <label class="control-label">出库分布</label>
                        <div class="controls">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="input-append">
                                    <div class="uneditable-input">
                                        <i class="icon-file fileupload-exists"></i>
                                        <span class="fileupload-preview"></span>
                                    </div>
                                    <span class="btn btn-file">
                                    <span class="fileupload-new">选择文件</span>
                                    <span class="fileupload-exists">修改</span>
                                        <input type="file" class="default" />
                                    </span>
                                    <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>
                                    <span class="help-block">&nbsp;</span>
                                </div>
                            </div>
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
                <div class="span4">
                    <div class="control-group">
                        <label class="control-label" for="purchasingCycle1">采购周期</label>
                        <div class="controls">
                            <input type="text" id="purchasingCycle1" class="m-wrap span6 text-right" placeholder="Chee Kin">
                            <input type="text" id="purchasingCycle2" class="m-wrap span6 text-right" placeholder="Chee Kin">
                            <span class="help-block">正态分布（μ，σ）</span>
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
                <div class="caption"><i class="icon-cogs"></i>缺货率</div>
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




</body>
</html>

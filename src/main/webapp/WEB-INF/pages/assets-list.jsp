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
    <title></title>
</head>
<body>
<ul class="breadcrumb">
    <li>
        <i class="icon-home"></i>
        <a href="index.html">资产列表</a>
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
<!-- Modal -->
<div id="parameterSettingModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel1"
     aria-hidden="true">
    <form id="settingsForm" method="post" action="${ctx}/securitylevel/result/" ></form>
    <input type="hidden" id="assetsId" />
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>
        <h3><i class="icon-cogs"></i>&nbsp;计算参数设置</h3>
    </div>
    <div class="modal-body form">
        <div class="row-fluid">
            <div class="span12">
                <div class="control-group">
                    <label class="control-label" for="purchasingCycle">采购周期分布</label>
                    <div class="controls">
                        <select id="purchasingCycle" class="m-wrap span12">
                            <option value="1">正态分布</option>
                            <option value="2">泊松分布</option>
                            <option value="3">三角分布</option>
                            <option value="4">自定义...</option>
                        </select>
                        <script type="text/javascript">
                            $("#purchasingCycle").on("change", function(){
                                var selectedValue = "";
                                $("#purchasingCycle option:selected").each(function () {
                                    selectedValue = $(this).val();
                                });

                                for (var i = 1; i <= 4; i++) {
                                    if(i == selectedValue) {
                                        $("#purchasingCycleContent" + i).show();
                                    }else {
                                        $("#purchasingCycleContent" + i).hide();
                                    }
                                }
                            });
                        </script>

                        <div class="row-fluid" id="purchasingCycleContent1">
                            <input type="text" class="m-wrap span6 text-right" placeholder="均值">
                            <input type="text" class="m-wrap span6 text-right" placeholder="标准差">
                        </div>
                        <div class="row-fluid" id="purchasingCycleContent2" style="display: none;">
                            <input type="text" class="m-wrap span6 text-right" placeholder="lambda">
                        </div>
                        <div class="row-fluid" id="purchasingCycleContent3" style="display: none;">
                            <input type="text" class="m-wrap span6 text-right" placeholder="最小值">
                            <input type="text" class="m-wrap span6 text-right" placeholder="最可能值">
                            <input type="text" class="m-wrap span6 text-right" placeholder="最大值">
                        </div>
                        <div class="row-fluid" id="purchasingCycleContent4" style="display: none;">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="input-append">
                                    <div class="uneditable-input">
                                        <i class="icon-file fileupload-exists"></i>
                                        <span class="fileupload-preview"></span>
                                    </div>
                                    <span class="btn btn-file">
                                    <span class="fileupload-new">选择文件</span>
                                    <span class="fileupload-exists">修改</span>
                                        <input type="file" class="default"/>
                                    </span>
                                    <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span12">
                <div class="control-group">
                    <label class="control-label" for="warehousingDistribution">出库分布</label>
                    <div class="controls">
                        <select id="warehousingDistribution" class="m-wrap span12">
                            <option value="1">正态分布</option>
                            <option value="2">泊松分布</option>
                            <option value="3">三角分布</option>
                            <option value="4">自定义...</option>
                        </select>
                        <script type="text/javascript">
                            $("#warehousingDistribution").on("change", function(){
                                var selectedValue = "";
                                $("#warehousingDistribution option:selected").each(function () {
                                    selectedValue = $(this).val();
                                });

                                for (var i = 1; i <= 4; i++) {
                                    if(i == selectedValue) {
                                        $("#warehousingDistributionContent" + i).show();
                                    }else {
                                        $("#warehousingDistributionContent" + i).hide();
                                    }
                                }
                            });
                        </script>

                        <div class="row-fluid" id="warehousingDistributionContent1">
                            <input type="text" class="m-wrap span6 text-right" placeholder="均值">
                            <input type="text" class="m-wrap span6 text-right" placeholder="标准差">
                        </div>
                        <div class="row-fluid" id="warehousingDistributionContent2" style="display: none;">
                            <input type="text" class="m-wrap span6 text-right" placeholder="lambda">
                        </div>
                        <div class="row-fluid" id="warehousingDistributionContent3" style="display: none;">
                            <input type="text" class="m-wrap span6 text-right" placeholder="最小值">
                            <input type="text" class="m-wrap span6 text-right" placeholder="最可能值">
                            <input type="text" class="m-wrap span6 text-right" placeholder="最大值">
                        </div>
                        <div class="row-fluid" id="warehousingDistributionContent4" style="display: none;">
                            <div class="fileupload fileupload-new" data-provides="fileupload">
                                <div class="input-append">
                                    <div class="uneditable-input">
                                        <i class="icon-file fileupload-exists"></i>
                                        <span class="fileupload-preview"></span>
                                    </div>
                                    <span class="btn btn-file">
                                    <span class="fileupload-new">选择文件</span>
                                    <span class="fileupload-exists">修改</span>
                                        <input type="file" class="default"/>
                                    </span>
                                    <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid">
            <div class="span6">
                <div class="control-group warning">
                    <label class="control-label" for="reorderPoint">再订货点（下限）</label>

                    <div class="controls">
                        <input type="text" id="reorderPoint" class="m-wrap span12 text-right" placeholder="Chee Kin">
                        <span class="help-block">&nbsp;</span>
                    </div>
                </div>
            </div>
            <div class="span6">
                <div class="control-group">
                    <label class="control-label" for="maximumInventory">库存上限</label>

                    <div class="controls">
                        <input type="text" id="maximumInventory" class="m-wrap span12 text-right"
                               placeholder="Chee Kin">
                        <span class="help-block">&nbsp;</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="modal-footer">
        <a href="javascript:;" onclick="settingsFormSubmit();" class="btn green">计算</a>
        <script type="text/javascript">
            function settingsFormSubmit(){
                $("#settingsForm").submit();
            }
        </script>
        <a class="btn" data-dismiss="modal" aria-hidden="true">关闭</a>
    </div>
</div>


<div class="row-fluid">
    <div class="span12">
        <!-- BEGIN SAMPLE TABLE PORTLET-->
        <div class="portlet box red">
            <div class="portlet-title">
                <div class="caption"><i class="icon-cogs"></i>资产库存汇总</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover table-condensed flip-content">
                    <thead class="flip-content">
                    <tr>
                        <th rowspan="2" style="vertical-align: middle;text-align: center;">资产编号</th>
                        <th rowspan="2" style="vertical-align: middle;text-align: center;">资产名称</th>
                        <th colspan="4">现有库存量</th>
                        <th colspan="4">库存成本</th>
                        <th rowspan="2" style="vertical-align: middle;text-align: center;">操作</th>
                    </tr>
                    <tr>
                        <th style="text-align: center;">购销</th>
                        <th style="text-align: center;">租赁</th>
                        <th style="text-align: center;">共享</th>
                        <th style="text-align: center;">合计</th>
                        <th style="text-align: center;">采购费用</th>
                        <th style="text-align: center;">租赁费用</th>
                        <th style="text-align: center;">分享费用</th>
                        <th style="text-align: center;">合计</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${assetsList}" var="asset" >
                        <tr>
                            <td style="text-align: center;">${asset.assetsNo}</td>
                            <td>${asset.assetsName}</td>
                            <td style="text-align: center;"><a href="${ctx}/quantity/detail/${asset.id}/1">${asset.purchaseSale}</a></td>
                            <td style="text-align: center;"><a href="${ctx}/quantity/detail/${asset.id}/2">${asset.lease}</a></td>
                            <td style="text-align: center;"><a href="${ctx}/quantity/detail/${asset.id}/3">${asset.share}</a></td>
                            <td style="text-align: center;"><span class="label label-info">${asset.purchaseSale + asset.lease + asset.share}</span></td>
                            <td style="text-align: right;"><a href="${ctx}/cost/detail/${asset.id}/1"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: right;"><a href="${ctx}/cost/detail/${asset.id}/2"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.leaseCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: right;"><a href="${ctx}/cost/detail/${asset.id}/3"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.shareCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: right;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost + asset.leaseCost + asset.shareCost}" ></fmt:formatNumber></span></td>
                            <td style="text-align: right;">
                                <a href="javascript:;" onclick="settings('${asset.id}')" class="btn mini red-stripe">参数设置</a>
                                <script type="text/javascript">
                                    function settings(assetsId){
                                        $("#assetsId").attr("value",assetsId);
                                        $("#parameterSettingModal").modal("show");
                                    }
                                </script>
                                &nbsp;
                                <a href="${ctx}/securitylevel/result/${asset.id}" class="btn mini blue-stripe">计算</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
        <!-- END SAMPLE TABLE PORTLET-->
    </div>
</div>

</body>
</html>

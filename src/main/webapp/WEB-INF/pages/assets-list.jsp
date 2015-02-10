<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
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
        <%
            List<String> list = new ArrayList<String>();
            list.add("采购分布");
            list.add("租入分布");
            list.add("分入分布");
            list.add("销售分布");
            list.add("租出分布");
            list.add("分出分布");
            request.setAttribute("distributionNameList",list);

        %>
        <c:forEach items="${distributionNameList}" var="distributionName" varStatus="i">
            <div class="row-fluid">
                <div class="span12">
                    <div class="control-group">
                        <label class="control-label" for="purchasingCycle${i.index+1}">${distributionName}</label>
                        <div class="controls">
                            <label class="radio">
                                <input type="radio" onclick="timeLimitClick${i.index+1}(1)" name="serviceLevel${i.index+1}" value="1"  />
                                一年期
                            </label>
                            <label class="radio">
                                <input type="radio" onclick="timeLimitClick${i.index+1}(2)" name="serviceLevel${i.index+1}" value="2"  />
                                两年期
                            </label>
                            <label class="radio">
                                <input type="radio" onclick="timeLimitClick${i.index+1}(3)" name="serviceLevel${i.index+1}" value="3" />
                                三年期
                            </label>
                            <script>
                                function timeLimitClick${i.index+1}(v) {
                                    var html;
                                    for (i=0;i<v*12;i++){
                                        var date = new Date();
                                        date.setMonth(i);
                                        html += "<tr><td>" + date.getFullYear() + "-" + (date.getMonth()+1) + "</td><td><input type='text' /></td></tr>";
                                    }
                                    $('#tb${i.index+1}').html(html);
                                }
                            </script>
                            <br />
                            <select id="purchasingCycle${i.index+1}" class="m-wrap span12">
                                <option value="1">正态分布</option>
                                <option value="2">泊松分布</option>
                                <option value="3">三角分布</option>
                                <option value="4">自定义...</option>
                            </select>
                            <script type="text/javascript">
                                $("#purchasingCycle${i.index+1}").on("change", function(){
                                    var selectedValue = "";
                                    $("#purchasingCycle${i.index+1} option:selected").each(function () {
                                        selectedValue = $(this).val();
                                    });

                                    for (var i = 1; i <= 4; i++) {
                                        if(i == selectedValue) {
                                            $("#purchasingCycleContent${i.index+1}" + i).show();
                                        }else {
                                            $("#purchasingCycleContent${i.index+1}" + i).hide();
                                        }
                                    }
                                });
                            </script>
                            <div class="row-fluid" id="purchasingCycleContent${i.index+1}1">
                                <input type="text" class="m-wrap span6 text-right" placeholder="均值">
                                <input type="text" class="m-wrap span6 text-right" placeholder="标准差">
                            </div>
                            <div class="row-fluid" id="purchasingCycleContent${i.index+1}2" style="display: none;">
                                <input type="text" class="m-wrap span6 text-right" placeholder="lambda">
                            </div>
                            <div class="row-fluid" id="purchasingCycleContent${i.index+1}3" style="display: none;">
                                <input type="text" class="m-wrap span6 text-right" placeholder="最小值">
                                <input type="text" class="m-wrap span6 text-right" placeholder="最可能值">
                                <input type="text" class="m-wrap span6 text-right" placeholder="最大值">
                            </div>
                            <div class="row-fluid" id="purchasingCycleContent${i.index+1}4" style="display: none;">
                                <div class="portlet box blue">
                                    <div class="portlet-title">
                                        <div class="caption"><i class="icon-cogs"></i>出入库数量分布</div>
                                        <div class="tools">
                                            <a href="javascript:;" class="collapse"></a>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <table class="table flip-content">
                                            <tr>
                                                <th>月份</th>
                                                <th>数量</th>
                                            </tr>
                                            <tbody id="tb${i.index+1}">

                                            </tbody>
                                        </table>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </c:forEach>
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
                <div class="caption"><i class="icon-cogs"></i>资产汇总</div>
                <div class="tools">
                    <a href="javascript:;" class="collapse"></a>
                </div>
            </div>
            <div class="portlet-body">
                <table class="table table-hover table-condensed flip-content">
                    <thead class="flip-content">
                    <tr>
                        <th style="vertical-align: middle;text-align: center;">资产编号</th>
                        <th style="vertical-align: middle;text-align: center;">资产名称</th>
                        <th style="vertical-align: middle;text-align: center;">占有类型</th>
                        <th style="vertical-align: middle;text-align: center;">占有量</th>
                        <th style="vertical-align: middle;text-align: center;">成本(当年)</th>
                        <th style="vertical-align: middle;text-align: center;">成本(累计)</th>
                        <th style="vertical-align: middle;text-align: center;">成本(原值)</th>
                        <th style="vertical-align: middle;text-align: center;">保障水平</th>
                        <th style="vertical-align: middle;text-align: center;"></th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach items="${assetsList}" var="asset" >
                        <tr>
                            <td rowspan="4" style="text-align: center;">${asset.assetsNo}</td>
                            <td rowspan="4">${asset.assetsName}</td>
                            <td style="text-align: center;">购销</td>
                            <td style="text-align: center;"><a href="${ctx}/quantity/detail/${asset.id}/1">${asset.purchaseSale}</a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/1"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/1"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/1"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost}" ></fmt:formatNumber></a></td>
                            <td rowspan="4" style="text-align: center;">
                                <a href="javascript:;" onclick="settings('${asset.id}')">99.95%</a>
                                <script type="text/javascript">
                                    function settings(assetsId){
                                        $("#assetsId").attr("value",assetsId);
                                        $("#parameterSettingModal").modal("show");
                                    }
                                </script>
                            </td>
                            <td rowspan="4" style="text-align: center;">
                                <a href="" class="btn mini blue">立即交易</a> <br />
                                <a href="${ctx}/trade/scheme/comparison/${asset.id}" class="btn mini green">方案设置</a> <br />
                                <%--<a href="${ctx}/securitylevel/result/${asset.id}" class="btn mini icn-only"><i class="icon-bar-chart"></i></a>--%>
                            </td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">租赁</td>
                            <td style="text-align: center;"><a href="${ctx}/quantity/detail/${asset.id}/2">${asset.lease}</a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/2"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.leaseCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/2"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.leaseCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/2"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.leaseCost}" ></fmt:formatNumber></a></td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">分享</td>
                            <td style="text-align: center;"><a href="${ctx}/quantity/detail/${asset.id}/3">${asset.share}</a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/3"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.shareCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/3"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.shareCost}" ></fmt:formatNumber></a></td>
                            <td style="text-align: center;"><a href="${ctx}/cost/detail/${asset.id}/3"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.shareCost}" ></fmt:formatNumber></a></td>
                        </tr>
                        <tr>
                            <td style="text-align: center;">小计</td>
                            <td style="text-align: center;"><span class="label label-info">${asset.purchaseSale + asset.lease + asset.share}</span></td>
                            <td style="text-align: center;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost + asset.leaseCost + asset.shareCost}" ></fmt:formatNumber></span></td>
                            <td style="text-align: center;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost + asset.leaseCost + asset.shareCost}" ></fmt:formatNumber></span></td>
                            <td style="text-align: center;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${asset.purchaseCost + asset.leaseCost + asset.shareCost}" ></fmt:formatNumber></span></td>
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

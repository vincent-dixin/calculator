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

<div class="row-fluid">
  <div class="span12">
    <!-- BEGIN SAMPLE TABLE PORTLET-->
    <div class="portlet box red">
      <div class="portlet-title">
        <div class="caption"><i class="icon-cogs"></i>购销成本明细 </div>
        <div class="tools">
          <a href="javascript:;" class="collapse"></a>
        </div>
      </div>
      <div class="portlet-body">
        <div class="row-fluid">
          <div class="span4">
            <div style="font-size: 14px"> 物资编号: 1100002047 </div>
          </div>
          <!--/span-->
          <div class="span4 ">
            <div style="font-size: 14px">物资名称: 汽轮机主齿轮</div>
          </div>
          <div class="span4 ">
            <a href="" class="btn mini blue">立即交易</a>
            <a href="" class="btn mini green">加入方案</a>
          </div>
          <!--/span-->
        </div>
        <table class="table table-hover table-condensed flip-content" >
          <thead class="flip-content">
            <tr>
              <th rowspan="2" style="vertical-align: middle;text-align: center;">合同编号</th>
              <th rowspan="2" style="vertical-align: middle;text-align: center;">批次编号</th>
              <th rowspan="2" style="vertical-align: middle;text-align: center;">资产原值</th>
              <th rowspan="2" style="vertical-align: middle;text-align: center;">账面价值</th>
              <th colspan="2" style="vertical-align: middle;text-align: center;">折旧</th>
              <th colspan="2" style="vertical-align: middle;text-align: center;">减值准备</th>
              <th rowspan="2" style="vertical-align: middle;text-align: center;">利率（当年）</th>
              <th colspan="2" style="vertical-align: middle;text-align: center;">资金成本</th>
              <th colspan="2" style="vertical-align: middle;text-align: center;">成本合计</th>
            </tr>
            <tr>
              <th style="vertical-align: middle;text-align: center;">当年</th>
              <th style="vertical-align: middle;text-align: center;">累计</th>
              <th style="vertical-align: middle;text-align: center;">当年</th>
              <th style="vertical-align: middle;text-align: center;">累计</th>
              <th style="vertical-align: middle;text-align: center;">当年</th>
              <th style="vertical-align: middle;text-align: center;">累计</th>
              <th style="vertical-align: middle;text-align: center;">当年</th>
              <th style="vertical-align: middle;text-align: center;">累计</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${contractDetailList}" var="contractDetail">
            <tr>
              <td>${contractDetail.contractNo}</td>
              <td><fmt:formatDate value="${contractDetail.contractDate}" ></fmt:formatDate></td>
              <td><fmt:formatDate value="${contractDetail.insurancePeriodStart}" ></fmt:formatDate></td>
              <td><fmt:formatDate value="${contractDetail.insurancePeriodEnd}" ></fmt:formatDate></td>
              <td>${contractDetail.num}</td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.price}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
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

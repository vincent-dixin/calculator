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
        <div class="caption"><i class="icon-cogs"></i>汽轮机主齿轮 (1100002047) -- 采购成本明细 --
          <c:choose>
            <c:when test="${contractDetail.tradeType eq '1'}">
              采购费用
            </c:when>
            <c:when test="${contractDetail.tradeType eq '2'}">
              租赁费用
            </c:when>
            <c:otherwise>
              分享费用
            </c:otherwise>
          </c:choose>
        </div>
        <div class="tools">
          <a href="javascript:;" class="collapse"></a>
        </div>
      </div>
      <div class="portlet-body">
        <table class="table table-hover table-condensed flip-content" >
          <thead class="flip-content">
            <tr>
              <th>合同编号</th>
              <th>合同日期</th>
              <th>保障期开始</th>
              <th>保障期结束</th>
              <th>数量</th>
              <th>价格</th>
              <th>库存成本</th>
              <th>折旧</th>
              <th>利息</th>
              <th>管理费</th>
              <th>其他费用</th>
              <th>租赁费用</th>
              <th>分享费用</th>
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
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.depreciation}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.interest}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.managementExpense}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.otherCost}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.leaseCost}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.shareCost}" ></fmt:formatNumber></td>
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

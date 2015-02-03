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
        <div class="caption"><i class="icon-cogs"></i>分享成本明细</div>
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
            <div style="font-size: 14px"> 物资名称: 汽轮机主齿轮 </div>
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
            <th>合同编号</th>
            <th>批次编号</th>
            <th>分入数量</th>
            <th>分出数量</th>
            <th>分享期开始</th>
            <th>分享期结束</th>
            <th>合同金额</th>
            <th>预售金额</th>
            <th>分享费</th>
            <th>其他费用</th>
          </tr>
          </thead>
          <tbody>
          <c:forEach items="${contractDetailList}" var="contractDetail">
            <tr>
              <td>${contractDetail.contractNo}</td>
              <td><fmt:formatDate value="${contractDetail.insurancePeriodEnd}" ></fmt:formatDate></td>
              <td>${contractDetail.num}</td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.price}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.costInventory}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.depreciation}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.interest}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.interest}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.interest}" ></fmt:formatNumber></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.managementExpense}" ></fmt:formatNumber></td>
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

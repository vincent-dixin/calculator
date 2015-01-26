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
        <div class="caption"><i class="icon-cogs"></i>汽轮机主齿轮 (1100002047) -- 租赁占有成本明细</div>
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
              <th>采购管理费</th>
              <th>租赁费</th>
            </tr>
          </thead>
          <tbody>
          <c:forEach items="${contractDetailList}" var="contractDetail">
            <tr>
              <td>${contractDetail.contractNo}</td>
              <td><fmt:formatDate value="${contractDetail.contractDate}" ></fmt:formatDate></td>
              <td><fmt:formatNumber pattern="###,###,###,##0.00#" value=" ${contractDetail.price}" ></fmt:formatNumber></td>
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

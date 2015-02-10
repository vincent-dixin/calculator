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
    <title>参数设置</title>
</head>
<body>
<fieldset>
    <legend>全局参数</legend>
    <form class="form-horizontal">
      <div class="control-group">
        <label class="control-label" for="financingCost">资金成本</label>
        <div class="controls">
          <input type="text" id="financingCost" style="text-align:right;" placeholder="5%">
        </div>
      </div>
    </form>
</fieldset>
<fieldset>
    <legend>物料参数</legend>
    <form class="form-horizontal">
      <div class="control-group">
        <label class="control-label">物资编号</label>
        <div class="controls">
            <select>
                <option >1100001070</option>
            </select>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">物资名称</label>
        <div class="controls">
            <select>
                <option >东风康明斯柴油发电机组 50KW</option>
            </select>
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">折旧年限</label>
        <div class="controls">
          <input type="text" style="text-align:right;" placeholder="20">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">寿期（保质期）</label>
        <div class="controls">
          <input type="text" style="text-align:right;" placeholder="20">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">库存下限</label>
        <div class="controls">
          <input type="text" style="text-align:right;" placeholder="6">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">库存上限</label>
        <div class="controls">
          <input type="text" style="text-align:right;" placeholder="10">
        </div>
      </div>
      <div class="control-group">
        <label class="control-label">基准保障水平</label>
        <div class="controls">
          <input type="text" style="text-align:right;" placeholder="95%">
        </div>
      </div>
    </form>
</fieldset>
</body>
</html>

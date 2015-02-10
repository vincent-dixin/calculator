<%--
  Created by IntelliJ IDEA.
  User: vincent
  Date: 2015/1/28 0028
  Time: 10:02
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
    <div class="tabbable tabbable-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab_1" data-toggle="tab">基准方案：现状</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab_1">
          <div class="row-fluid">
            <div class="span11">
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
                </tr>
                </thead>
                <tbody>
                  <tr>
                    <td rowspan="4" style="text-align: center;">1100002047</td>
                    <td rowspan="4">汽轮机主齿轮</td>
                    <td style="text-align: center;">购销</td>
                    <td style="text-align: center;"><a href="">2</a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="7606.80733333333" ></fmt:formatNumber></a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="57051.055" ></fmt:formatNumber></a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="834237.125" ></fmt:formatNumber></a></td>
                    <td rowspan="4" style="text-align: center;">
                      <a href="javascript:;">99.99%</a>
                    </td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">租赁</td>
                    <td style="text-align: center;"><a href="">0</a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="0" ></fmt:formatNumber></a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="0" ></fmt:formatNumber></a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="0" ></fmt:formatNumber></a></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">分享</td>
                    <td style="text-align: center;"><a href="">1</a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="31025" ></fmt:formatNumber></a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="31025" ></fmt:formatNumber></a></td>
                    <td style="text-align: center;"><a href=""><fmt:formatNumber pattern="###,###,###,##0.00#" value="0" ></fmt:formatNumber></a></td>
                  </tr>
                  <tr>
                    <td style="text-align: center;">小计</td>
                    <td style="text-align: center;"><span class="label label-info">3</span></td>
                    <td style="text-align: center;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value="38632" ></fmt:formatNumber></span></td>
                    <td style="text-align: center;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value="88076" ></fmt:formatNumber></span></td>
                    <td style="text-align: center;"><span class="label label-success"><fmt:formatNumber pattern="###,###,###,##0.00#" value="834237" ></fmt:formatNumber></span></td>
                  </tr>
                </tbody>
              </table>
            </div>
            <div class="span1">
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row-fluid">
  <div class="span12">
    <div class="tabbable tabbable-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab_2" data-toggle="tab">备选方案：方案一</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab_2">
          <div class="row-fluid">
            <div class="span11">
                <table class="table table-condensed flip-content">
              <thead class="flip-content">
              <tr>
                <th style="vertical-align: middle;text-align: center;width: 90px;">交易类型</th>
                <th style="vertical-align: middle;text-align: center;width: 90px;">交易方向</th>
                <th style="vertical-align: middle;text-align: center;width: 90px;">数量</th>
                <th style="vertical-align: middle;text-align: center;width: 90px;">保障期开始</th>
                <th style="vertical-align: middle;text-align: center;width: 90px;">保障期结束</th>
                <th style="vertical-align: middle;text-align: center;width: 90px;">合同金额</th>
                <th style="vertical-align: middle;text-align: center;width: 90px;">备注</th>
              </tr>
              </thead>
              <tbody>
              <tr>
                <td style="vertical-align: middle;text-align: center;">
                  <select class="span12 select2">
                    <option value="buy" selected >购销</option>
                    <option value="buy">租赁</option>
                    <option value="sale">分享</option>
                  </select>
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <select class="span12 select2">
                    <option value="buy" selected>购买</option>
                    <option value="sale">销售</option>
                  </select>
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <input type="text" class="span12 m-wrap" value="1"/>
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <input type="text" class="span12 m-wrap date-picker" readonly value="01/01/2015" />
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <input type="text" class="span12 m-wrap date-picker" readonly value="31/12/2024" />
                </td>
                <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="380,000" /></td>
                <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="合同金额包含运费" /></td>
              </tr>
              <tr>
                <td style="vertical-align: middle;text-align: center;">
                  <select class="span12 select2">
                    <option value="buy"  >购销</option>
                    <option value="buy" selected >租赁</option>
                    <option value="sale">分享</option>
                  </select>
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <select class="span12 select2">
                    <option value="buy" selected>租入</option>
                    <option value="sale">租出</option>
                  </select>
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <input type="text" class="span12 m-wrap" value="1"/>
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <input type="text" class="span12 m-wrap date-picker" readonly value="01/01/2015" />
                </td>
                <td style="vertical-align: middle;text-align: center;">
                  <input type="text" class="span12 m-wrap date-picker" readonly value="31/12/2015" />
                </td>
                <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="80,000" /></td>
                <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="" /></td>
              </tr>
              </tbody>
              <tfoot>

              <tr>
                <th style="vertical-align: middle;text-align: center;">
                  合计
                </th>
                <td style="vertical-align: middle;text-align: center;">

                </td>
                <th style="vertical-align: middle;text-align: center;">
                  2
                </th>
                <td style="vertical-align: middle;text-align: center;">

                </td>
                <td style="vertical-align: middle;text-align: center;">

                </td>
                <th style="vertical-align: middle;text-align: center;">
                  460,000
                </th>
                <td style="vertical-align: middle;text-align: center;">

                </td>
              </tr>
              <tr>
                <td style="vertical-align: middle;text-align: center;">
                  <a class="btn mini icn-only"><i class="icon-plus"></i></a>
                </td>
              </tr>
              </tfoot>
            </table>
            </div>
            <div class="span1">
              <a class="btn green">加入对比</a>
            </div>
            </div>
        </div>
      </div>
    </div>
  </div>
</div>

<div class="row-fluid">
  <div class="span12">
    <div class="tabbable tabbable-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab_3" data-toggle="tab">备选方案：方案二</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab_3">
          <div class="row-fluid">
            <div class="span11">
              <table class="table table-condensed flip-content">
            <thead class="flip-content">
            <tr>
              <th style="vertical-align: middle;text-align: center;width: 90px;">交易类型</th>
              <th style="vertical-align: middle;text-align: center;width: 90px;">交易方向</th>
              <th style="vertical-align: middle;text-align: center;width: 90px;">数量</th>
              <th style="vertical-align: middle;text-align: center;width: 90px;">保障期开始</th>
              <th style="vertical-align: middle;text-align: center;width: 90px;">保障期结束</th>
              <th style="vertical-align: middle;text-align: center;width: 90px;">合同金额</th>
              <th style="vertical-align: middle;text-align: center;width: 90px;">备注</th>
            </tr>
            </thead>
            <tbody>
            <tr>
              <td style="vertical-align: middle;text-align: center;">
                <select class="span12 select2">
                  <option value="buy"  >购销</option>
                  <option value="buy" selected>租赁</option>
                  <option value="sale">分享</option>
                </select>
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <select class="span12 select2">
                  <option value="buy" selected>租入</option>
                  <option value="sale">租出</option>
                </select>
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <input type="text" class="span12 m-wrap" value="1"/>
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <input type="text" class="span12 m-wrap date-picker" readonly value="01/01/2015" />
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <input type="text" class="span12 m-wrap date-picker" readonly value="31/12/2015" />
              </td>
              <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="80,000" /></td>
              <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="" /></td>
            </tr>
            <tr>
              <td style="vertical-align: middle;text-align: center;">
                <select class="span12 select2">
                  <option value="buy"  >购销</option>
                  <option value="buy"  >租赁</option>
                  <option value="sale" selected>分享</option>
                </select>
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <select class="span12 select2">
                  <option value="buy" selected>分入</option>
                  <option value="sale">分出</option>
                </select>
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <input type="text" class="span12 m-wrap" value="1"/>
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <input type="text" class="span12 m-wrap date-picker" readonly value="01/01/2015" />
              </td>
              <td style="vertical-align: middle;text-align: center;">
                <input type="text" class="span12 m-wrap date-picker" readonly value="31/12/2015" />
              </td>
              <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="35,000" /></td>
              <td style="vertical-align: middle;text-align: center;"><input type="text" class="span12 m-wrap" value="转让价格380000" /></td>
            </tr>
            </tbody>
            <tfoot>

            <tr>
              <th style="vertical-align: middle;text-align: center;">
                合计
              </th>
              <td style="vertical-align: middle;text-align: center;">

              </td>
              <th style="vertical-align: middle;text-align: center;">
                2
              </th>
              <td style="vertical-align: middle;text-align: center;">

              </td>
              <td style="vertical-align: middle;text-align: center;">

              </td>
              <th style="vertical-align: middle;text-align: center;">
                115,000
              </th>
              <td style="vertical-align: middle;text-align: center;">

              </td>
            </tr>
            <tr>
              <td style="vertical-align: middle;text-align: center;">
                <a class="btn mini icn-only"><i class="icon-plus"></i></a>
              </td>
            </tr>
            </tfoot>
          </table>
            </div>
            <div class="span1">
            <a class="btn green">加入对比</a>
          </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<div class="row-fluid">
  <a href="#" class="icon-btn span2">
    <i class="icon-plus"></i>
    <div>增加</div>
  </a>
</div>
<div class="row-fluid">
  <div class="span12">
    <div class="tabbable tabbable-custom">
      <ul class="nav nav-tabs">
        <li class="active"><a href="#tab_4" data-toggle="tab">对比栏</a></li>
      </ul>
      <div class="tab-content">
        <div class="tab-pane active" id="tab_4">
          <div class="span11">
            <a href="#" class="btn blue" style="width: 125px;height: 80px;text-align: center;">
              <div>
                <ul  style="list-style-type:none;margin-left: 0px;">
                  <li>基准方案</li>
                  <li>购销&nbsp;&nbsp; :&nbsp;&nbsp; 2</li>
                  <li>租赁&nbsp;&nbsp; :&nbsp;&nbsp; 0</li>
                  <li>分享&nbsp;&nbsp; :&nbsp;&nbsp; 1</li>
                </ul>
              </div>
            </a>
            <a href="#" class="btn blue" style="width: 125px;height: 80px;text-align: center;">
              <div>
                <ul  style="list-style-type:none;margin-left: 0px;">
                  <li>方案一</li>
                  <li>购销&nbsp;&nbsp; :&nbsp;&nbsp; 1</li>
                  <li>租赁&nbsp;&nbsp; :&nbsp;&nbsp; 1</li>
                  <li>分享&nbsp;&nbsp; :&nbsp;&nbsp; 0</li>
                </ul>
              </div>
              
            </a>
            <a href="#" class="btn blue" style="width: 125px;height: 80px;text-align: center;">
              <div>
                <ul  style="list-style-type:none;margin-left: 0px;">
                  <li>方案二</li>
                  <li>购销&nbsp;&nbsp; :&nbsp;&nbsp; 0</li>
                  <li>租赁&nbsp;&nbsp; :&nbsp;&nbsp; 1</li>
                  <li>分享&nbsp;&nbsp; :&nbsp;&nbsp; 1</li>
                </ul>
              </div>
            </a>
            <a href="#" class="btn"  style="width: 125px;height: 80px;border: dashed 1px;background-color: #fff;">

              <div></div>
            </a>
          </div>
          <div class="span1">
            <a class="btn green" href="${ctx}/trade/scheme/comparison" >对比</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script type="text/javascript">
  $('.date-picker').datepicker();
</script>
</body>
</html>

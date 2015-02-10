<%--
  Created by IntelliJ IDEA.
  User: vincent
  Date: 2015/2/4 0004
  Time: 11:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
</head>
<body>
<div class="row-fluid">
  <div class="span12">
    <table class="table table-hover table-bordered">
      <tbody>
      <tr>
        <th colspan="5" align="left" style="background-color: #f5f5f5;">方案摘要</th>
      </tr>
      <tr>
        <th style="text-align: center;background-color: #f5f5f5;">方案名称</th>
        <th style="text-align: center;background-color: #f5f5f5;">现状</th>
        <th style="text-align: center;background-color: #f5f5f5;">方案一</th>
        <th style="text-align: center;background-color: #f5f5f5;">方案二</th>
      </tr>
      <tr>
        <th style="text-align: center;width: 120px;">
            <div class="row-fluid">
              <div class="span3">
                <a onclick="showAndHideNum();"><i id="numIcon" class="icon-plus"></i></a>
              </div>
              <div class="span9">
                数量
              </div>
            </div>
            <script>
                function showAndHideNum() {
                    var icon = $('#numIcon');
                    if(icon.attr('class') == 'icon-plus') {
                        $('.numDiv').show();
                        icon.attr('class','icon-minus');
                    }else {
                        $('.numDiv').hide();
                        icon.attr('class','icon-plus');
                    }
                }
            </script>

        </th>
        <th style="text-align: center;">—</th>
        <th style="text-align: center;">2</th>
        <th style="text-align: center;">2</th>
      </tr>
      <tr style="display:none;" class="numDiv">
        <td style="text-align: center;" >购销</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">1</td>
        <td style="text-align: center;">0</td>
      </tr>
      <tr style="display:none;" class="numDiv">
        <td style="text-align: center;">租赁</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">1</td>
        <td style="text-align: center;">1</td>
      </tr>
      <tr style="display:none;" class="numDiv">
        <td style="text-align: center;">分享</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">0</td>
        <td style="text-align: center;">1</td>
      </tr>
      </div>
      <tr>
        <th style="text-align: center;">
            <div class="row-fluid">
              <div class="span3">
                <a onclick="showAndHideContractValue();"><i id="contractValueIcon" class="icon-plus"></i></a>
              </div>
              <div class="span9">
                合同金额
              </div>
            </div>
            <script>
                function showAndHideContractValue() {
                    var icon = $('#contractValueIcon');
                    if(icon.attr('class') == 'icon-plus') {
                        $('.contractValueDiv').show();
                        icon.attr('class','icon-minus');
                    }else {
                        $('.contractValueDiv').hide();
                        icon.attr('class','icon-plus');
                    }
                }
            </script>
        </th>
        <th style="text-align: center;">—</th>
        <th style="text-align: center;">460,000</th>
        <th style="text-align: center;">115,000</th>
      </tr>
      <tr style="display:none;" class="contractValueDiv">
        <td style="text-align: center;">购销</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">380,000</td>
        <td style="text-align: center;">0</td>
      </tr>
      <tr style="display:none;" class="contractValueDiv">
        <td style="text-align: center;">租赁</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">80,000</td>
        <td style="text-align: center;">80,000</td>
      </tr>
      <tr style="display:none;" class="contractValueDiv">
        <td style="text-align: center;">分享</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">0</td>
        <td style="text-align: center;">35,000</td>
      </tr>
      <tr>
        <th style="text-align: center;">
            <div class="row-fluid">
              <div class="span3">
                <a onclick="showAndHideAnnualCost();"><i id="annualCostIcon" class="icon-plus"></i></a>
              </div>
              <div class="span9">
                年度成本
              </div>
            </div>
            <script>
                function showAndHideAnnualCost() {
                    var icon = $('#annualCostIcon');
                    if(icon.attr('class') == 'icon-plus') {
                        $('.annualCostDiv').show();
                        icon.attr('class','icon-minus');
                    }else {
                        $('.annualCostDiv').hide();
                        icon.attr('class','icon-plus');
                    }
                }
            </script>
        </th>
        <th style="text-align: center;">—</th>
        <th style="text-align: center;">99,000</th>
        <th style="text-align: center;">115,000</th>
      </tr>
      <tr style="display:none;" class="annualCostDiv">
        <td style="text-align: center;">购销</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">19,000</td>
        <td style="text-align: center;">　</td>
      </tr>
      <tr style="display:none;" class="annualCostDiv">
        <td style="text-align: center;">租赁</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">80,000</td>
        <td style="text-align: center;">80,000</td>
      </tr>
      <tr style="display:none;" class="annualCostDiv">
        <td style="text-align: center;">分享</td>
        <td style="text-align: center;">—</td>
        <td style="text-align: center;">0</td>
        <td style="text-align: center;">35,000</td>
      </tr>
      <tr>
        <th colspan="5" align="left" style="background-color: #f5f5f5;">方案实施后状况（实际+现状）　</th>
      </tr>
      <tr>
        <th style="text-align: center;">
            <div class="row-fluid">
              <div class="span3">
                <a onclick="showAndHideHoldings();"><i id="holdingsIcon" class="icon-plus"></i></a>
              </div>
              <div class="span9">
                占有量
              </div>
            </div>
            <script>
                function showAndHideHoldings() {
                    var icon = $('#holdingsIcon');
                    if(icon.attr('class') == 'icon-plus') {
                        $('.holdingsDiv').show();
                        icon.attr('class','icon-minus');
                    }else {
                        $('.holdingsDiv').hide();
                        icon.attr('class','icon-plus');
                    }
                }
            </script>
        </th>
        <th style="text-align: center;">7</th>
        <th style="text-align: center;">9</th>
        <th style="text-align: center;">9</th>
      </tr>
      <tr style="display:none;" class="holdingsDiv">
        <td style="text-align: center;">购销</td>
        <td style="text-align: center;">5</td>
        <td style="text-align: center;">6</td>
        <td style="text-align: center;">5</td>
      </tr>
      <tr style="display:none;" class="holdingsDiv">
        <td style="text-align: center;">租赁</td>
        <td style="text-align: center;">2</td>
        <td style="text-align: center;">3</td>
        <td style="text-align: center;">3</td>
      </tr>
      <tr style="display:none;" class="holdingsDiv">
        <td style="text-align: center;">分享</td>
        <td style="text-align: center;">0</td>
        <td style="text-align: center;">0</td>
        <td style="text-align: center;">1</td>
      </tr>

      <tr>
        <th style="text-align: center;">
            <div class="row-fluid">
                <div class="span9 offset3">资产原值</div>
            </div>
        </th>
        <th style="text-align: center;">1,168,950 </th>
        <th style="text-align: center;">1,548,950 </th>
        <th style="text-align: center;">1,168,950 </th>
      </tr>
      <tr>
          <th style="text-align: center;">
              <div class="row-fluid">
                <div class="span3">
                  <a onclick="showAndHideAnnualCostImplement();"><i id="annualCostImplementIcon" class="icon-plus"></i></a>
                </div>
                <div class="span9">
                  年度成本
                </div>
              </div>
              <script>
                  function showAndHideAnnualCostImplement() {
                      var icon = $('#annualCostImplementIcon');
                      if(icon.attr('class') == 'icon-plus') {
                          $('.annualCostImplementDiv').show();
                          icon.attr('class','icon-minus');
                      }else {
                          $('.annualCostImplementDiv').hide();
                          icon.attr('class','icon-plus');
                      }
                  }
              </script>
          </th>
          <th style="text-align: center;">131,145</th>
          <th style="text-align: center;">230,145</th>
          <th style="text-align: center;">246,145</th>
        </tr>
        <tr style="display:none;" class="annualCostImplementDiv">
          <td style="text-align: center;">购销</td>
          <td style="text-align: center;">116,895</td>
          <td style="text-align: center;">135,895</td>
          <td style="text-align: center;">116,895</td>
        </tr>
        <tr style="display:none;" class="annualCostImplementDiv">
          <td style="text-align: center;">租赁</td>
          <td style="text-align: center;">14,250</td>
          <td style="text-align: center;">94,250</td>
          <td style="text-align: center;">94,250</td>
        </tr>
        <tr style="display:none;" class="annualCostImplementDiv">
          <td style="text-align: center;">分享</td>
          <td style="text-align: center;">0</td>
          <td style="text-align: center;">0</td>
          <td style="text-align: center;">35,000</td>
        </tr>
      <tr>
        <th style="text-align: center;">
            <div class="row-fluid">
                <div class="span3">
                    <a onclick="showAndHideServiceLevel();"><i id="serviceLevelIcon" class="icon-plus"></i></a>
                </div>
                <div class="span9">
                    保障水平
                </div>
            </div>
            <script>
                function showAndHideServiceLevel() {
                    var icon = $('#serviceLevelIcon');
                    if(icon.attr('class') == 'icon-plus') {
                        $('.serviceLevelDiv').show();
                        icon.attr('class','icon-minus');
                    }else {
                        $('.serviceLevelDiv').hide();
                        icon.attr('class','icon-plus');
                    }
                }
            </script>
        </th>
        <th style="text-align: center;">95.83%</th>
        <th style="text-align: center;">99.52%</th>
        <th style="text-align: center;">99.52%</th>
      </tr>
      <tr style="display:none;" class="serviceLevelDiv">
        <td style="text-align: center;">保障期</td>
        <td style="text-align: center;">1年</td>
        <td style="text-align: center;">1年</td>
        <td style="text-align: center;">1年</td>
      </tr>
      <tr style="display:none;" class="serviceLevelDiv">
        <td style="text-align: center;">库存下限</td>
        <td style="text-align: center;">6</td>
        <td style="text-align: center;">6</td>
        <td style="text-align: center;">6</td>
      </tr>
      <tr style="display:none;" class="serviceLevelDiv">
        <td style="text-align: center;">超额库存量</td>
        <td style="text-align: center;">1</td>
        <td style="text-align: center;">3</td>
        <td style="text-align: center;">3</td>
      </tr>
      <tr style="display:none;" class="serviceLevelDiv">
        <td style="text-align: center;">基准保障水平</td>
        <td style="text-align: center;">95%</td>
        <td style="text-align: center;">95%</td>
        <td style="text-align: center;">95%</td>
      </tr>
      <tr style="display:none;" class="serviceLevelDiv">
        <td style="text-align: center;">超额保障水平</td>
        <td style="text-align: center;">0.83%</td>
        <td style="text-align: center;">4.52%</td>
        <td style="text-align: center;">4.52%</td>
      </tr>
      </tbody>
    </table>
  </div>
</div>
</body>
</html>

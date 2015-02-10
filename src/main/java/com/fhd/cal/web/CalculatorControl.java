package com.fhd.cal.web;

import com.fhd.cal.entity.Sheet2Entity;
import com.fhd.cal.modules.jythonutils.PythonReturnDataBuilder;
import com.fhd.cal.repository.Sheet1Dao;
import com.fhd.cal.repository.Sheet2Dao;
import com.fhd.cal.service.AssetsService;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.python.core.PyFunction;
import org.python.core.PyInteger;
import org.python.core.PyObject;
import org.python.util.PythonInterpreter;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by vincent on 2014/12/22 0022.
 */
@Controller
public class CalculatorControl {

    @Resource
    private AssetsService assetsService;
    @Resource
    private Sheet1Dao sheet1Dao;
    @Resource
    private Sheet2Dao sheet2Dao;


    @RequestMapping("cal")
    public void cal(){

    }




    @RequestMapping("assets/list")
    public String assetsList(Model model) {
        model.addAttribute("assetsList",assetsService.assetsList());

        return "assets-list";
    }

    @RequestMapping("quantity/detail/{assetsId}/{tradeType}")
    public String quantityDetail(@PathVariable String assetsId,@PathVariable String tradeType,Model model) {
        String returnData = "";
        if("1".equals(tradeType)){
            returnData = "buy-sale-detail";
        } else if("2".equals(tradeType)){
            returnData = "lease-detail";
        } else {
            returnData = "share-detail";
        }
        model.addAttribute("contractDetailList",assetsService.contractDetailList(assetsId, tradeType));

        return returnData;
    }

    @RequestMapping("cost/detail/{assetsId}/{tradeType}")
    public String costDetail(@PathVariable String assetsId,@PathVariable String tradeType,Model model) {
        String returnData = "";
        if("1".equals(tradeType)){
            returnData = "buy-sale-cost-detail";
        } else if("2".equals(tradeType)){
            returnData = "lease-cost-detail";
        } else {
            returnData = "share-cost-detail";
        }
        model.addAttribute("contractDetailList",assetsService.contractDetailList(assetsId,tradeType));
        return returnData;
    }

    @RequestMapping(value = "securitylevel/result" , method = RequestMethod.POST)
    public String securityLevelResultP(String assetsId,Model model) {

        List<Sheet2Entity> sheet2Entities = sheet2Dao.findBySceneAndSheet1id(1, 1);
        String returnDataCategories = "[";
        String returnDataValue = "[";
        for (Sheet2Entity sheet2Entity : sheet2Entities) {
            returnDataCategories += "'" + sheet2Entity.getX() +  "'" + ",";
            returnDataValue += sheet2Entity.getY() + ",";
        }
        returnDataCategories = StringUtils.substring(returnDataCategories, 0, returnDataCategories.length()-1) + "]";
        returnDataValue = StringUtils.substring(returnDataValue, 0, returnDataValue.length()-1) + "]";
        model.addAttribute("returnDataCategories",returnDataCategories);
        model.addAttribute("returnDataValue",returnDataValue);
        model.addAttribute("sheet1List",sheet1Dao.findAll());
        return "securitylevel-result";
    }

    @RequestMapping(value = "securitylevel/result/{assetsId}" , method = RequestMethod.GET)
    public String securityLevelResultG(@PathVariable String assetsId,Model model) {
        model.addAttribute("sheet1List",sheet1Dao.findAll());
        List<Sheet2Entity> sheet2Entities = sheet2Dao.findBySceneAndSheet1id(1, 1);
        String returnDataCategories = "[";
        String returnDataValue = "[";
        for (Sheet2Entity sheet2Entity : sheet2Entities) {
            returnDataCategories += "'" + sheet2Entity.getX() +  "'" + ",";
            returnDataValue += sheet2Entity.getY() + ",";
        }
        returnDataCategories = StringUtils.substring(returnDataCategories, 0, returnDataCategories.length()-1) + "]";
        returnDataValue = StringUtils.substring(returnDataValue, 0, returnDataValue.length()-1) + "]";
        model.addAttribute("returnDataCategories",returnDataCategories);
        model.addAttribute("returnDataValue",returnDataValue);
        return "securitylevel-result";
    }

    @ResponseBody
    @RequestMapping("securitylevel/sheet2/{assetsId}/{date}")
    public String securityLevelSheet2(@PathVariable String assetsId,@PathVariable Integer date,Model model) {

        List<Sheet2Entity> sheet2Entities = sheet2Dao.findBySceneAndSheet1id(1, date);
        String returnData = "";
        for (Sheet2Entity sheet2Entity : sheet2Entities) {
            returnData += sheet2Entity.getY() + ",";

        }
        returnData = StringUtils.substring(returnData, 0, returnData.length()-1) + "";

        return returnData;
    }


    public static void main(String args[])
    {

        PythonInterpreter interpreter = new PythonInterpreter();
        interpreter.execfile("D:\\Desktop\\pyfunction.py");
        PyFunction func = (PyFunction)interpreter.get("pyfunc",PyFunction.class);

        int a = 3, b = 8, c = 5 ;
        PyObject pyobj = func.__call__(new PyInteger(a), new PyInteger(b), new PyInteger(c));
        String returnData = pyobj.toString();
        List<String[]> dataToList = PythonReturnDataBuilder.dataToList(returnData);
        for (String[] strings : dataToList) {
            System.out.println(ToStringBuilder.reflectionToString(strings));
        }
    }

}

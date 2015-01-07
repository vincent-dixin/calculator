package com.fhd.cal.web;

import com.fhd.cal.modules.jythonutils.PythonReturnDataBuilder;
import com.fhd.cal.repository.Sheet1Dao;
import com.fhd.cal.service.AssetsService;
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

import javax.annotation.Resource;
import java.util.List;

/**
 * Created by vincent on 2014/12/22 0022.
 */
@Controller
public class CalculatorControl {

    @Resource
    private AssetsService assetsService;
    @Resource
    private Sheet1Dao sheet1Dao;


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
        model.addAttribute("contractDetailList",assetsService.contractDetailList(assetsId, tradeType));

        return "quantity-detail";
    }

    @RequestMapping("cost/detail/{assetsId}/{tradeType}")
    public String costDetail(@PathVariable String assetsId,@PathVariable String tradeType,Model model) {
        model.addAttribute("contractDetailList",assetsService.contractDetailList(assetsId,tradeType));
        return "cost-detail";
    }

    @RequestMapping(value = "securitylevel/result" , method = RequestMethod.POST)
    public String securityLevelResultP(String assetsId,Model model) {
        model.addAttribute("sheet1List",sheet1Dao.findAll());
        return "securitylevel-result";
    }

    @RequestMapping(value = "securitylevel/result/{assetsId}" , method = RequestMethod.GET)
    public String securityLevelResultG(@PathVariable String assetsId,Model model) {
        model.addAttribute("sheet1List",sheet1Dao.findAll());
        return "securitylevel-result";
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

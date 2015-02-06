package com.fhd.cal.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by vincent on 2015/1/28 0028.
 */
@Controller
public class TradingSchemeControl {



    @RequestMapping("trade/scheme/comparison/{assetsId}")
    public String schemeComparison(@PathVariable String assetsId) {
        return "trade/scheme-comparison-" + assetsId;
    }

    @RequestMapping("trade/scheme/comparison")
    public String comparison() {
        return "trade/comparison";
    }

}

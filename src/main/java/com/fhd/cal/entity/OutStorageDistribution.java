package com.fhd.cal.entity;

import java.util.Date;

/**
 * Created by vincent on 2014/12/25 0025.
 */
public class OutStorageDistribution {

    private String materialNo;
    private Date useDate;
    private Integer number;

    public String getMaterialNo() {
        return materialNo;
    }

    public void setMaterialNo(String materialNo) {
        this.materialNo = materialNo;
    }

    public Date getUseDate() {
        return useDate;
    }

    public void setUseDate(Date useDate) {
        this.useDate = useDate;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }
}

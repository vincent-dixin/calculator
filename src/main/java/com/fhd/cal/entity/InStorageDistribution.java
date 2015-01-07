package com.fhd.cal.entity;

import java.util.Date;

/**
 * Created by vincent on 2014/12/25 0025.
 */
public class InStorageDistribution {

    private String orderNo;
    private Date orderDate;
    private String supplierNo;
    private String materialNo;
    private Integer number;
    private Date inStorageDate;

    public String getOrderNo() {
        return orderNo;
    }

    public void setOrderNo(String orderNo) {
        this.orderNo = orderNo;
    }

    public Date getOrderDate() {
        return orderDate;
    }

    public void setOrderDate(Date orderDate) {
        this.orderDate = orderDate;
    }

    public String getSupplierNo() {
        return supplierNo;
    }

    public void setSupplierNo(String supplierNo) {
        this.supplierNo = supplierNo;
    }

    public String getMaterialNo() {
        return materialNo;
    }

    public void setMaterialNo(String materialNo) {
        this.materialNo = materialNo;
    }

    public Integer getNumber() {
        return number;
    }

    public void setNumber(Integer number) {
        this.number = number;
    }

    public Date getInStorageDate() {
        return inStorageDate;
    }

    public void setInStorageDate(Date inStorageDate) {
        this.inStorageDate = inStorageDate;
    }
}

package com.fhd.cal.entity;

import org.springframework.data.jpa.domain.AbstractAuditable;
import org.springframework.data.jpa.domain.AbstractPersistable;

import javax.persistence.*;
import java.math.BigDecimal;
import java.util.Date;

/**
 * Created by vincent on 2015/1/5 0005.
 */
@Entity
@Table(name = "saa_contract_detail")
public class ContractDetailEntity extends AbstractPersistable<String> {
    private String assetsId;
    private String contractNo;
    private Date contractDate;
    private String tradeType;
    private Date insurancePeriodStart;
    private Date insurancePeriodEnd;
    private Integer num;
    private BigDecimal price;
    private BigDecimal costInventory;
    private BigDecimal depreciation;
    private BigDecimal interest;
    private BigDecimal managementExpense;
    private BigDecimal otherCost;
    private BigDecimal leaseCost;
    private BigDecimal shareCost;



    @Basic
    @Column(name = "assets_id")
    public String getAssetsId() {
        return assetsId;
    }

    public void setAssetsId(String assetsId) {
        this.assetsId = assetsId;
    }

    @Basic
    @Column(name = "contract_no")
    public String getContractNo() {
        return contractNo;
    }

    public void setContractNo(String contractNo) {
        this.contractNo = contractNo;
    }

    @Basic
    @Column(name = "contract_date")
    public Date getContractDate() {
        return contractDate;
    }

    public void setContractDate(Date contractDate) {
        this.contractDate = contractDate;
    }

    @Basic
    @Column(name = "trade_type")
    public String getTradeType() {
        return tradeType;
    }

    public void setTradeType(String tradeType) {
        this.tradeType = tradeType;
    }

    @Basic
    @Column(name = "insurance_period_start")
    public Date getInsurancePeriodStart() {
        return insurancePeriodStart;
    }

    public void setInsurancePeriodStart(Date insurancePeriodStart) {
        this.insurancePeriodStart = insurancePeriodStart;
    }

    @Basic
    @Column(name = "insurance_period_end")
    public Date getInsurancePeriodEnd() {
        return insurancePeriodEnd;
    }

    public void setInsurancePeriodEnd(Date insurancePeriodEnd) {
        this.insurancePeriodEnd = insurancePeriodEnd;
    }

    @Basic
    @Column(name = "num")
    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    @Basic
    @Column(name = "price")
    public BigDecimal getPrice() {
        return price;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    @Basic
    @Column(name = "cost_inventory")
    public BigDecimal getCostInventory() {
        return costInventory;
    }

    public void setCostInventory(BigDecimal costInventory) {
        this.costInventory = costInventory;
    }

    @Basic
    @Column(name = "depreciation")
    public BigDecimal getDepreciation() {
        return depreciation;
    }

    public void setDepreciation(BigDecimal depreciation) {
        this.depreciation = depreciation;
    }

    @Basic
    @Column(name = "interest")
    public BigDecimal getInterest() {
        return interest;
    }

    public void setInterest(BigDecimal interest) {
        this.interest = interest;
    }

    @Basic
    @Column(name = "management_expense")
    public BigDecimal getManagementExpense() {
        return managementExpense;
    }

    public void setManagementExpense(BigDecimal managementExpense) {
        this.managementExpense = managementExpense;
    }

    @Basic
    @Column(name = "other_cost")
    public BigDecimal getOtherCost() {
        return otherCost;
    }

    public void setOtherCost(BigDecimal otherCost) {
        this.otherCost = otherCost;
    }

    @Basic
    @Column(name = "lease_cost")
    public BigDecimal getLeaseCost() {
        return leaseCost;
    }

    public void setLeaseCost(BigDecimal leaseCost) {
        this.leaseCost = leaseCost;
    }

    @Basic
    @Column(name = "share_cost")
    public BigDecimal getShareCost() {
        return shareCost;
    }

    public void setShareCost(BigDecimal shareCost) {
        this.shareCost = shareCost;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        ContractDetailEntity that = (ContractDetailEntity) o;

        if (contractDate != null ? !contractDate.equals(that.contractDate) : that.contractDate != null) return false;
        if (contractNo != null ? !contractNo.equals(that.contractNo) : that.contractNo != null) return false;
        if (costInventory != null ? !costInventory.equals(that.costInventory) : that.costInventory != null)
            return false;
        if (depreciation != null ? !depreciation.equals(that.depreciation) : that.depreciation != null) return false;
        if (getId() != null ? !getId().equals(that.getId()) : that.getId() != null) return false;
        if (insurancePeriodEnd != null ? !insurancePeriodEnd.equals(that.insurancePeriodEnd) : that.insurancePeriodEnd != null)
            return false;
        if (insurancePeriodStart != null ? !insurancePeriodStart.equals(that.insurancePeriodStart) : that.insurancePeriodStart != null)
            return false;
        if (interest != null ? !interest.equals(that.interest) : that.interest != null) return false;
        if (leaseCost != null ? !leaseCost.equals(that.leaseCost) : that.leaseCost != null) return false;
        if (managementExpense != null ? !managementExpense.equals(that.managementExpense) : that.managementExpense != null)
            return false;
        if (num != null ? !num.equals(that.num) : that.num != null) return false;
        if (otherCost != null ? !otherCost.equals(that.otherCost) : that.otherCost != null) return false;
        if (price != null ? !price.equals(that.price) : that.price != null) return false;
        if (shareCost != null ? !shareCost.equals(that.shareCost) : that.shareCost != null) return false;
        if (tradeType != null ? !tradeType.equals(that.tradeType) : that.tradeType != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (contractNo != null ? contractNo.hashCode() : 0);
        result = 31 * result + (contractDate != null ? contractDate.hashCode() : 0);
        result = 31 * result + (tradeType != null ? tradeType.hashCode() : 0);
        result = 31 * result + (insurancePeriodStart != null ? insurancePeriodStart.hashCode() : 0);
        result = 31 * result + (insurancePeriodEnd != null ? insurancePeriodEnd.hashCode() : 0);
        result = 31 * result + (num != null ? num.hashCode() : 0);
        result = 31 * result + (price != null ? price.hashCode() : 0);
        result = 31 * result + (costInventory != null ? costInventory.hashCode() : 0);
        result = 31 * result + (depreciation != null ? depreciation.hashCode() : 0);
        result = 31 * result + (interest != null ? interest.hashCode() : 0);
        result = 31 * result + (managementExpense != null ? managementExpense.hashCode() : 0);
        result = 31 * result + (otherCost != null ? otherCost.hashCode() : 0);
        result = 31 * result + (leaseCost != null ? leaseCost.hashCode() : 0);
        result = 31 * result + (shareCost != null ? shareCost.hashCode() : 0);
        return result;
    }
}

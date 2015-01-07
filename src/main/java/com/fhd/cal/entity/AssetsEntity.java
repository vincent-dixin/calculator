package com.fhd.cal.entity;

import org.springframework.data.jpa.domain.AbstractPersistable;

import javax.persistence.*;
import java.math.BigDecimal;

/**
 * Created by vincent on 2015/1/5 0005.
 */
@Entity
@Table(name = "saa_assets")
public class AssetsEntity extends AbstractPersistable<String> {
    private String assetsNo;
    private String assetsName;
    private Integer purchaseSale;
    private Integer lease;
    private Integer share;
    private BigDecimal purchaseCost;
    private BigDecimal leaseCost;
    private BigDecimal shareCost;

    public AssetsEntity() {
    }

    public AssetsEntity(String id) {
        setId(id);
    }

    @Basic
    @Column(name = "assets_no")
    public String getAssetsNo() {
        return assetsNo;
    }

    public void setAssetsNo(String assetsNo) {
        this.assetsNo = assetsNo;
    }

    @Basic
    @Column(name = "assets_name")
    public String getAssetsName() {
        return assetsName;
    }

    public void setAssetsName(String assetsName) {
        this.assetsName = assetsName;
    }

    @Basic
    @Column(name = "purchase_sale")
    public Integer getPurchaseSale() {
        return purchaseSale;
    }

    public void setPurchaseSale(Integer purchaseSale) {
        this.purchaseSale = purchaseSale;
    }

    @Basic
    @Column(name = "lease")
    public Integer getLease() {
        return lease;
    }

    public void setLease(Integer lease) {
        this.lease = lease;
    }

    @Basic
    @Column(name = "share")
    public Integer getShare() {
        return share;
    }

    public void setShare(Integer share) {
        this.share = share;
    }

    @Basic
    @Column(name = "purchase_cost")
    public BigDecimal getPurchaseCost() {
        return purchaseCost;
    }

    public void setPurchaseCost(BigDecimal purchaseCost) {
        this.purchaseCost = purchaseCost;
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

        AssetsEntity that = (AssetsEntity) o;

        if (assetsName != null ? !assetsName.equals(that.assetsName) : that.assetsName != null) return false;
        if (assetsNo != null ? !assetsNo.equals(that.assetsNo) : that.assetsNo != null) return false;
        if (getId() != null ? !getId().equals(that.getId()) : that.getId() != null) return false;
        if (lease != null ? !lease.equals(that.lease) : that.lease != null) return false;
        if (leaseCost != null ? !leaseCost.equals(that.leaseCost) : that.leaseCost != null) return false;
        if (purchaseCost != null ? !purchaseCost.equals(that.purchaseCost) : that.purchaseCost != null) return false;
        if (purchaseSale != null ? !purchaseSale.equals(that.purchaseSale) : that.purchaseSale != null) return false;
        if (share != null ? !share.equals(that.share) : that.share != null) return false;
        if (shareCost != null ? !shareCost.equals(that.shareCost) : that.shareCost != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = getId() != null ? getId().hashCode() : 0;
        result = 31 * result + (assetsNo != null ? assetsNo.hashCode() : 0);
        result = 31 * result + (assetsName != null ? assetsName.hashCode() : 0);
        result = 31 * result + (purchaseSale != null ? purchaseSale.hashCode() : 0);
        result = 31 * result + (lease != null ? lease.hashCode() : 0);
        result = 31 * result + (share != null ? share.hashCode() : 0);
        result = 31 * result + (purchaseCost != null ? purchaseCost.hashCode() : 0);
        result = 31 * result + (leaseCost != null ? leaseCost.hashCode() : 0);
        result = 31 * result + (shareCost != null ? shareCost.hashCode() : 0);
        return result;
    }
}

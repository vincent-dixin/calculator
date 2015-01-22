package com.fhd.cal.entity;

import org.springframework.data.jpa.domain.AbstractPersistable;

import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;

/**
 * Created by vincent on 2015/1/7 0007.
 */
@Entity
@Table(name = "Sheet2")
public class Sheet2Entity extends AbstractPersistable<Integer> {

    private Integer scene;
    private Integer sheet1id;
    private BigDecimal x;
    private BigDecimal y;

    @Column(name = "scene")
    public Integer getScene() {
        return scene;
    }

    public void setScene(Integer scene) {
        this.scene = scene;
    }

    @Column(name = "sheet1id")
    public Integer getSheet1id() {
        return sheet1id;
    }

    public void setSheet1id(Integer sheet1id) {
        this.sheet1id = sheet1id;
    }








    @Column(name = "x")
    public BigDecimal getX() {
        return x;
    }

    public void setX(BigDecimal x) {
        this.x = x;
    }

    @Column(name = "y")
    public BigDecimal getY() {
        return y;
    }

    public void setY(BigDecimal y) {
        this.y = y;
    }
}

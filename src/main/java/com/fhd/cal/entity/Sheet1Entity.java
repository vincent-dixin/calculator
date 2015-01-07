package com.fhd.cal.entity;

import org.springframework.data.jpa.domain.AbstractPersistable;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;

/**
 * Created by vincent on 2015/1/7 0007.
 */
@Entity
@Table(name = "Sheet1")
public class Sheet1Entity extends AbstractPersistable<Integer> {

    private BigDecimal b;
    private BigDecimal c;
    private BigDecimal d;
    private BigDecimal e;


    public BigDecimal getB() {
        return b;
    }

    public void setB(BigDecimal b) {
        this.b = b;
    }

    public BigDecimal getC() {
        return c;
    }

    public void setC(BigDecimal c) {
        this.c = c;
    }

    public BigDecimal getD() {
        return d;
    }

    public void setD(BigDecimal d) {
        this.d = d;
    }

    public BigDecimal getE() {
        return e;
    }

    public void setE(BigDecimal e) {
        this.e = e;
    }
}

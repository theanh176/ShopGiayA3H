package com.entities;

import javax.persistence.*;
import java.io.Serializable;

@Entity
@Table(name = "detailorder", schema = "shoe_db")
//@IdClass(DetailorderEntityPK.class)
public class DetailorderEntity implements Serializable {
    private int oid;
    private int pid;
    private Integer quantity;

    @Id
    @Column(name = "oid")
    public int getOid() {
        return oid;
    }

    public void setOid(int oid) {
        this.oid = oid;
    }

    @Id
    @Column(name = "pid")
    public int getPid() {
        return pid;
    }

    public void setPid(int pid) {
        this.pid = pid;
    }

    @Basic
    @Column(name = "Quantity")
    public Integer getQuantity() {
        return quantity;
    }

    public void setQuantity(Integer quantity) {
        this.quantity = quantity;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        DetailorderEntity that = (DetailorderEntity) o;

        if (oid != that.oid) return false;
        if (pid != that.pid) return false;
        if (quantity != null ? !quantity.equals(that.quantity) : that.quantity != null) return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = oid;
        result = 31 * result + pid;
        result = 31 * result + (quantity != null ? quantity.hashCode() : 0);
        return result;
    }


}
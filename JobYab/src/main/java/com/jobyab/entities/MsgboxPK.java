/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.entities;

import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Embeddable;
import javax.validation.constraints.NotNull;

/**
 *
 * @author sajad
 */
@Embeddable
public class MsgboxPK implements Serializable {
    @Basic(optional = false)
    @NotNull
    @Column(name = "user_id")
    private short userId;
    @Basic(optional = false)
    @NotNull
    @Column(name = "ad_id")
    private short adId;

    public MsgboxPK() {
    }

    public MsgboxPK(short userId, short adId) {
        this.userId = userId;
        this.adId = adId;
    }

    public short getUserId() {
        return userId;
    }

    public void setUserId(short userId) {
        this.userId = userId;
    }

    public short getAdId() {
        return adId;
    }

    public void setAdId(short adId) {
        this.adId = adId;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (int) userId;
        hash += (int) adId;
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof MsgboxPK)) {
            return false;
        }
        MsgboxPK other = (MsgboxPK) object;
        if (this.userId != other.userId) {
            return false;
        }
        if (this.adId != other.adId) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobyab.entities.MsgboxPK[ userId=" + userId + ", adId=" + adId + " ]";
    }
    
}

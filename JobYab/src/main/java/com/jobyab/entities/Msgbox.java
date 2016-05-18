/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.entities;

import java.io.Serializable;
import java.util.Date;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.EmbeddedId;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author sajad
 */
@Entity
@Table(name = "msgbox")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Msgbox.findAll", query = "SELECT m FROM Msgbox m"),
    @NamedQuery(name = "Msgbox.findByUserId", query = "SELECT m FROM Msgbox m WHERE m.msgboxPK.userId = :userId"),
    @NamedQuery(name = "Msgbox.findByAdId", query = "SELECT m FROM Msgbox m WHERE m.msgboxPK.adId = :adId"),
    @NamedQuery(name = "Msgbox.findByCoBox", query = "SELECT m FROM Msgbox m WHERE m.coBox = :coBox"),
    @NamedQuery(name = "Msgbox.findByUserBox", query = "SELECT m FROM Msgbox m WHERE m.userBox = :userBox"),
    @NamedQuery(name = "Msgbox.findByCoDel", query = "SELECT m FROM Msgbox m WHERE m.coDel = :coDel"),
    @NamedQuery(name = "Msgbox.findByUserDel", query = "SELECT m FROM Msgbox m WHERE m.userDel = :userDel"),
    @NamedQuery(name = "Msgbox.findByRcvSndTime", query = "SELECT m FROM Msgbox m WHERE m.rcvSndTime = :rcvSndTime")})
public class Msgbox implements Serializable {
    private static final long serialVersionUID = 1L;
    @EmbeddedId
    protected MsgboxPK msgboxPK;
    @Basic(optional = false)
    @NotNull
    @Column(name = "co_box")
    private boolean coBox;
    @Basic(optional = false)
    @NotNull
    @Column(name = "user_box")
    private boolean userBox;
    @Basic(optional = false)
    @NotNull
    @Column(name = "co_del")
    private boolean coDel;
    @Basic(optional = false)
    @NotNull
    @Column(name = "user_del")
    private boolean userDel;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "body")
    private String body;
    @Basic(optional = false)
    @NotNull
    @Column(name = "rcvSndTime")
    @Temporal(TemporalType.TIMESTAMP)
    private Date rcvSndTime;
    @JoinColumn(name = "ad_id", referencedColumnName = "ad_id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private Advertisement advertisement;
    @JoinColumn(name = "co_id", referencedColumnName = "employer_id")
    @ManyToOne(optional = false)
    private Employer coId;
    @JoinColumn(name = "user_id", referencedColumnName = "user_id", insertable = false, updatable = false)
    @ManyToOne(optional = false)
    private User user;

    public Msgbox() {
    }

    public Msgbox(MsgboxPK msgboxPK) {
        this.msgboxPK = msgboxPK;
    }

    public Msgbox(MsgboxPK msgboxPK, boolean coBox, boolean userBox, boolean coDel, boolean userDel, String body, Date rcvSndTime) {
        this.msgboxPK = msgboxPK;
        this.coBox = coBox;
        this.userBox = userBox;
        this.coDel = coDel;
        this.userDel = userDel;
        this.body = body;
        this.rcvSndTime = rcvSndTime;
    }

    public Msgbox(short userId, short adId) {
        this.msgboxPK = new MsgboxPK(userId, adId);
    }

    public MsgboxPK getMsgboxPK() {
        return msgboxPK;
    }

    public void setMsgboxPK(MsgboxPK msgboxPK) {
        this.msgboxPK = msgboxPK;
    }

    public boolean getCoBox() {
        return coBox;
    }

    public void setCoBox(boolean coBox) {
        this.coBox = coBox;
    }

    public boolean getUserBox() {
        return userBox;
    }

    public void setUserBox(boolean userBox) {
        this.userBox = userBox;
    }

    public boolean getCoDel() {
        return coDel;
    }

    public void setCoDel(boolean coDel) {
        this.coDel = coDel;
    }

    public boolean getUserDel() {
        return userDel;
    }

    public void setUserDel(boolean userDel) {
        this.userDel = userDel;
    }

    public String getBody() {
        return body;
    }

    public void setBody(String body) {
        this.body = body;
    }

    public Date getRcvSndTime() {
        return rcvSndTime;
    }

    public void setRcvSndTime(Date rcvSndTime) {
        this.rcvSndTime = rcvSndTime;
    }

    public Advertisement getAdvertisement() {
        return advertisement;
    }

    public void setAdvertisement(Advertisement advertisement) {
        this.advertisement = advertisement;
    }

    public Employer getCoId() {
        return coId;
    }

    public void setCoId(Employer coId) {
        this.coId = coId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (msgboxPK != null ? msgboxPK.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Msgbox)) {
            return false;
        }
        Msgbox other = (Msgbox) object;
        if ((this.msgboxPK == null && other.msgboxPK != null) || (this.msgboxPK != null && !this.msgboxPK.equals(other.msgboxPK))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobyab.entities.Msgbox[ msgboxPK=" + msgboxPK + " ]";
    }
    
}

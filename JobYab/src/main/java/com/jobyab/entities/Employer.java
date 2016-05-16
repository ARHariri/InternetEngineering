/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.jobyab.entities;

import java.io.Serializable;
import java.util.Collection;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author Ali
 */
@Entity
@Table(name = "employer")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Employer.findAll", query = "SELECT e FROM Employer e"),
    @NamedQuery(name = "Employer.findByEmployerId", query = "SELECT e FROM Employer e WHERE e.employerId = :employerId"),
    @NamedQuery(name = "Employer.findByCoName", query = "SELECT e FROM Employer e WHERE e.coName = :coName"),
    @NamedQuery(name = "Employer.findByCoTel", query = "SELECT e FROM Employer e WHERE e.coTel = :coTel"),
    @NamedQuery(name = "Employer.findByCoAddress", query = "SELECT e FROM Employer e WHERE e.coAddress = :coAddress"),
    @NamedQuery(name = "Employer.findByCoImage", query = "SELECT e FROM Employer e WHERE e.coImage = :coImage")})
public class Employer implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "employer_id")
    private Short employerId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "co_name")
    private String coName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 16)
    @Column(name = "co_tel")
    private String coTel;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "co_address")
    private String coAddress;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "co_image")
    private String coImage;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "coId")
    private Collection<Advertisement> advertisementCollection;
    @JoinColumn(name = "employer_id", referencedColumnName = "user_id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private User user;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "coId")
    private Collection<Msgbox> msgboxCollection;

    public Employer() {
    }

    public Employer(Short employerId) {
        this.employerId = employerId;
    }

    public Employer(Short employerId, String coName, String coTel, String coAddress, String coImage) {
        this.employerId = employerId;
        this.coName = coName;
        this.coTel = coTel;
        this.coAddress = coAddress;
        this.coImage = coImage;
    }

    public Short getEmployerId() {
        return employerId;
    }

    public void setEmployerId(Short employerId) {
        this.employerId = employerId;
    }

    public String getCoName() {
        return coName;
    }

    public void setCoName(String coName) {
        this.coName = coName;
    }

    public String getCoTel() {
        return coTel;
    }

    public void setCoTel(String coTel) {
        this.coTel = coTel;
    }

    public String getCoAddress() {
        return coAddress;
    }

    public void setCoAddress(String coAddress) {
        this.coAddress = coAddress;
    }

    public String getCoImage() {
        return coImage;
    }

    public void setCoImage(String coImage) {
        this.coImage = coImage;
    }

    @XmlTransient
    public Collection<Advertisement> getAdvertisementCollection() {
        return advertisementCollection;
    }

    public void setAdvertisementCollection(Collection<Advertisement> advertisementCollection) {
        this.advertisementCollection = advertisementCollection;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @XmlTransient
    public Collection<Msgbox> getMsgboxCollection() {
        return msgboxCollection;
    }

    public void setMsgboxCollection(Collection<Msgbox> msgboxCollection) {
        this.msgboxCollection = msgboxCollection;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (employerId != null ? employerId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Employer)) {
            return false;
        }
        Employer other = (Employer) object;
        if ((this.employerId == null && other.employerId != null) || (this.employerId != null && !this.employerId.equals(other.employerId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobyab.entities.Employer[ employerId=" + employerId + " ]";
    }
    
}

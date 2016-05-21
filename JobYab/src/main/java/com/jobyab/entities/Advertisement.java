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
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.Lob;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
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
@Table(name = "advertisement")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Advertisement.findAll", query = "SELECT a FROM Advertisement a"),
    @NamedQuery(name = "Advertisement.findByAdId", query = "SELECT a FROM Advertisement a WHERE a.adId = :adId"),
    @NamedQuery(name = "Advertisement.findByAdTitle", query = "SELECT a FROM Advertisement a WHERE a.adTitle = :adTitle"),
    @NamedQuery(name = "Advertisement.findByAdType", query = "SELECT a FROM Advertisement a WHERE a.adType = :adType"),
    @NamedQuery(name = "Advertisement.findByMinSalary", query = "SELECT a FROM Advertisement a WHERE a.minSalary = :minSalary"),
    @NamedQuery(name = "Advertisement.findByMaxSalary", query = "SELECT a FROM Advertisement a WHERE a.maxSalary = :maxSalary"),
    @NamedQuery(name = "Advertisement.findByAdImage", query = "SELECT a FROM Advertisement a WHERE a.adImage = :adImage")})
public class Advertisement implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "ad_id")
    private Short adId;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "ad_title")
    private String adTitle;
    @Basic(optional = false)
    @NotNull
    @Lob
    @Size(min = 1, max = 65535)
    @Column(name = "ad_body")
    private String adBody;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "ad_type")
    private String adType;
    @Basic(optional = false)
    @NotNull
    @Column(name = "minSalary")
    private int minSalary;
    @Basic(optional = false)
    @NotNull
    @Column(name = "maxSalary")
    private int maxSalary;
    @Size(max = 200)
    @Column(name = "ad_image")
    private String adImage;
    @JoinTable(name = "ad_tag", joinColumns = {
        @JoinColumn(name = "ad_id", referencedColumnName = "ad_id")}, inverseJoinColumns = {
        @JoinColumn(name = "ad_tag", referencedColumnName = "tag_id")})
    @ManyToMany
    private Collection<Tags> tagsCollection;
    @JoinColumn(name = "co_id", referencedColumnName = "employer_id")
    @ManyToOne(optional = false)
    private Employer coId;
    @OneToMany(cascade = CascadeType.ALL, mappedBy = "advertisement")
    private Collection<Msgbox> msgboxCollection;

    public Advertisement() {
    }

    public Advertisement(Short adId) {
        this.adId = adId;
    }

    public Advertisement(Short adId, String adTitle, String adBody, String adType, int minSalary, int maxSalary) {
        this.adId = adId;
        this.adTitle = adTitle;
        this.adBody = adBody;
        this.adType = adType;
        this.minSalary = minSalary;
        this.maxSalary = maxSalary;
    }

    public Short getAdId() {
        return adId;
    }

    public void setAdId(Short adId) {
        this.adId = adId;
    }

    public String getAdTitle() {
        return adTitle;
    }

    public void setAdTitle(String adTitle) {
        this.adTitle = adTitle;
    }

    public String getAdBody() {
        return adBody;
    }

    public void setAdBody(String adBody) {
        this.adBody = adBody;
    }

    public String getAdType() {
        return adType;
    }

    public void setAdType(String adType) {
        this.adType = adType;
    }

    public int getMinSalary() {
        return minSalary;
    }

    public void setMinSalary(int minSalary) {
        this.minSalary = minSalary;
    }

    public int getMaxSalary() {
        return maxSalary;
    }

    public void setMaxSalary(int maxSalary) {
        this.maxSalary = maxSalary;
    }

    public String getAdImage() {
        return adImage;
    }

    public void setAdImage(String adImage) {
        this.adImage = adImage;
    }

    @XmlTransient
    public Collection<Tags> getTagsCollection() {
        return tagsCollection;
    }

    public void setTagsCollection(Collection<Tags> tagsCollection) {
        this.tagsCollection = tagsCollection;
    }

    public Employer getCoId() {
        return coId;
    }

    public void setCoId(Employer coId) {
        this.coId = coId;
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
        hash += (adId != null ? adId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Advertisement)) {
            return false;
        }
        Advertisement other = (Advertisement) object;
        if ((this.adId == null && other.adId != null) || (this.adId != null && !this.adId.equals(other.adId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobyab.entities.Advertisement[ adId=" + adId + " ]";
    }
    
}

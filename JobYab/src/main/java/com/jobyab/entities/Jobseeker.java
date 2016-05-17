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
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author Ali
 */
@Entity
@Table(name = "jobseeker")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Jobseeker.findAll", query = "SELECT j FROM Jobseeker j"),
    @NamedQuery(name = "Jobseeker.findByJobSeekerid", query = "SELECT j FROM Jobseeker j WHERE j.jobSeekerid = :jobSeekerid"),
    @NamedQuery(name = "Jobseeker.findByFirstName", query = "SELECT j FROM Jobseeker j WHERE j.firstName = :firstName"),
    @NamedQuery(name = "Jobseeker.findByLastName", query = "SELECT j FROM Jobseeker j WHERE j.lastName = :lastName"),
    @NamedQuery(name = "Jobseeker.findByCity", query = "SELECT j FROM Jobseeker j WHERE j.city = :city"),
    @NamedQuery(name = "Jobseeker.findByTel", query = "SELECT j FROM Jobseeker j WHERE j.tel = :tel"),
    @NamedQuery(name = "Jobseeker.findByBirthDay", query = "SELECT j FROM Jobseeker j WHERE j.birthDay = :birthDay"),
    @NamedQuery(name = "Jobseeker.findByUserImage", query = "SELECT j FROM Jobseeker j WHERE j.userImage = :userImage")})
public class Jobseeker implements Serializable {
    private static final long serialVersionUID = 1L;
    @Id
    @Basic(optional = false)
    @NotNull
    @Column(name = "jobSeeker_id")
    private Short jobSeekerid;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "first_name")
    private String firstName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 30)
    @Column(name = "last_name")
    private String lastName;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 20)
    @Column(name = "city")
    private String city;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 16)
    @Column(name = "tel")
    private String tel;
    @Basic(optional = false)
    @NotNull
    @Column(name = "birth_Day")
    @Temporal(TemporalType.DATE)
    private Date birthDay;
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 200)
    @Column(name = "user_image")
    private String userImage;
    @JoinColumn(name = "jobSeeker_id", referencedColumnName = "user_id", insertable = false, updatable = false)
    @OneToOne(optional = false)
    private User user;

    public Jobseeker() {
    }

    public Jobseeker(Short jobSeekerid) {
        this.jobSeekerid = jobSeekerid;
    }

    public Jobseeker(Short jobSeekerid, String firstName, String lastName, String city, String tel, Date birthDay, String userImage) {
        this.jobSeekerid = jobSeekerid;
        this.firstName = firstName;
        this.lastName = lastName;
        this.city = city;
        this.tel = tel;
        this.birthDay = birthDay;
        this.userImage = userImage;
    }

    public Short getJobSeekerid() {
        return jobSeekerid;
    }

    public void setJobSeekerid(Short jobSeekerid) {
        this.jobSeekerid = jobSeekerid;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Date getBirthDay() {
        return birthDay;
    }

    public void setBirthDay(Date birthDay) {
        this.birthDay = birthDay;
    }

    public String getUserImage() {
        return userImage;
    }

    public void setUserImage(String userImage) {
        this.userImage = userImage;
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
        hash += (jobSeekerid != null ? jobSeekerid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Jobseeker)) {
            return false;
        }
        Jobseeker other = (Jobseeker) object;
        if ((this.jobSeekerid == null && other.jobSeekerid != null) || (this.jobSeekerid != null && !this.jobSeekerid.equals(other.jobSeekerid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.jobyab.entities.Jobseeker[ jobSeekerid=" + jobSeekerid + " ]";
    }
    
}

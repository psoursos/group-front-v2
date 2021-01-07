/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package emergon.entity;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;

/**
 *
 * @author admin
 */
@Entity
@Table(name = "users")
@XmlRootElement
@NamedQueries({
    @NamedQuery(name = "Users.findAll", query = "SELECT u FROM Users u")
    , @NamedQuery(name = "Users.findByUid", query = "SELECT u FROM Users u WHERE u.uid = :uid")
    , @NamedQuery(name = "Users.findByFirstName", query = "SELECT u FROM Users u WHERE u.firstName = :firstName")
    , @NamedQuery(name = "Users.findByLastName", query = "SELECT u FROM Users u WHERE u.lastName = :lastName")
    , @NamedQuery(name = "Users.findByEmail", query = "SELECT u FROM Users u WHERE u.email = :email")
    , @NamedQuery(name = "Users.findByUsername", query = "SELECT u FROM Users u WHERE u.username = :username")
    , @NamedQuery(name = "Users.findByPasswd", query = "SELECT u FROM Users u WHERE u.passwd = :passwd")})
public class Users implements Serializable {

    @NotEmpty(message = "{NotEmpty.user.firstName}")
    @Basic(optional = false)
    @NotNull
//    @Size(min = 1, max = 45)
    @Column(name = "first_name")
    private String firstName;
    @NotEmpty(message = "{NotEmpty.user.lastName}")
    @Basic(optional = false)
    @NotNull
//    @Size(min = 1, max = 45)
    @Column(name = "last_name")
    private String lastName;
    @Pattern(regexp="[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?", message="Invalid email")//if the field contains email address consider using this annotation to enforce field validation
    @NotEmpty(message = "{NotEmpty.user.email}")
    @Basic(optional = false)
    @NotNull
//    @Size(min = 1, max = 45)
    @Column(name = "email")
    private String email;
    @NotEmpty(message = "{NotEmpty.user.username}")
    @Basic(optional = false)
    @NotNull
//    @Size(min = 1, max = 45)
    @Column(name = "username")
    private String username;
    @NotEmpty(message = "{NotEmpty.user.passwd}")
    @Basic(optional = false)
    @NotNull
    @Size(min = 1, max = 68)
    @Column(name = "passwd")
    private String passwd;
    
    
    
    @OneToMany(mappedBy = "users")
    private List<Reviews> reviewsList;

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "uid")
    private Integer uid;
    @ManyToMany
    @JoinTable(name = "user_role", 
            joinColumns = {@JoinColumn(name = "uid", referencedColumnName = "uid")}, 
            inverseJoinColumns = {@JoinColumn(name = "rid", referencedColumnName = "rid")})
    private List<Roles> rolesList;
    
    @ManyToMany
    @JoinTable(name = "coursesperuser", 
            joinColumns = {@JoinColumn(name = "uid", referencedColumnName = "uid")}, 
            inverseJoinColumns = {@JoinColumn(name = "cid", referencedColumnName = "id")})
    private List<Courses> coursesList;

    public Users() {
    }

    public Users(Integer uid) {
        this.uid = uid;
    }

    public Users(Integer uid, String firstName, String lastName, String email, String username, String passwd) {
        this.uid = uid;
        this.firstName = firstName;
        this.lastName = lastName;
        this.email = email;
        this.username = username;
        this.passwd = passwd;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
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


    @XmlTransient
    public List<Roles> getRolesList() {
        return rolesList;
    }

    public void setRolesList(List<Roles> rolesList) {
        this.rolesList = rolesList;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (uid != null ? uid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof Users)) {
            return false;
        }
        Users other = (Users) object;
        if ((this.uid == null && other.uid != null) || (this.uid != null && !this.uid.equals(other.uid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "emergon.entity.Users[ uid=" + uid + " ]";
    }


    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

 

    @XmlTransient
    public List<Courses> getCoursesList() {
        return coursesList;
    }

    public void setCoursesList(List<Courses> coursesList) {
        this.coursesList = coursesList;
    }

    @XmlTransient
    public List<Reviews> getReviewsList() {
        return reviewsList;
    }

    public void setReviewsList(List<Reviews> reviewsList) {
        this.reviewsList = reviewsList;
    }
    
}

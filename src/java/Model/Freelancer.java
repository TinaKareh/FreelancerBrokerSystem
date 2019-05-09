/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import Constants.CategoryType;
import java.io.Serializable;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;

/**
 *
 * @author GraceTina
 */
@Entity
public class Freelancer implements Serializable {

    private static final Long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "freelancer_id")
    private Long freelancerId;
   

    @OneToOne
    @JoinColumn(name = "user_id")
    private AuthUser user;
   
    @OneToMany(mappedBy = "appliedBy")
    private Set<Bid> bid;

    public Freelancer() {
    }

    public Set<Bid> getBid() {
        return bid;
    }

    public void setBid(Set<Bid> bid) {
        this.bid = bid;
    }
    


    public Long getFreelancerId() {
        return freelancerId;
    }

    public void setFreelancerId(Long freelancerId) {
        this.freelancerId = freelancerId;
    }

   

    public AuthUser getUser() {
        return user;
    }

    public void setUser(AuthUser user) {
        this.user = user;
    }

}

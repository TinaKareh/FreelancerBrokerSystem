/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import java.util.List;
import java.util.Set;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
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

    @OneToMany
    private List<FreelancerSkills> skills;

    @OneToMany(fetch = FetchType.LAZY)
    private Set<Education> education;

    @OneToMany(fetch = FetchType.LAZY)
    private Set<Experience> experience;

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

    public List<FreelancerSkills> getSkills() {
        return skills;
    }

    public void setSkills(List<FreelancerSkills> skills) {
        this.skills = skills;
    }

    public Set<Education> getEducation() {
        return education;
    }

    public void setEducation(Set<Education> education) {
        this.education = education;
    }

    public Set<Experience> getExperience() {
        return experience;
    }

    public void setExperience(Set<Experience> experience) {
        this.experience = experience;
    }

    @Override
    public String toString() {
        return "Freelancer{" + "freelancerId=" + freelancerId + '}';
    }

}

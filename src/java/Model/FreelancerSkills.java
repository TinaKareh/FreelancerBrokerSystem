/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

/**
 *
 * @author GraceTina
 */
@Entity
public class FreelancerSkills implements Serializable{
     private static final Long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "skill_id")
    private Long freeSkillId;

    @ManyToOne
    private Freelancer f;
    
    @ManyToOne
    private Skill s;

    public FreelancerSkills() {
        
    }

    public Skill getS() {
        return s;
    }

    public void setS(Skill s) {
        this.s = s;
    }

    public Long getFreeSkillId() {
        return freeSkillId;
    }

    public void setFreeSkillId(Long freeSkillId) {
        this.freeSkillId = freeSkillId;
    }

    public Freelancer getF() {
        return f;
    }

    public void setF(Freelancer f) {
        this.f = f;
    }
    
    
}

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
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

/**
 *
 * @author GraceTina
 */
@Entity
public class Bid implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "bid_id")
    private Long bidId;
    private int duration;
    private double bidAmount;

    @ManyToOne
    @JoinColumn(name = "freelancerId")
    private Freelancer appliedBy;

    @ManyToOne
    @JoinColumn(name = "taskId")
    private Task task;

    public Bid() {
    }

    public Task getTask() {
        return task;
    }

    public void setTask(Task task) {
        this.task = task;
    }

    public Freelancer getAppliedBy() {
        return appliedBy;
    }

    public void setAppliedBy(Freelancer appliedBy) {
        this.appliedBy = appliedBy;
    }

    public Long getBidId() {
        return bidId;
    }

    public void setBidId(Long bidId) {
        this.bidId = bidId;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public double getBidAmount() {
        return bidAmount;
    }

    public void setBidAmount(double bidAmount) {
        this.bidAmount = bidAmount;
    }

}

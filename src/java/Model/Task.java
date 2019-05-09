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
import javax.persistence.PrimaryKeyJoinColumn;

/**
 *
 * @author GraceTina
 */
@Entity
public class Task implements Serializable {
    private static final Long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "task_id")
    private Long taskId;
    private String category;
    private String description;
    private int duration;
    private double rangeAmount;

    
    @ManyToOne
    @PrimaryKeyJoinColumn
    private Client appliedBy;
    
    public Task() {
    }

    public Client getAppliedBy() {
        return appliedBy;
    }

    public void setAppliedBy(Client appliedBy) {
        this.appliedBy = appliedBy;
    }

    
    public Long getTaskId() {
        return taskId;
    }

    public void setTaskId(Long taskId) {
        this.taskId = taskId;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }
    

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public int getDuration() {
        return duration;
    }

    public void setDuration(int duration) {
        this.duration = duration;
    }

    public double getRangeAmount() {
        return rangeAmount;
    }

    public void setRangeAmount(double rangeAmount) {
        this.rangeAmount = rangeAmount;
    }
    
    
}

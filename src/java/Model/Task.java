/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;

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
    private String projectName;
    private int duration;
    private double maxAmount;
    private String Location;

    @Column()
    @Enumerated(EnumType.STRING)
    private TaskStatus status;

    @ManyToOne
    @JoinColumn(name = "client_id")
    private Client appliedBy;

    @OneToOne
    @JoinColumn(name = "bid_id")
    private Bid bestDeal;

    public Task() {
    }

    public String getProjectName() {
        return projectName;
    }

    public void setProjectName(String projectName) {
        this.projectName = projectName;
    }

    public TaskStatus getStatus() {
        return status;
    }

    public void setStatus(TaskStatus status) {
        this.status = status;
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

    public double getMaxAmount() {
        return maxAmount;
    }

    public void setMaxAmount(double maxAmount) {
        this.maxAmount = maxAmount;
    }

    public String getLocation() {
        return Location;
    }

    public void setLocation(String Location) {
        this.Location = Location;
    }

    public Bid getBestDeal() {
        return bestDeal;
    }

    public void setBestDeal(Bid bestDeal) {
        this.bestDeal = bestDeal;
    }
    

    @Override
    public String toString() {
        return "Task{" + "taskId=" + taskId + ", category=" + category + ", description=" + description + ", projectName=" + projectName + ", duration=" + duration + ", maxAmount=" + maxAmount + ", Location=" + Location + ", status=" + status + ", appliedBy=" + appliedBy + '}';
    }
}

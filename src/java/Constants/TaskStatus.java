/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Constants;

/**
 *
 * @author GraceTina
 */
public enum TaskStatus {
    BD("BIDDING"),
    IP("IN PROGRESS"),
    CL("CLOSED"),
    CP("COMPLETE");
    
    private final String taskStatus;
    
    private TaskStatus(String taskStatus){
        this.taskStatus = taskStatus;
    }
public String getTaskStatus() {
        if (taskStatus == "B")
            return "BIDDING";
        else if(taskStatus == "I")
            return "IN PROGRESS";
        else if(taskStatus =="C")
            return "CLOSED";
        else
            return "COMPLETE";
    }
    
    @Override
    public String toString() {
        return this.taskStatus;
    }
    
    
}

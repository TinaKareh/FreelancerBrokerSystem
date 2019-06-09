/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

public enum TaskStatus {
    BD("BIDDING"),
    IP("IN PROGRESS"),
    CL("CLOSED"),
    CP("COMPLETE");
    
    private final String status;
    
    private TaskStatus(String status){
        this.status = status;
    }
  public String getStatus() {
        if (status == "BD")
            return "BIDDING";
        else if(status == "IP")
            return "IN PROGRESS";
        else if(status =="CL")
            return "CLOSED";
        else
            return "COMPLETE";
    }
    
    @Override
    public String toString() {
        return this.status;
    }
    
    
}
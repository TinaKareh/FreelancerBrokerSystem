
package Constants;

/**
 *
 * @author GraceTina
 */
public enum UserType {
    AD("Admin"),
    FR("Freelancer"),
    CL("Client");
    
    private final String uType;

     private UserType(String uType) {
        this.uType = uType;
    }
    public String getuType() {
        return uType;
    }
    
    
    
}

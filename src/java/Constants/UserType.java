
package Constants;

/**
 *
 * @author GraceTina
 */
public enum UserType {
    AD("Administrator"),
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

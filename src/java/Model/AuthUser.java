package Model;

import Constants.UserType;
import java.io.Serializable;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.xml.bind.annotation.XmlRootElement;

/**
 *
 * @author GraceTina
 */
@Entity
public class AuthUser implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "user_id")
    private Long userId;
    private String firstName;
    private String lastName;
    private String userName;
    private String emailAddress;
    private String phoneNumber;
    private String password;
    private String confirmPass;

    @Enumerated(EnumType.STRING)
    private UserType uType;

    public AuthUser() {
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getEmailAddress() {
        return emailAddress;
    }

    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPass() {
        return confirmPass;
    }

    public void setConfirmPass(String confirmPass) {
        this.confirmPass = confirmPass;
    }

    @Override
    public String toString() {
        return "AuthUser{" + "userId=" + userId + ", firstName=" + firstName + ", lastName=" + lastName + ", userName=" + userName + ", emailAddress=" + emailAddress + ", phoneNumber=" + phoneNumber + ", password=" + password + ", confirmPass=" + confirmPass + ", uType=" + uType + '}';
    }

    public UserType getuType() {
        return uType;
    }

    public void setuType(UserType uType) {
        this.uType = uType;
    }

}

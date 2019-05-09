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
public enum CategoryType {
    DA("Desktop Application Development"),
    WD("Web Development"),
    MD("Mobile Development"),
    GD("Graphic Design"),
    AW("Article Writing");
    
    private final String catType;
    
    private CategoryType(String catType) {
        this.catType = catType;
    }

    public String getCategory() {
        return catType;
    }
    
    
}

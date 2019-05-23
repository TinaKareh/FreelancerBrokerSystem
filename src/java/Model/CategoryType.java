/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author GraceTina
 */
public enum CategoryType {
  WS("Websites,IT $ Software"),
  MC("Mobile phones & Computing"),
  WC("Writing & Content"),
  DA("Design,Media & Architecture"),
  DE("Data Entry & Admin"),
  ES("Engineering $ Science"),
  TL("Translation & Languages"),
  SM("Sales & Marketing"),
  LJ("Local Jobs & Services");
    
    private final String catType;
    
    private CategoryType(String catType) {
        this.catType = catType;
    }

    public String getCategory() {
        return catType;
    }
    
}

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author admin
 */
public class Categories {
    private int CategoriesId;
    private String CategoriesName;

    public Categories() {
    }

    public Categories(int CategoriesId, String CategoriesName) {
        this.CategoriesId = CategoriesId;
        this.CategoriesName = CategoriesName;
    }

    public int getCategoriesId() {
        return CategoriesId;
    }

    public void setCategoriesId(int CategoriesId) {
        this.CategoriesId = CategoriesId;
    }

    public String getCategoriesName() {
        return CategoriesName;
    }

    public void setCategoriesName(String CategoriesName) {
        this.CategoriesName = CategoriesName;
    }
    
}

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

/**
 *
 * @author Axioo
 */
public class Menu {
    private String nama;
    private int harga;
    Menu(String nama, int harga){
        this.nama = nama;
        this.harga = harga;
    }
    public String getName(){
        return nama;
    }
    public int getPrice(){
        return harga;
    }
}

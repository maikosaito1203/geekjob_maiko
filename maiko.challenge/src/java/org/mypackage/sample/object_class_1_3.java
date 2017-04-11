/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package org.mypackage.sample;

/**
 *
 * @author maiko
 */
public class object_class_1_3 {
    
    public static void main(String[] args) {
        Personality person1 = new Personality();
        person1. firstName = "Maiko";
        person1.lastName = "Saito";
        System.out.println(person1.getFullName());
    }
    /* piblic static void main(String[] args){}
    public class の中で、｛｝の中身を実行するためのメソッド。
    覚えておくと便利！！
    */
    
}

class Personality{
    public String firstName;
    public String lastName;
    
    String getFullName(){
        String fullname = this.firstName + "/" + this.lastName;
        return fullname;
    }
}





    
       


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
    public String firstName;
    public String lastName;
    
    public String getFullName(){
        String fullname = this.firstName + "/" + this.lastName;
        return fullname;
    }
    
    class sample{
       public int age = 10;
   //※１　参照用　object_class_1_4　へ     
}

    
    public static void main(String[] args) {
        object_class_1_3 person1 = new object_class_1_3();
        person1. firstName = "Maiko";
        person1.lastName = "Saito";
        System.out.println(person1.getFullName());
    }
    /* piblic static void main(String[] args){}
    public class の中で、｛｝の中身を実行するためのメソッド。
    覚えておくと便利！！
    */
}


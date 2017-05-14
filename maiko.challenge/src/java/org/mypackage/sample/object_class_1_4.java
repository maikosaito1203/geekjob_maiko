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
public class object_class_1_4 extends object_class_1_3 {
//クラスを継承
 
    void check(){
        sample t = new sample();
        t.age = 0;
     //※１　同じパッケージ内のため、sample　クラスの　age　を参照できる。
     System.out.print(t);
    }
    
public void noname(){
    // 継承した変数を初期化
    String firstName = null;
    String lastName = "";
}

public static void main(String[] args){
    
    object_class_1_3 person3 = new object_class_1_3();{
    System.out.print(person3.getFullName());  
    }

}
}
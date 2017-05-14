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
public class practice {
    public static void main (String[]args){
        
    practice2 a = new practice2();    
    a.name = "トクジロウ";
    a.color = "ネズミ";
    System.out.println(a.getInfo("%sは%s色の%sハムスターです。"));
  } // 結果：トクジロウはネズミ色のハムスターです。
}


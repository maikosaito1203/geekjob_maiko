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
public class practice2 {
    
     String name = "ポチ";
     String color = "White";
     String shuru = "二十日";
   
  public String getInfo(String format) {
    return String.format(format, this.name, this.color,this.shuru);
  }
    
    
    
}

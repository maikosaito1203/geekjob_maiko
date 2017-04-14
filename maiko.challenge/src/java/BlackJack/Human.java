/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BlackJack;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Random;

/**
 *
 * @author maiko
 */
abstract public class Human {
    abstract public int open();
    abstract public void setcard (ArrayList List);
    abstract public boolean checkSum();
    ArrayList<Integer> myCards = new ArrayList(); // ArrayList が入っている箱　myCards 
}

class Dealer extends Human {
            
   ArrayList<Integer> cards = new ArrayList<Integer>();
           
   public Dealer(){
        cards.add(1);cards.add(2);cards.add(3);cards.add(4);cards.add(5);cards.add(6);cards.add(7);
        cards.add(8);cards.add(9);cards.add(10);cards.add(10);cards.add(10);cards.add(10);
        cards.add(1);cards.add(2);cards.add(3);cards.add(4);cards.add(5);cards.add(6);cards.add(7);
        cards.add(8);cards.add(9);cards.add(10);cards.add(10);cards.add(10);cards.add(10);
        cards.add(1);cards.add(2);cards.add(3);cards.add(4);cards.add(5);cards.add(6);cards.add(7);
        cards.add(8);cards.add(9);cards.add(10);cards.add(10);cards.add(10);cards.add(10);
        cards.add(1);cards.add(2);cards.add(3);cards.add(4);cards.add(5);cards.add(6);cards.add(7);
        cards.add(8);cards.add(9);cards.add(10);cards.add(10);cards.add(10);cards.add(10);
   }

    public ArrayList<Integer> deal() {
    
         Collections.shuffle(cards);
         ArrayList <Integer> deal = new ArrayList<Integer>(); // i を入れるための箱 deal
         
         for(int i=0; i< 2; i++){
                deal.add(cards.get(i)); // 箱deal に cards の i 番目に入っている数字を入れる。
                cards.remove(i);
                
         }return deal;
    }
    
    public ArrayList<Integer> hit() {
     
     Collections.shuffle(cards);
     
     ArrayList<Integer> hit = new ArrayList<Integer>();  // i を入れるための箱 hit
        
        hit.add(cards.get(0));
        cards.remove(0); // cards の0番目から4番目を削除したいときはこれを繰り返すか、for文を使う！
        
     return hit;
     
 }

    @Override
    public int open() {
            
            int sum =0;
          for (int i=0; i<myCards.size();i++){
            sum += myCards.get(i);
                                                 }
               return sum;  //型 変数名 = (キャストする型)リストオブジェクト.get(n番目)
                       }
           
    
    
    
    
    @Override
    public void setcard(ArrayList List) {
    //ArrayList で受けたカード情報をmyCard に追加する。
    //ArrayList で受けたカード情報をmyCard に追加する。
            //Listの中身分繰り返す。
            for(int i =0; i<List.size();i++){
            myCards.add((Integer)List.get(i)); 
            }
            
        }

    @Override
        public boolean checkSum() {
        //myCards を確認し、まだカードが必要ならtrue、不要ならfalseを返却するように実装する。
       
                                         //型 変数名 = (キャストする型)リストオブジェクト.get(n番目)
            if (open()<17)
                return true;
                else
                return false;
            }
}
        

    
    
    
class User extends Human {

         @Override
    public int open() {
            
            int sum =0;
          for (int i=0; i<myCards.size();i++){
            sum += myCards.get(i);
                                                 }
               return sum;  //型 変数名 = (キャストする型)リストオブジェクト.get(n番目)
                       }
        

        @Override
        public void setcard(ArrayList List) {
            //ArrayList で受けたカード情報をmyCard に追加する。
            //Listの中身分繰り返す。
            for(int i =0; i<List.size();i++){
            myCards.add((Integer)List.get(i)); 
            }
            
        }

        @Override
        public boolean checkSum() {
        //myCards を確認し、まだカードが必要ならtrue、不要ならfalseを返却するように実装する。
       
                                         //型 変数名 = (キャストする型)リストオブジェクト.get(n番目)
            if (open()<15)
                return true;
                else
                return false;
            }
        }




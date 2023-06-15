

import 'package:flutter/widgets.dart';

class ToAppercase {

 String toUppercaseAll(String base) {
   StringBuffer buffer = StringBuffer("");

   var listOdWords = base.split(" ");
   int word = 0;
   while (word < listOdWords.length) {
     var element = listOdWords[word];
     String head = element.substring(0,1);
     String body = element.substring(1);
     buffer.write(head.toUpperCase());
     buffer.write(body);
     word++;
     if(word < listOdWords.length){
       buffer.write(" ");
     }
   }

   return buffer.toString();
 }

 String toUppercaseOrToLowercaseByMost(String base) {
    var countUppercase = 0;
    var countLowercase = 0;
   base.runes.forEach((charCode) {
     String charString = String.fromCharCode(charCode);
     if(charString == charString.toUpperCase()) {
       countUppercase++;
     } else {
       countLowercase++;
     }
   });
   return (countUppercase > countLowercase)? base.toUpperCase() : base.toLowerCase();
 }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyController extends GetxController{
  var books = 0.obs;
  var pens = 0.obs;

  int get sum => books.value + pens.value; 

  increment(){
    books.value++;
  }

  decrement(){
    if (books.value <= 0) {
      Get.snackbar("Buying Books", "Cannot be less than zero",
      icon: const Icon(Icons.alarm), barBlur: 20, isDismissible: true, duration: const Duration(seconds: 3));
    }else{
      books.value--;
    }
  }

  incrementPens(){
    pens.value++;
  }

  decrementPen(){
    if (pens.value <= 0) {
      Get.snackbar("Buying pens", "Cannot be less than zero",
      icon: const Icon(Icons.alarm), barBlur: 20, isDismissible: true, duration: const Duration(seconds: 3), backgroundColor: Colors.black,colorText: Colors.white);
    }else{
      pens.value--;
    }
  }

  // addTotal(){
  //   return books.value.toInt() + pens.value.toInt();
  // }
}
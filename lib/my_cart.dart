import 'package:flutter/material.dart';
import 'package:flutter_getx_state_management/my_controller.dart';
import 'package:flutter_getx_state_management/total_page.dart';
import 'package:get/get.dart';

class MyCart extends StatelessWidget {
  MyCart({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(30),
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              children: [
                const Text("Books", style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber
                ),),
               Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                   child: IconButton(onPressed: (){
                     c.increment();
                   }, icon:const Icon(Icons.add, color: Colors.white,))
                ),
                const SizedBox(width: 20,),
                Obx(() => Text(c.books.toString())),
                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(onPressed: (){
                    c.decrement();
                  }, icon:const Icon(Icons.remove, color: Colors.white,))
                )
              ],
            ),
            const SizedBox(height: 15,),
            Row(
              children: [
                const Text("Pens", style: TextStyle(
                  fontSize: 30,
                  color: Colors.amber
                ),),
               Expanded(child: Container()),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                   child: IconButton(onPressed: (){
                     c.incrementPens();
                   }, icon:const Icon(Icons.add, color: Colors.white,))
                ),
                const SizedBox(width: 20,),
                Obx(() => Text(c.pens.toString())),
                const SizedBox(width: 20,),
                Container(
                  width: 50,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: Colors.redAccent
                  ),
                  child: IconButton(onPressed: (){
                    c.decrementPen();
                  }, icon:const Icon(Icons.remove, color: Colors.white,))
                )
              ],
            ),
            const SizedBox(height: 10,),
            Row(
              children: [
                Expanded(child: Container(
                  width: 80,
                  height: 50,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.blue.shade900
                  ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50)
                    )
                  ),
                  onPressed: (){
                    Get.to(()=> TotalPage());
                  }, child: const Text("Total", style: TextStyle(fontSize: 30, color: Colors.white),)),)),
                
              ],
            )
          ],
        ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'my_controller.dart';

class TotalPage extends StatelessWidget {
   TotalPage({Key? key}) : super(key: key);
  final MyController c = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [
            const Text("Total Items", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold, color: Colors.brown),),
            Obx(() => Padding(padding: const EdgeInsets.only(top: 10, bottom: 10),child: Text(c.sum.toString(), style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),)),),

           ElevatedButton(
             style: ElevatedButton.styleFrom(
               shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20)
               )
             ),
             onPressed:()=>Get.back() , child: const Text("Back"))

          ],
        ),
      ),
    );
  }
}
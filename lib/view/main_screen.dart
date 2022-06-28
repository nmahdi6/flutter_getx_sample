import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {

   var counter = 0.obs;
  // RxInt counter = 0.obs;


  @override
  Widget build(Object context) {
    return  Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Obx(
            (() {
              return  Text("counter: $counter",style: const TextStyle(fontSize: 30),);
            })
            ),
          ElevatedButton(onPressed: 
          (() {
            counter = counter+1;
          })
          , child: const Text("press"))
        ],
      )),
    );
  }
}

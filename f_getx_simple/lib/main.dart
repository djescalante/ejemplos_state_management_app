import 'package:f_getx_simple/controller.dart';
import 'package:f_getx_simple/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loggy/loggy.dart';

// In this example we will not be using our regular project structure to help
// with the understating of the state handler using GetX

void main() {
  Loggy.initLoggy(
    logPrinter: const PrettyPrinter(
      showColors: true,
    ),
  );

  // Here we create the instance of the controller and add it to the DI
  Get.put(MyController());

  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Basic GetX sample"),
      ),
      body: const SafeArea(
        child: HomePage(),
      ),
    ),
  ));
}
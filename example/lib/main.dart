import 'package:another_stepper/another_stepper.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<StepperData> stepperData = [
    const StepperData(
      title: Text("Order Placed"),
      subtitle: Text("Your order has been placed"),
      trailing: Icon(Icons.add)
    ),
    const StepperData(
      title: Text("Preparing"),
      subtitle: Text("Your order is being prepared"),
    ),
    const StepperData(
      title: Text("On the way"),
      subtitle: Text("Our delivery executive is on the way to deliver your item"),
    ),
    const StepperData(
      title: Text("Delivered"),
      subtitle: Text("Your order was delivered successfully"),
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 20),
          child: AnotherStepper(
            stepperList: stepperData,
            stepperDirection: Axis.vertical,
            dotWidget: Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: const Icon(Icons.fastfood, color: Colors.white),
            ),
            activeBarColor: Colors.green,
            inActiveBarColor: Colors.grey,
            activeIndex: 2,
            barThickness: 8,
          ),
        ),
      ),
    );
  }
}

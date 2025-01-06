import 'package:flutter/material.dart';

class ElecityBillCalculator extends StatefulWidget {
  const ElecityBillCalculator({super.key});

  @override
  State<ElecityBillCalculator> createState() => _ElecityBillCalculatorState();
}

class _ElecityBillCalculatorState extends State<ElecityBillCalculator> {
  final unitcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          shape: Border(
            bottom: BorderSide(color: Colors.white, width: 0.3),
          ),
          toolbarHeight: 80,
          title: const Text(
            'Electricity Bill Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                controller: unitcontroller,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter Consumed Units',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: () {}, child: Text('Continue'))
            ],
          )),
        ));
  }
}

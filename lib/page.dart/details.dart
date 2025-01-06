import 'package:flutter/material.dart';
// import 'package:electicity_bill_calculator/page.dart/home_page.dart';

class Bill extends StatelessWidget {
  final String unit;
  Bill({required this.unit, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your electricity bill'),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextField(
                    autofocus: true,
                    readOnly: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Your consumed unit",
                      prefixIcon: Icon(Icons.electric_meter_sharp),
                    ),
                    controller: TextEditingController(text: unit),
                  )
                ],
              ),
            )));
  }
}

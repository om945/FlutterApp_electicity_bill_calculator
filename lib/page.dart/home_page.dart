import 'package:electicity_bill_calculator/page.dart/details.dart';
import 'package:flutter/material.dart';

class ElecityBillCalculator extends StatefulWidget {
  const ElecityBillCalculator({
    super.key,
  });

  final double unit = 0.0;

  @override
  State<ElecityBillCalculator> createState() => _ElecityBillCalculatorState();
}

class _ElecityBillCalculatorState extends State<ElecityBillCalculator> {
  // final TextEditingController _unit = TextEditingController();
  final TextEditingController _unit = TextEditingController();

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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Rent of your Metter = 138',
                // textAlign: TextAlign.left,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _unit,
                    decoration: const InputDecoration(
                      helperText: 'Please enter Unit below 1000',
                      border: OutlineInputBorder(),
                      labelText: 'Enter Consumed Units',
                      prefix: Text('Unit :-  '),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        if (_unit.text.isEmpty ||
                            int.tryParse(_unit.text) == null ||
                            int.parse(_unit.text) <= 0 ||
                            (_unit.text.contains(RegExp('[a-zA-Z]')))) {
                          return;
                        } else {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) =>
                                  Details(unit: double.parse(_unit.text))));
                        }
                      },
                      child: Text('Continue'))
                ],
              ),
            ],
          ),
        ));
  }
}

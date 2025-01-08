// import 'dart:nativewrappers/_internal/vm/lib/ffi_native_type_patch.dart';

import 'package:flutter/material.dart';
// import 'package:electicity_bill_calculator/page.dart/home_page.dart';

class Details extends StatefulWidget {
  final double unit;
  Details({required this.unit, super.key});
  double _bill = 0.0;

  @override
  State<Details> createState() => _DetailsState();
  final TextEditingController _billController = TextEditingController();
  // final TextEditingController _bill = TextEditingController();
  calculateBill() {
    double units = unit;
    double rent = 138;
    double distiCharges = 1.17;
    double tax = 16 / 100;
    double Utotal = 0.0;
    double CHtotal = 0.0;

    double less100 = 4.71;
    double i_s_a_100 = 0.450;

    double less300 = 10.29;
    double i_s_a_300 = 0.800;

    double less500 = 14.55;
    double i_s_a_500 = 1.100;

    double less1000 = 16.64;
    double i_s_a_1000 = 1.150;

    // double _over1000 = 16.64;
    // double _i_s_a_Over1000 = 1.150;

    {
      if (units <= 100) {
        _bill = (rent) +
            (Utotal = units * less100) +
            (distiCharges * units) +
            (CHtotal = units * i_s_a_100) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 200) {
        _bill = (rent) +
            (Utotal = (100 * less100 + (units - 100) * less300)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 + (units - 100) * i_s_a_300)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 300) {
        _bill = (rent) +
            (Utotal =
                (100 * less100 + (100 * less300) + (units - 200) * less300)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (units - 200) * i_s_a_300)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 400) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (units - 300) * less500)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (units - 300) * i_s_a_500)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 500) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (units - 400) * less500)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (100 * i_s_a_500) +
                (units - 400) * i_s_a_500)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 600) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (100 * less500) +
                (units - 500) * less1000)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (100 * i_s_a_500) +
                (100 * i_s_a_500) +
                (units - 500) * i_s_a_1000)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 700) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (100 * less500) +
                (100 * less1000) +
                (units - 600) * less1000)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (100 * i_s_a_500) +
                (100 * i_s_a_500) +
                (100 * i_s_a_1000) +
                (units - 600) * i_s_a_1000)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 800) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (100 * less500) +
                (100 * less1000) +
                (100 * less1000) +
                (units - 700) * less1000)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (100 * i_s_a_500) +
                (100 * i_s_a_500) +
                (100 * i_s_a_1000) +
                (units - 700) * i_s_a_1000)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 900) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (100 * less500) +
                (100 * less1000) +
                (100 * less1000) +
                (100 * less1000) +
                (units - 800) * less1000)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (100 * i_s_a_500) +
                (100 * i_s_a_500) +
                (100 * i_s_a_1000) +
                (100 * i_s_a_1000) +
                (units - 800) * i_s_a_1000)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else if (units <= 1000) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (100 * less500) +
                (100 * less1000) +
                (100 * less1000) +
                (100 * less1000) +
                (100 * less1000) +
                (units - 900) * less1000)) +
            (distiCharges * units) +
            (CHtotal = (100 * i_s_a_100 +
                (100 * i_s_a_300) +
                (100 * i_s_a_300) +
                (100 * i_s_a_500) +
                (100 * i_s_a_500) +
                (100 * i_s_a_1000) +
                (100 * i_s_a_1000) +
                (100 * i_s_a_1000) +
                (100 * i_s_a_1000) +
                (units - 900) * i_s_a_1000)) +
            (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) * tax);
        return _bill;
      } else {
        return "App cross it's elmets ";
      }
    }
  }
}

class _DetailsState extends State<Details> {
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
                    controller:
                        TextEditingController(text: widget.unit.toString()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextField(
                    // autofocus: true,
                    controller: widget._billController
                      ..text = widget.calculateBill().toString(),
                    readOnly: true,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Your Current electricity bill (Rs.)",
                      prefixText: "Rs. :-  ",
                    ),
                  ),
                ],
              ),
            )));
  }
}

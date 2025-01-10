import 'package:flutter/material.dart';

class Gradients {
  static const Gradient gradient1 = LinearGradient(
    colors: [
      Color.fromARGB(255, 246, 236, 146),
      Color.fromARGB(255, 254, 202, 124)
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
  );
}

class Details extends StatefulWidget {
  final double unit;
  Details({required this.unit, super.key});
  double _bill = 0.0;

  @override
  State<Details> createState() => _DetailsState();
  final TextEditingController _billController = TextEditingController();
  final TextEditingController _UtotalController = TextEditingController();
  final TextEditingController _CHtotalController = TextEditingController();
  final TextEditingController _rent = TextEditingController();
  final TextEditingController _distiCharges = TextEditingController();
  final TextEditingController _tax = TextEditingController();

  // final TextEditingController _Utotal = TextEditingController();
  // final TextEditingController _bill = TextEditingController();

  calculateBill() {
    double units = unit;
    double rent = 138;
    _rent.text = rent.toStringAsFixed(2);
    double DistiCharges = 0.0;
    _distiCharges.text = DistiCharges.toStringAsFixed(2);
    double distiCharges = 1.17;
    double Tax = 0.0;
    _tax.text = Tax.toStringAsFixed(2);
    double tax = 16 / 100;
    double Utotal = 0.0;
    _UtotalController.text = Utotal.toStringAsFixed(2);
    double CHtotal = 0.0;
    _CHtotalController.text = CHtotal.toStringAsFixed(2);
    double less100 = 4.71;
    double iSA100 = 0.450;

    double less300 = 10.29;
    double iSA300 = 0.800;

    double less500 = 14.55;
    double iSA500 = 1.100;

    double less1000 = 16.64;
    double iSA1000 = 1.150;

    // double _over1000 = 16.64;
    // double _i_s_a_Over1000 = 1.150;

    {
      if (units <= 100) {
        _bill = (rent) +
            (Utotal = units * less100) +
            (DistiCharges = distiCharges * units) +
            (CHtotal = units * iSA100) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
        return _bill;
      } else if (units <= 200) {
        _bill = (rent) +
            (Utotal = (100 * less100 + (units - 100) * less300)) +
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 + (units - 100) * iSA300)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
        return _bill;
      } else if (units <= 300) {
        _bill = (rent) +
            (Utotal =
                (100 * less100 + (100 * less300) + (units - 200) * less300)) +
            (DistiCharges = distiCharges * units) +
            (CHtotal =
                (100 * iSA100 + (100 * iSA300) + (units - 200) * iSA300)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
        return _bill;
      } else if (units <= 400) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (units - 300) * less500)) +
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (units - 300) * iSA500)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
        return _bill;
      } else if (units <= 500) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (units - 400) * less500)) +
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (100 * iSA500) +
                (units - 400) * iSA500)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
        return _bill;
      } else if (units <= 600) {
        _bill = (rent) +
            (Utotal = (100 * less100 +
                (100 * less300) +
                (100 * less300) +
                (100 * less500) +
                (100 * less500) +
                (units - 500) * less1000)) +
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (100 * iSA500) +
                (100 * iSA500) +
                (units - 500) * iSA1000)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
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
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (100 * iSA500) +
                (100 * iSA500) +
                (100 * iSA1000) +
                (units - 600) * iSA1000)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
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
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (100 * iSA500) +
                (100 * iSA500) +
                (100 * iSA1000) +
                (units - 700) * iSA1000)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
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
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (100 * iSA500) +
                (100 * iSA500) +
                (100 * iSA1000) +
                (100 * iSA1000) +
                (units - 800) * iSA1000)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
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
            (DistiCharges = distiCharges * units) +
            (CHtotal = (100 * iSA100 +
                (100 * iSA300) +
                (100 * iSA300) +
                (100 * iSA500) +
                (100 * iSA500) +
                (100 * iSA1000) +
                (100 * iSA1000) +
                (100 * iSA1000) +
                (100 * iSA1000) +
                (units - 900) * iSA1000)) +
            (Tax = (((Utotal) + (rent) + (distiCharges * units) + (CHtotal)) *
                tax));
        _UtotalController.text = Utotal.toStringAsFixed(2);
        _CHtotalController.text = CHtotal.toStringAsFixed(2);
        _distiCharges.text = DistiCharges.toStringAsFixed(2);
        _tax.text = Tax.toStringAsFixed(2);
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
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          shape: Border(
              // bottom: BorderSide(color: Colors.black, width: 0.3),
              ),
          toolbarHeight: 70,
          bottom: PreferredSize(
            preferredSize: const Size.fromHeight(0.1),
            child: Container(
              // color: Colors.black,
              height: 1.0,
            ),
          ),
          title: const Text(
            'Your Electricity Bill',
            style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
                height: 10),
          ),
        ),
        body: Container(
          height: MediaQuery.of(context)
              .size
              .height, // Set the height to the screen height
          width: MediaQuery.of(context)
              .size
              .width, // Set the width to the screen width
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.bottomCenter,
              image: AssetImage('assets/files/Ele.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 30),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Your consumed unit",
                          prefixIcon: Icon(Icons.electric_meter_sharp),
                        ),
                        controller: TextEditingController(
                            text: widget.unit.toStringAsFixed(2)),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Fixed Charges",
                          prefixText: "Rs. :-  ",
                        ),
                        controller: widget._rent,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Energy Charges",
                          prefixText: "Rs. :-  ",
                        ),
                        controller: widget._UtotalController,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Carrying Charges",
                          prefixText: "Rs. :-  ",
                        ),
                        controller: widget._distiCharges,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Fuel Adjustment Charges",
                          prefixText: "Rs. :-  ",
                        ),
                        controller: widget._CHtotalController,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Electricity Duty",
                          prefixText: "Rs. :-  ",
                        ),
                        controller: widget._tax,
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 8, 8),
                      decoration: BoxDecoration(
                        gradient: Gradients.gradient1,
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 5,
                            color: Colors.black,
                            offset: Offset(0, 2),
                          ),
                        ],
                        border: Border.all(color: Colors.black, width: 0.2),
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white,
                      ),
                      child: TextField(
                        autofocus: false,
                        controller: widget._billController
                          ..text = widget.calculateBill().toStringAsFixed(2),
                        readOnly: true,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: "Your Current electricity bill (Rs.)",
                          prefixText: "Rs. :-  ",
                        ),
                      ),
                    ),
                  ],
                ),
              )),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.yellow,
          foregroundColor: Colors.black,
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.home,
          ),
        ),
      ),
    );
  }
}

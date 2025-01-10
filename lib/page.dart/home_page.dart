import 'package:electicity_bill_calculator/page.dart/about.dart';
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
  final int _selectedIndex = 0;
  final TextEditingController _unit = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.yellow,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.info),
              label: 'About',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          onTap: (index) {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) {
                if (index == 0) {
                  return ElecityBillCalculator();
                } else {
                  return AboutPage();
                }
              },
            ));
          }),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 245, 222, 22),
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
        centerTitle: true,
        title: const Text(
          'Electricity Bill Calculator',
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
            image: AssetImage('assets/files/back.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.white,
                        offset: Offset(0, 2),
                      ),
                    ],
                    border: Border.all(color: Colors.black, width: 0.2),
                    color: const Color.fromARGB(255, 245, 222, 22),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Welcome to Electricity Bill Calculator',
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              fontStyle: FontStyle.italic,
                              color: Colors.black),
                        ),
                        SizedBox(height: 8),
                        Text(
                          '> This app will show you the total amount to be paid and the amount to be paid per unit.',
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '❗"This app will show you the total Amount to be paid but the Last Receipt Amount might be different than the actual Amount."\n Last Receipt Amount depent on your NetArrears, Adjustments, Interest Arrears, etc.',
                          style: TextStyle(color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 20, 5),
                  child: Container(
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5,
                          color: Colors.white,
                          offset: Offset(0, 2),
                        ),
                      ],
                      border: Border.all(color: Colors.black, width: 0.2),
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.label_important,
                                size: 16,
                              ),
                              SizedBox(width: 5),
                              Text(
                                'Note:',
                                style: TextStyle(fontSize: 18),
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            '> Fixed Charges: Rs. 138 \n> Carrying Charges: @ Rs. 1.17/U \n> Electricity Charges (Tax): 16.00% ',
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 5),
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        color: Colors.black,
                        offset: Offset(0, 2),
                      ),
                    ],
                    border: Border.all(color: Colors.black, width: 0.2),
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 255, 117, 75),
                  ),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(10, 5, 10, 5),
                    child: Text(
                      '> ☝️ The above values might change in the future.',
                      style: TextStyle(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 30, 20, 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      padding: EdgeInsetsDirectional.fromSTEB(8, 13, 8, 8),
                      decoration: BoxDecoration(
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
                      child: TextFormField(
                        onTapOutside: (_) => FocusScope.of(context).unfocus(),
                        keyboardType: TextInputType.number,
                        controller: _unit,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.electric_meter_sharp),
                          helperText: 'Please enter Unit below 1000',
                          border: OutlineInputBorder(),
                          labelStyle: TextStyle(color: Colors.black),
                          labelText: 'Enter Consumed Units',
                          prefix: Text('Unit :- '),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        style: ButtonStyle(
                          shadowColor: WidgetStatePropertyAll(Colors.black),
                          foregroundColor:
                              WidgetStateProperty.all(Colors.black),
                          backgroundColor:
                              WidgetStateProperty.all(Colors.yellow),
                        ),
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
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
